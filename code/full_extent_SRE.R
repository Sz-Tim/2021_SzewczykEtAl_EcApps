# Extending coverage and thematic resolution of compositional land cover 
# maps in a hierarchical Bayesian framework
#
# Tim M. Szewczyk, Mark J. Ducey, Valerie J. Pasquarella, Jenica M. Allen
#
# Ecological Applications
#
# This script runs the stan model contained in full_extent_SRE.stan using the
# data provided in full_extent_20km2_data.Rdump.
#
# timothy.szewczyk@unil.ch



library(rstan)
options(mc.cores=parallel::detectCores())
rstan_options(auto_write=TRUE)

out <- stan(file="full_extent_SRE.stan",
            data=read_rdump("full_extent_20km2_data.Rdump"),
            iter=10000, warmup=8000, chains=24, refresh=20, thin=24,
            sample_file="out_full_extent.csv")
