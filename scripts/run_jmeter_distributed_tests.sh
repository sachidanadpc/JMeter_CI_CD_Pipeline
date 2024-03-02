#!/bin/bash

# Ensure JMeter test script is provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <jmeter_test_script.jmx>"
    exit 1
fi

# Run JMeter master
docker run --rm -d --name jmeter-master -v $(pwd)/$1:/$1 jmeter -n -t /$1 -l /test_results.jtl -Dserver.rmi.ssl.disable=true -Djava.rmi.server.hostname=127.0.0.1

# Run JMeter slave
docker run --rm -d --name jmeter-slave1 --link jmeter-master jmeter -Dserver.rmi.ssl.disable=true -Jserver.rmi.ssl.disable=true -Djava.rmi.server.hostname=jmeter-master -Dclient.rmi.localport=60000 -Dclient.rmi.port=60000 -Jremote_hosts=jmeter-master

# Add more slave instances if needed
# docker run --rm -d --name jmeter-slave2 --link jmeter-master jmeter -Dserver.rmi.ssl.disable=true -Jserver.rmi.ssl.disable=true -Djava.rmi.server.hostname=jmeter-master -Dclient.rmi.localport=60001 -Dclient.rmi.port=60001 -Jremote_hosts=jmeter-master

# Execute test
docker exec jmeter-master jmeter -n -t /$1 -r -l /test_results.jtl

# Generate HTML report
docker run --rm -v $(pwd):/reports jmeter sh -c 'jmeter -g /reports/test_results.jtl -o /reports/html_report'

echo "JMeter distributed test execution completed. HTML report generated at $(pwd)/html_report/index.html"
