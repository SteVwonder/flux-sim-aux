Setup
====================

* Clone these specific versions off GitHub:
  * [flux-framework/flux-core:3bd59f3198f1beb36c6a79bcea39009b328fb697](https://github.com/flux-framework/flux-core/commit/3bd59f3198f1beb36c6a79bcea39009b328fb697)
  * [stevwonder/flux-sched:272274069b4a003b4e49aae1e63169cba74ae0c9](https://github.com/stevwonder/flux-sched/commit/272274069b4a003b4e49aae1e63169cba74ae0c9)
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
