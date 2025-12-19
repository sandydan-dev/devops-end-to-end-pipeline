# DevOps End-to-End CI/CD Pipeline Project

## Project Overview
This project demonstrates a fully automated **DevOps pipeline** using Terraform, Jenkins, Docker, Ansible, and Kubernetes.  
It covers the complete lifecycle: **infrastructure provisioning → code build → testing → deployment → containerization → Kubernetes orchestration**.

## Tools & Technologies Used
- **Terraform** – Infrastructure as Code (VPC, EC2 instances, security groups)
- **Jenkins** – CI/CD automation
- **Git** – Version control
- **Maven** – Java project build
- **Docker** – Containerization
- **Ansible** – Configuration management and deployment
- **Kubernetes** – Orchestration and deployment
- **SonarQube** – Code quality analysis

## Architecture Overview
### Infrastructure Setup (Terraform)
- **VPC & Networking**: Custom VPC, subnets, security groups
- **Instances Created**:
  - `git-server` – Git repository
  - `jenkins-server` – CI/CD automation
  - `tomcat-server` – Java application deployment
  - `ansible-server` – Deployment automation
  - `docker-server` – Container runtime
  - `kubernetes-server` – Kubernetes cluster for orchestration

*Terraform files are located in the `/terraform` folder.*

### Jenkins Pipeline Overview
Jenkins jobs automate the entire CI/CD process:

1. **FirstMavenProject, SonarQube Analysis**
   - Pull code from Git
   - Build Java project using Maven
   - Run SonarQube analysis for code quality

2. **BuildAndDeployToTomcat**
   - Deploy WAR files to `tomcat-server`

3. **BuildAndDeployContainer**
   - Build Docker images
   - Push to container registry (optional: JFrog Artifactory)

4. **copy-artifacts-to-ansible**
   - Copy build artifacts to `ansible-server`
   - Prepare for deployment

5. **deployment_on_kubernetes**
   - Deploy application on Kubernetes cluster using manifests:
     - `deployment.yaml`
     - `service.yaml`
     - `ingress.yaml` (optional)

### End-to-End Pipeline Flow
```text
Developer Push → Git Server → Jenkins Build & Test → SonarQube Analysis
          ↓
      Maven Build
          ↓
     Artifact Creation
          ↓
  Deploy to Tomcat / Docker
          ↓
   Copy artifacts → Ansible
          ↓
  Deploy on Kubernetes Cluster
