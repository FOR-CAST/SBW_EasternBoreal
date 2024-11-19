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

source("R/project_description.R") ## done; will need to be updated

usethis::use_readme_md() ## done

## 2. add LandR Biomass modules as git submodules
workflowtools::use_module("modules", "PredictiveEcology/Biomass_borealDataPrep@development") ## done
workflowtools::use_module("modules", "PredictiveEcology/Biomass_core@development") ## done
workflowtools::use_module("modules", "PredictiveEcology/Biomass_speciesData@development") ## done
workflowtools::use_module("modules", "PredictiveEcology/Biomass_speciesParameters@development") ## done

## 3. create new modules for SBW and add as git submodules
## 3a. create empty repos on GitHub.com and add each as submodule
workflowtools::use_module("modules", "SBW_dataPrep") ## done
workflowtools::use_module("modules", "SBW_recruitment") ## done
workflowtools::use_module("modules", "SBW_dispersal") ## done
workflowtools::use_module("modules", "SBW_naturalEnemies") ## done
workflowtools::use_module("modules", "SBW_defoliation") ## done

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

## 4. copy over code from Trisect modules and add to SBW ones
## TODO

## 5. create new R package (SBW_utils) based on TriSectUtils
## TODO

