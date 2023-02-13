# low-levelCallExperiment
what happens to a failing low-level call which send eth to a contract without fallback|receive fn?

Below image is the result from calling a function which sends eth to different addresses.
Here I send 2 eth in the fn call.

A contract with fallback fn receives 1 eth
A contract w/o fallback|receive fn receives 0 eth
The contract to where I send 2 eth to call a fun which distributes fn has 1 eth since it was not sent to one of two destintion contracts

![experimentResult](./low_levelCAllExperiment.png?raw=true "ExperimentResult")
