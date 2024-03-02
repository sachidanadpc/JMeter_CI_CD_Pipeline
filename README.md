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

JMeter_CI_CD_Pipeline/
│
├── scripts/
│ ├── install_docker.sh
│ ├── build_jmeter_docker_image.sh
│ ├── setup_kubernetes.sh
│ ├── deploy_monitoring_stack.sh
│ ├── jmeter_master.yaml
│ ├── jmeter_slave.yaml
│ ├── install_jenkins.sh
│ ├── run_jmeter_tests.sh
│ └── run_jmeter_distributed_tests.sh
│
├── test_scripts/
│ └── my_test_script.jmx
│
├── README.md
└── .gitignore

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
