#!/bin/bash

export FLUX_SCHED_RC_NOOP=1

# Uncomment these lines if your environment isn't setup for Flux
# already. These assume that flux-core, flux-sched, and this aux repo
# are all sibling directories
#
export FLUX_MODULE_PATH=$(realpath ../flux-sched/sched/.libs):$(realpath ../flux-sched/simulator/.libs)${FLUX_MODULE_PATH:+":$FLUX_MODULE_PATH"}
export LUA_PATH="$(realpath ../flux-sched/rdl)/?.lua"
export LUA_CPATH="$(realpath ../flux-sched/rdl)/?.so"
#export LD_LIBRARY_PATH=../flux-core/src/common/.libs:../flux-core/src/modules/kvs/.libs/:../flux-sched/simulator/:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=../flux-sched/simulator/:$LD_LIBRARY_PATH
FLUX_CMD="../flux-core/src/cmd/flux"
# CLUSTER_CONF_DIR="../flux-sched/conf"

# Uncomment and set this if you are using a local (i.e., non-default/system) python installation
export PYTHONHOME="/usr/workspace/wsb/herbein1/local/toss2/miniconda2"
export LD_LIBRARY_PATH="/usr/workspace/wsb/herbein1/local/toss2/miniconda2/lib:$LD_LIBRARY_PATH"

CLUSTER_CONF_DIR="./conf"
JOB_NAME="hype"
EXTRA_FLAGS=""
#FLUX_CMD="flux"
SCHED_PLUGIN="sched.fcfs"

# Use -gt 1 to consume two arguments per pass in the loop (e.g. each
# argument has a corresponding value to go with it).
# Use -gt 0 to consume one or more arguments per pass in the loop (e.g.
# some arguments don't have a corresponding value to go with it such
# as in the --default example).
# note: if this is set to -gt 0 the /etc/hosts part is not recognized ( may be a bug )
while [[ $# -gt 0 ]]
do
    key="$1"

    case $key in
        -s|--strace)
            FLUX_CMD="strace ${FLUX_CMD}"
            ;;
        -g|--gdb)
            FLUX_CMD="gdb --args ${FLUX_CMD}"
            ;;
        -x|--xterm)
            EXTRA_FLAGS="--xterm"${EXTRA_FLAGS:+" $EXTRA_FLAGS"}
            ;;
        -j|--job)
            JOB_NAME="$2"
            shift # past argument
            ;;
        -r|--rdl)
            RDL="$2"
            shift # past argument
            ;;
        -p|--plugin)
            SCHED_PLUGIN="$2"
            shift # past argument
            ;;
        --redirect)
            SCRIPT_PATH=$(realpath "$2")
            USE_SCRIPT_REDIRECT=true
            EXTRA_FLAGS="--redirect_script ${SCRIPT_PATH}"${EXTRA_FLAGS:+" $EXTRA_FLAGS"}
            shift # past argument
            ;;
        -h|--help)
            echo 'Options:
    --strace
    -g|--gdb
    -x|--xterm
    -j|--job
    -r|--rdl
    -p|--plugin
    --redirect'
            exit 0
            ;;
        *)
            # unknown option
            ;;
    esac
    shift # past argument or value
done
echo FLUX CMD     = "${FLUX_CMD}"
echo JOB NAME     = "${JOB_NAME}"
echo SCHED_PLUGIN = "${SCHED_PLUGIN}"
echo EXTRA FLAGS  = "${EXTRA_FLAGS}"

if [[ -n $RDL ]]; then
    true # do nothing
elif [[ $JOB_NAME == "2n2c"* ]]; then
    RDL="${CLUSTER_CONF_DIR}/mini2n2c.lua"
elif [[ $JOB_NAME == "20n8c"* ]]; then
    RDL="${CLUSTER_CONF_DIR}/cluster20n8c.lua"
elif [[ $JOB_NAME == "4n8c"* ]]; then
    RDL="${CLUSTER_CONF_DIR}/cluster4n8c.lua"
elif [[ $JOB_NAME == "cab"* ]]; then
    RDL="${CLUSTER_CONF_DIR}/cab.lua"
elif [[ $JOB_NAME == "hype"* ]]; then
    RDL="${CLUSTER_CONF_DIR}/hype.lua"
else
    echo "RDL not provided and not found in mapping"
    exit 1
fi

RESULTS_DIR=./results/${JOB_NAME}
LOG_DIR=./logs/${JOB_NAME}
PERSIST_DIR=./persist/${JOB_NAME}
mkdir -p ${RESULTS_DIR}
mkdir -p ${LOG_DIR}
mkdir -p ${PERSIST_DIR}

if [[ -n $LOG_DIR ]]; then
    rm -rf ${LOG_DIR}/*
fi

if [[ "$USE_SCRIPT_REDIRECT" = true ]]; then
    REDIRECT_LOG_PATH="${LOG_DIR}/0-stdout_err"
    echo "Using redirct script on root instance, logging to $REDIRECT_LOG_PATH"
    FLUX_CMD="${SCRIPT_PATH} ${REDIRECT_LOG_PATH} ${FLUX_CMD}"
fi

ulimit -c unlimited
ulimit -f unlimited

${FLUX_CMD} start \
            -o,-Spersist-filesystem=${PERSIST_DIR} \
            ./initial_program \
            ./job_traces/${JOB_NAME}/job_trace.csv \
            --results ${RESULTS_DIR} \
            --sched_plugin ${SCHED_PLUGIN} \
            --log_dir ${LOG_DIR} \
            --rdl ${RDL} \
            ${EXTRA_FLAGS}

pkill -u $USER flux
pkill -fu $USER initial_program
