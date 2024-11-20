## 1. create new Rstudio project + add some packages
renv::install(c(
  "bookdown",
  "ggplot2",
  "PredictiveEcology/SpaDES.core@development",
  "testthat",
  "usethis",
  "FOR-CAST/workflowtools"
)) ## done

workflowtools::setup_project() ## done

source("R/project_description.R") ## done; will be updated again below

usethis::use_readme_md() ## done

## 2. add LandR Biomass modules as git submodules
workflowtools::use_module("PredictiveEcology/Biomass_borealDataPrep@development", path = "modules") ## done
workflowtools::use_module("PredictiveEcology/Biomass_core@development", path = "modules") ## done
workflowtools::use_module("PredictiveEcology/Biomass_speciesData@development", path = "modules") ## done
workflowtools::use_module("PredictiveEcology/Biomass_speciesParameters@development", path = "modules") ## done

## 3. create new modules for SBW and add as git submodules
## 3a. create empty repos on GitHub.com and add each as submodule
workflowtools::use_module("FOR-CAST/SBW_dataPrep", path = "modules") ## done
workflowtools::use_module("FOR-CAST/SBW_recruitment", path = "modules") ## done
workflowtools::use_module("FOR-CAST/SBW_dispersal", path = "modules") ## done
workflowtools::use_module("FOR-CAST/SBW_naturalEnemies", path = "modules") ## done
workflowtools::use_module("FOR-CAST/SBW_defoliation", path = "modules") ## done

## 3b. create new module for each using template
SpaDES.core::newModule("SBW_dataPrep", path = "modules") ## done
SpaDES.core::newModule("SBW_defoliation", path = "modules") ## done
SpaDES.core::newModule("SBW_dispersal", path = "modules") ## done
SpaDES.core::newModule("SBW_naturalEnemies", path = "modules") ## done
SpaDES.core::newModule("SBW_recruitment", path = "modules") ## done

## 3c. create symlinks for README files
## done

## 3d. ensure absolute paths in test files converted to relative ones
## done

## 4. update packages based on modules
workflowtools::check_project_packages()
source("R/project_description.R")

## 5. copy over code from Trisect modules and add to SBW ones
## TODO

## 6. create new R package (SBW_utils) based on TriSectUtils
## TODO

