# JMeter CI/CD Pipeline Scripts

This repository contains shell scripts for setting up a Continuous Integration/Continuous Deployment (CI/CD) pipeline using JMeter, Jenkins, Docker, Kubernetes, InfluxDB, and Grafana. These scripts automate the deployment of necessary infrastructure components and the execution of JMeter tests.

## Table of Contents

- [Repository Structure](#repository-structure)
- [Scripts](#scripts)
- [Test Scripts](#test-scripts)
- [Setup Instructions](#setup-instructions)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

--------------------------------------------------------------------------------

## Repository Structure

![image](https://github.com/sachidanadpc/JMeter_CI_CD_Pipeline/assets/49983832/f9b0dda7-7c93-4ad3-93c5-7b905c00e7ad)

--------------------------------------------------------------------------------

## Scripts

- `install_docker.sh`: Script to install Docker.
- `build_jmeter_docker_image.sh`: Script to build JMeter Docker image.
- `setup_kubernetes.sh`: Script to setup Kubernetes.
- `deploy_monitoring_stack.sh`: Script to deploy InfluxDB and Grafana on Kubernetes.
- `jmeter_master.yaml`: Kubernetes YAML configuration for JMeter master.
- `jmeter_slave.yaml`: Kubernetes YAML configuration for JMeter slaves.
- `install_jenkins.sh`: Script to install Jenkins.
- `run_jmeter_tests.sh`: Script to run JMeter tests and generate HTML report.
- `run_jmeter_distributed_tests.sh`: Script to run JMeter tests in distributed mode.

--------------------------------------------------------------------------------

## Test Scripts

- `my_test_script.jmx`: Example JMeter test script.

--------------------------------------------------------------------------------

## Setup Instructions

1. Clone this repository to your local machine.
2. Run the necessary setup scripts in the order mentioned in the [Scripts](#scripts) section.
3. Place your JMeter test scripts in the `test_scripts/` directory.

--------------------------------------------------------------------------------

## Usage

- Modify the scripts as needed based on your specific requirements.
- Execute the scripts on your target environment (e.g., AWS Ubuntu machine) by following the setup instructions.

--------------------------------------------------------------------------------

## Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, feel free to open an issue or create a pull request.

--------------------------------------------------------------------------------

## License

This project is licensed under the [MIT License](LICENSE).

--------------------------------------------------------------------------------

## **Sequence of Running Shell Scripts:**

**Install Docker:** <br />
**Script: install_docker.sh** <br />
Steps: <br />
Execute install_docker.sh script to install Docker on your system. <br />
Additional Information: <br />
Docker is required for building and running Docker containers, which will be used for setting up JMeter and other components. <br />

**Create JMeter Docker Image:** <br />
**Script: build_jmeter_docker_image.sh** <br />
Steps: <br />
Execute build_jmeter_docker_image.sh script to build a Docker image for JMeter. <br />
Additional Information: <br />
This script builds a Docker image containing the necessary JMeter setup. <br />

**Setup Kubernetes:** <br />
**Script: setup_kubernetes.sh** <br />
Steps: <br />
Execute setup_kubernetes.sh script to set up Kubernetes on your system. <br />
Additional Information: <br />
Kubernetes is required for orchestrating and managing containers in a distributed environment. <br />

**Deploy InfluxDB and Grafana Kubernetes Cluster:** <br />
**Script: deploy_monitoring_stack.sh** <br />
Steps: <br />
Execute deploy_monitoring_stack.sh script to deploy InfluxDB and Grafana on Kubernetes cluster. <br />
Additional Information: <br />
InfluxDB and Grafana are used for live monitoring of JMeter test results. <br />

**Setup Jenkins and Pipeline:** <br />
**Script: install_jenkins.sh** <br />
Steps: <br />
Execute install_jenkins.sh script to install Jenkins on your system. <br />
Additional Information: <br />
Jenkins will be used to automate CI/CD tasks and integrate with Git repository for triggering builds.

**Run JMeter Tests (Non-Distributed Mode):** <br />
**Script: run_jmeter_tests.sh** <br />
Steps: <br />
Place your JMeter test script(s) in the test_scripts/ directory. <br />
Execute run_jmeter_tests.sh script by passing the path to your JMeter test script as an argument. <br />
Additional Information: <br />
This script runs JMeter tests in non-distributed mode and generates HTML reports. <br />

**Run JMeter Tests (Distributed Mode):** <br />
**Script: run_jmeter_distributed_tests.sh** <br />
Steps: <br />
Place your JMeter test script(s) in the test_scripts/ directory. <br />
Execute run_jmeter_distributed_tests.sh script by passing the path to your JMeter test script as an argument. <br />
Additional Information: <br />
This script sets up a JMeter master and slave(s) in Docker containers and executes tests in distributed mode. <br />
Additional Notes: <br />
Ensure that you have necessary permissions to execute the shell scripts (chmod +x script_name.sh). <br />
Make sure to adjust any paths or configurations in the scripts according to your environment and requirements. <br />
Review the output of each script for any errors or warnings during execution. <br />
Test your CI/CD pipeline thoroughly to ensure that all components are set up correctly and tests are executed successfully. <br />
