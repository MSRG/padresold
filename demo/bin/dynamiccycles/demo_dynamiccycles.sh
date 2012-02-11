#!/bin/bash

# check and set the PADRES_HOME environment value
if [ -z "$PADRES_HOME" ]
then
	PADRES_HOME="$(cd $(dirname "$0")/../../.. && pwd)"
fi

ETC_DIR=${PADRES_HOME}/demo/etc/dynamiccycles

echo "Starting Broker A"
${PADRES_HOME}/bin/startbroker -i A -c ${ETC_DIR}/brokerA_dynamiccycles.properties &
sleep 12 
echo "Starting Broker B"
${PADRES_HOME}/bin/startbroker -i B -c ${ETC_DIR}/brokerB_dynamiccycles.properties &
sleep 12
echo "Starting Broker C"
${PADRES_HOME}/bin/startbroker -i C -c ${ETC_DIR}/brokerC_dynamiccycles.properties &
sleep 12
echo "Starting Broker D"
${PADRES_HOME}/bin/startbroker -i D -c ${ETC_DIR}/brokerD_dynamiccycles.properties &
sleep 12
echo "Starting Client A"
${PADRES_HOME}/demo/bin/run_Job_Deployer.sh localhost 1099 &
sleep 4
echo "Starting Client B"
${PADRES_HOME}/demo/bin/run_Job_Deployer.sh localhost 1096 &
sleep 4
echo "Starting the Monitor"
${PADRES_HOME}/bin/startmonitor
