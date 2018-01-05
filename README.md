Setup
=====

* Clone these specific versions off GitHub:
  * https://github.com/SteVwonder/flux-core/tree/sim-hackathon
    * `git clone -b sim-hackathon https://github.com/SteVwonder/flux-core.git`
  * https://github.com/SteVwonder/flux-sched/tree/sim-hackathon
    * `git clone -b sim-hackathon https://github.com/SteVwonder/flux-sched.git`
* Clone the [flux simulation auxillary repo](https://github.com/SteVwonder/flux-sim-aux) (i.e., this repo) from LLNL's BitBucket
  * NOTE: all 3 of these repositories should exist in the same directory, e.g.:
    * flux-framework
      * flux-core
      * flux-sched
      * flux-sim-aux
  * If you want a different structure, you will have to edit the scripts in `flux-sim-aux`
* configure and compile `flux-core` and `flux-sched`

Running the Simulation
======================

* Change directories to the `flux-sim-aux` repo
* Execute the `run_simulator.sh` script
  * By default, this script launches a simulation with:
    * a FCFS scheduler in each instance
    * a model of the `hype` cluster at LLNL
    * a job workload with 12 jobs
  * You can change these settings by passing `--job`, `--rdl`, and `--plugin` to the run script
    * The argument to `--job` should correspond to a directory in `job_traces`
      * e.g. `./run_simulator.sh --job cab`
    * The script will attempt to infer what RDL to use based on the name of the job workload you pass in
      * e.g. if `cab` is in the name of the job workload it will use the `cab.lua` configuration
    * Usually, I only pass `--plugin` to change the scheduler plugin and `--job` to change the job workload
* You can view the output from the Flux brokers and the `inital_program` in `./logs`
* You can view the simulation results (job starttimes, completetimes, etc) in `./results`

Simulation Results Format
=========================

If you use the `initial_program` python script included in this
repository, a csv will be generate with the results of the simulation.
The csv will contain the following columns:

* id
  * Integer
  * ID of the job.  This id is given by the simulation (it is
    necessarily the same id as in the input job trace)
* nnodes
  * Integer
  * number of nodes requested by the job
* ntasks
  * Integer
  * number of cpus requested by the job
* walltime
  * Integer
  * number of seconds requested by the job
* submit_time
  * Double
  * simulation time (in seconds) when the job was submitted
* starting_time
  * Double
  * simulation time (in seconds) when the job started
* execution_time
  * Double
  * length of simulation time (in seconds) that the job ran for
* completion_time
  * Double
  * simulation time (in seconds) when the job finished executing

Job Trace Format
================

* A csv file with a header row and an additional row for each job
* 5 Required Columns
  * NNodes
    * Integer
    * number of nodes requested by the job
  * NCPUS
    * Integer
    * number of cpus requested by the job
  * Timelimit
    * string with the format "hours:minutes:seconds", (e.g. "01:15:45"
      is 1 hour, 15 minutes, 45 seconds)
    * amount of time requested by the job
  * Submit
    * Integer
    * simulation time that the job should be submitted at
  * Elapsed
    * string with the format "hours:minutes:seconds", (e.g. "01:15:45"
      is 1 hour, 15 minutes, 45 seconds)
    * time that the job actually ran for (should be <= Timelimit)
* Optional Columns
  * JobID
    * Integer
    * The simulation will use it's own ID, but it will print out the
      mapping between the jobid in the csv and the jobid in the
      simulation (e.g. "submitted job 3 (2 in csv)")
  * User
    * string
    * user that submitted the job
  * Account
    * string
    * account of the user that submitted the job
  * JobName
    * string
    * name that the user gave the job
  * IORate(MB)
    * Integer
    * IO rate of the job, per node.  Used in simulations of the
      io-aware scheduler.

Notes and Todos
===============
* Logging level is DEBUG by default
  - TODO: Need to add switch the default to INFO and add a `--debug` flag

