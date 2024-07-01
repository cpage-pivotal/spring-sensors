#!/bin/bash

########################
# include the magic
########################
. demo-magic.sh

# hide the evidence
clear

# Put your stuff here

pe "tanzu login"

pe "tanzu project use AMER-West"

pe "tanzu space use corby-space"

pe "cat .tanzu/config/spring-sensors.yml"

pe "cat ~/.config/tanzu/build/config.yaml"

pe "tanzu deploy -y"

pe "tanzu service type list"

pe "tanzu service list"

pe "tanzu service bind MySQLInstance/sensorsdb ContainerApp/spring-sensors --as sensorsdb"


