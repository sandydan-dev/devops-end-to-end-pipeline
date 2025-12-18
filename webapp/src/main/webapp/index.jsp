<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>DevOps Engineer | Portfolio</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <style>
        body {
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
            background-color: #0f172a;
            color: #e5e7eb;
        }

        header {
            background: linear-gradient(135deg, #1e293b, #020617);
            padding: 80px 20px;
            text-align: center;
        }

        header h1 {
            font-size: 48px;
            margin-bottom: 10px;
            color: #38bdf8;
        }

        header p {
            font-size: 20px;
            color: #cbd5f5;
        }

        section {
            padding: 60px 20px;
            max-width: 1100px;
            margin: auto;
        }

        h2 {
            font-size: 32px;
            color: #38bdf8;
            margin-bottom: 20px;
            border-bottom: 2px solid #1e293b;
            display: inline-block;
        }

        .about p {
            font-size: 18px;
            line-height: 1.7;
            color: #d1d5db;
        }

        .skills {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            margin-top: 30px;
        }

        .skill-box {
            background: #020617;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(56,189,248,0.1);
        }

        .skill-box h3 {
            color: #22d3ee;
            margin-bottom: 10px;
        }

        .projects {
            margin-top: 30px;
        }

        .project {
            background: #020617;
            padding: 20px;
            border-radius: 10px;
            margin-bottom: 20px;
            box-shadow: 0 0 20px rgba(56,189,248,0.1);
        }

        footer {
            background: #020617;
            padding: 30px;
            text-align: center;
            font-size: 16px;
            color: #94a3b8;
        }

        .contact a {
            color: #38bdf8;
            text-decoration: none;
        }

        .btn {
            display: inline-block;
            margin-top: 20px;
            padding: 12px 25px;
            background: #38bdf8;
            color: #020617;
            text-decoration: none;
            border-radius: 25px;
            font-weight: bold;
        }

        .btn:hover {
            background: #0ea5e9;
        }
    </style>
</head>

<body>

<header>
    <h1>DevOps Engineer</h1>
    <p>AWS | Docker | Kubernetes | Jenkins | Ansible | Terraform</p>
    <a href="#contact" class="btn">Contact Me</a>
</header>

<section class="about">
    <h2>About Me</h2>
    <p>
        I am a passionate DevOps Engineer focused on automating infrastructure,
        building scalable CI/CD pipelines, and deploying cloud-native applications.
        I have hands-on experience with AWS, containerization, configuration management,
        and Kubernetes orchestration.
    </p>
</section>

<section>
    <h2>DevOps Skills</h2>
    <div class="skills">
        <div class="skill-box">
            <h3>Cloud</h3>
            <p>AWS EC2, VPC, IAM, S3, Load Balancer</p>
        </div>

        <div class="skill-box">
            <h3>CI/CD</h3>
            <p>Jenkins, GitHub, Maven, SonarQube</p>
        </div>

        <div class="skill-box">
            <h3>Containers</h3>
            <p>Docker, Docker Compose, Kubernetes</p>
        </div>

        <div class="skill-box">
            <h3>Configuration</h3>
            <p>Ansible, Shell Scripting, Linux</p>
        </div>

        <div class="skill-box">
            <h3>Infrastructure as Code</h3>
            <p>Terraform, AWS Automation</p>
        </div>

        <div class="skill-box">
            <h3>Monitoring</h3>
            <p>Prometheus, Grafana</p>
        </div>
    </div>
</section>

<section>
    <h2>Projects</h2>
    <div class="projects">
        <div class="project">
            <h3>End-to-End CI/CD Pipeline</h3>
            <p>
                Built a complete CI/CD pipeline using GitHub, Jenkins, Maven,
                Docker, Ansible, and Kubernetes on AWS EC2.
            </p>
        </div>

        <div class="project">
            <h3>Dockerized Java Application</h3>
            <p>
                Containerized Java WAR application deployed on Tomcat
                and orchestrated using Kubernetes.
            </p>
        </div>

        <div class="project">
            <h3>Infrastructure Automation</h3>
            <p>
                Automated AWS infrastructure using Terraform and Ansible
                for repeatable deployments.
            </p>
        </div>
    </div>
</section>

<section id="contact" class="contact">
    <h2>Contact</h2>
    <p>Email: <a href="mailto:devops@example.com">devops@example.com</a></p>
    <p>GitHub: <a href="#">https://github.com/yourusername</a></p>
    <p>LinkedIn: <a href="#">https://linkedin.com/in/yourprofile</a></p>
</section>

<footer>
    © 2025 DevOps Engineer Portfolio | Built with JSP & Tomcat
</footer>

</body>
</html>

