Setup
====================

* Clone these specific versions off GitHub:
  * [flux-core:v0.7.0](https://github.com/flux-framework/flux-core/releases/tag/v0.7.0)
  * [flux-sched:682734f658be59ca2a128fdb58aac82096ecae56](https://github.com/flux-framework/flux-sched/commit/682734f658be59ca2a128fdb58aac82096ecae56)
* Clone the [scheduling auxillary repo](https://lc.llnl.gov/bitbucket/projects/FLUX/repos/sim-aux) (i.e., this repo) from LLNL's BitBucket
  * NOTE: all 3 of these repositories should exist in the same directory, e.g.:
    * flux-framework
      * flux-core
      * flux-sched
      * sched-aux
  * If you want a different structure, you will have to edit the scripts in `sched-aux`
* configure and compile `flux-core` and `flux-sched`

Running the Simulation
====================

* Change directories to the `sched-aux` repo
* Execute the `run_simulator.sh` script
  * By default, this script launches a simulation with:
    * a FCFS scheduler in each instance
    * a cluster with 2 nodes
    * a job workload with 4 top-level jobs
      * 1 of those top-level jobs is a hierarchical job that contains 2 jobs
  * You can change these settings by passing `--job`, `--rdl`, and `--plugin` to the run script
    * The argument to `--job` should correspond to a directory in `hfiles`
      * e.g. `./run_simulator.sh --job 8n8c.2`
    * The script will attempt to infer what RDL to use based on the name of the job workload you pass in
      * e.g. if `20n8c` is in the name of the job workload it will use the `cluster20n8c.lua` configuration
    * Usually, I only pass `--plugin` to change the scheduler plugin and `--job` to change the job workload
* You can view the output from the Flux brokers and the `inital_program` in `./logs`
* You can view the simulation results (job starttimes, completetimes, etc) in `./results`
