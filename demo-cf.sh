#!/bin/bash

########################
# include the magic
########################
. demo-magic.sh

# hide the evidence
clear

# Put your stuff here

pe "cf login --sso"

pe "cf target -o corby-org -s development"

pe "cat cloud-foundry-manifest.yaml"

pe "cf push -f cloud-foundry-manifest.yaml"

pe "cf marketplace"

pe "cf services"

pe "cf bind-service spring-sensors sensorsdb"

pe "cf restart spring-sensors"