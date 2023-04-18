#!/bin/bash

# the first parameter specifies a non-default timeout duration
# the second parameter specifies the path of a library to LD_CHERI_PRELOAD when running test cases

# this script will run all good and bad tests in the bin subdirectory and write
# the names of the tests and their return codes into the files "good.run" and
# "bad.run". all tests are run with a timeout so that tests requiring input
# terminate quickly with return code 124.

ulimit -c 0

SCRIPT_DIR="$PWD/bin/$1"
# SCRIPT_DIR="$0"
# TIMEOUT="1s"
PRELOAD_PATH=""
echo $SCRIPT_DIR
# SCRIPT_DIR="$1"
TIMEOUT="$2"

# if [ $# -ge 2 ]
# then
#   PRELOAD_PATH="$2"
#   if [ ! -f "${PRELOAD_PATH}" ]
#   then
#     echo "preload path ${PRELOAD_PATH} does not exist - not running tests"
#     exit 1
#   fi
# fi

# parameter 1: the CWE directory corresponding to the tests
# parameter 2: the type of tests to run (should be "good" or "bad")
run_tests()
{
    local CWE_DIRECTORY="$1"
    local TEST_TYPE="$2"
    local TYPE_PATH="${CWE_DIRECTORY}/${TEST_TYPE}"
    local OUTPUT_DIR="${CWE_DIRECTORY}/output"
    local OUTPUT_DIR_TYPE="${CWE_DIRECTORY}/output/${TEST_TYPE}"

    local PREV_CWD=$(pwd)
    mkdir ${OUTPUT_DIR}
    mkdir ${OUTPUT_DIR_TYPE}
    cd "${CWE_DIRECTORY}" # change directory in case of test-produced output files
    echo "========== STARTING TEST ${TYPE_PATH} $(date) ==========" >> "${TYPE_PATH}.run"
    for TESTCASE in $(ls -1 "${TYPE_PATH}"); do
        local TESTCASE_PATH="${TYPE_PATH}/${TESTCASE}"

        local OUTPUT_TESTCASE="${OUTPUT_DIR_TYPE}/${TESTCASE}.out"
        echo "======START_A_TESTCASE======"
	echo "@&FILENAME&@:${OUTPUT_TESTCASE}"
        # if [ ! -z "${PRELOAD_PATH}" ]
        # then
        #   timeout "${TIMEOUT}" env LD_CHERI_PRELOAD="${PRELOAD_PATH}" "${TESTCASE_PATH}"
        # else
	if [[ $TESTCASE_PATH == *"_fgets_"* || $TESTCASE_PATH == *"_fscanf_"* ]]; then
        	echo "938234" | timeout "${TIMEOUT}" "${TESTCASE_PATH}"
        	sudo perf record -e instructions:u,branches:u,branch-misses:u,L1-dcache-load-misses:u,L1-icache-load-misses:u,LLC-load-misses:u,cache-misses:u -F 10000 timeout 1 ${TESTCASE_PATH}
        	sudo perf script -F time,period,event > ${OUTPUT_TESTCASE}
	elif [[ $TESTCASE_PATH == *"_listen_socket_"* || $TESTCASE_PATH == *"_connect_socket_"* ]]; then
		
		while netstat -ano | grep :27015 > /dev/null; do
			echo 'checking until port 27015 is closed...'
			sleep 2 # wait for 2 second before check again
		done
		
		PRG="timeout ${TIMEOUT} ${TESTCASE_PATH}"
		PPATH='/home/salman/DPP/dpp-data/juliet-test-suite'
		SOCKET='/home/salman/DPP/dpp-data/juliet-test-suite'
		#echo $PRG
		#echo $SOCKET
        	$PPATH/parallel.sh "timeout ${TIMEOUT} ${TESTCASE_PATH}" $SOCKET/socket.sh
        	sudo perf record -e instructions:u,branches:u,branch-misses:u,L1-dcache-load-misses:u,L1-icache-load-misses:u,LLC-load-misses:u,cache-misses:u -F 10000 timeout 1 ${TESTCASE_PATH}
        	sudo perf script -F time,period,event > ${OUTPUT_TESTCASE}
	#else
        #	timeout "${TIMEOUT}" "${TESTCASE_PATH}"
	fi

        # echo "${TESTCASE}"
        # fi

        echo "${TESTCASE_PATH} $?" >> "${TYPE_PATH}.run"
        echo "======END_A_TESTCASE======"
    done

    cd "${PREV_CWD}"
}




#run_tests "${SCRIPT_DIR}" "good"
run_tests "${SCRIPT_DIR}" "bad"