# `drakepkgexample`

drakepkgexample aims at providing a simple example on how to use [`drake`](https://github.com/ropensci/drake) and R package structures to create and share reproducible workflows.


## Installation

You can install drakepkgexample using:

``` r
devtools::install_github("Rekyt/drakepkgexample")
```

## Usage

To launch the workflow, install the package then run

``` r
library("drake")
library("drakepkgexample")

make(my_plan())
```

**Alternatively** you can clone this repository move it in your preferred location and then run (while being in `drakepkgexample` folder): 

``` r
devtools::load_all()
drake::make(my_plan())
```
