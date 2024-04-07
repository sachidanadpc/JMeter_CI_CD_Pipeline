#!/bin/bash

# Ensure JMeter test script is provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <my_test_script.jmx>"
    exit 1
fi

# Define timestamp
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

# Run JMeter test and generate test results
docker run --rm -v $(pwd)/reports:/reports -v $(pwd)/$1:/$1 justb4/jmeter -n -t /$1 -l /reports/test_results_${TIMESTAMP}.jtl -e

# Set read permission on test results file
chmod +r /reports/test_results_${TIMESTAMP}.jtl

# Generate HTML report index.html
docker run --rm -v $(pwd)/reports:/reports justb4/jmeter -g /reports/test_results_${TIMESTAMP}.jtl -o /reports/html_report

echo "JMeter test execution completed. HTML report generated at $(pwd)/reports/html_report/index.html"
