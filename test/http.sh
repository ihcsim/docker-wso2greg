#!/bin/bash

GREG_HOST=${GREG_HOST:-localhost}
MAX_RETRIES=${MAX_RETRIES:-10}

http_ok=200
failed=false

retries=0
greg_response=`curl -k -s -L -w %{http_code} -o /dev/null https://${GREG_HOST}:9443/carbon`
until [ ${greg_response} != "000" ] && [ ${greg_response} != "404" ] || [ ${retries} -eq ${MAX_RETRIES} ]; do
  echo "Waiting for Admin Console at https://${GREG_HOST}:9443/carbon to be ready...Retries ${retries}"
  sleep 5
  retries=$((retries + 1))
  greg_response=`curl -k -s -L -w %{http_code} -o /dev/null https://${GREG_HOST}:9443/carbon`
done

if [ ${greg_response} != ${http_ok} ];
then
  echo -e "\033[0;31mAdmin Console is unreachable. Received HTTP response ${greg_response}. To view the GREG container logs, run the \"docker logs\" command.\033[0m"
  failed=true
fi

if ${failed} ;
then
  echo -e "\033[0;31mTest failed.\033[0m"
  exit 1
fi
echo -e "\033[0;32mTest passed.\033[0m"
