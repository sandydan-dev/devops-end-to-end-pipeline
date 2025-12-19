<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DevOps Engineer Portfolio</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<style>
:root{
  --bg:#020617;
  --card:#0b1220;
  --border:#1f2937;
  --text:#e5e7eb;
  --muted:#9ca3af;
  --accent:#22d3ee;
  --accent2:#a855f7;
}

*{margin:0;padding:0;box-sizing:border-box}
body{
  font-family:system-ui, sans-serif;
  background:linear-gradient(180deg,#020617,#020617);
  color:var(--text);
}

/* ===== NAV ===== */
header{
  position:fixed;
  top:0;
  width:100%;
  background:#020617;
  border-bottom:1px solid var(--border);
}
nav{
  max-width:1200px;
  margin:auto;
  padding:16px 24px;
  display:flex;
  justify-content:space-between;
}
nav a{
  color:var(--muted);
  margin-left:20px;
  text-decoration:none;
}
nav a:hover{color:var(--accent)}

section{
  max-width:1200px;
  margin:auto;
  padding:120px 24px;
}

/* ===== HERO ===== */
.hero{
  display:grid;
  grid-template-columns:1fr 1fr;
  gap:40px;
}
.hero h1 span{
  background:linear-gradient(90deg,var(--accent),var(--accent2));
  -webkit-background-clip:text;
  color:transparent;
}

/* ===== CODE ===== */
.code{
  background:var(--card);
  border:1px solid var(--border);
  border-radius:12px;
  padding:18px;
  font-family:monospace;
  font-size:13px;
  color:#a5f3fc;
}

/* ===== PIPELINES ===== */
.pipeline-wrapper{
  margin-top:40px;
}

.lane-title{
  color:var(--accent);
  margin-bottom:10px;
}

.pipeline{
  display:flex;
  flex-wrap:wrap;
  align-items:center;
  gap:14px;
  margin-bottom:40px;
}

.pipe{
  background:var(--card);
  border:1px solid var(--border);
  border-radius:10px;
  padding:14px 16px;
  min-width:160px;
  text-align:center;
  text-decoration:none;
  color:var(--text);
}

.pipe:hover{
  border-color:var(--accent);
}

.pipe span{
  display:block;
  font-size:12px;
  color:var(--muted);
}

.arrow{
  color:var(--accent2);
  font-size:20px;
}

/* ===== BLUE GREEN ===== */
.deploy{
  display:grid;
  grid-template-columns:1fr 1fr;
  gap:20px;
}

.deploy-box{
  background:var(--card);
  border:1px solid var(--border);
  border-radius:12px;
  padding:18px;
}

.deploy-box h4{
  color:var(--accent);
  margin-bottom:6px;
}

/* ===== FOOTER ===== */
footer{
  border-top:1px solid var(--border);
  text-align:center;
  padding:26px;
  color:var(--muted);
}

@media(max-width:900px){
  .hero{grid-template-columns:1fr}
  .deploy{grid-template-columns:1fr}
}
</style>
</head>

<body>

<header>
  <nav>
    <strong>DEVOPS ENGINEER</strong>
    <div>
      <a href="#projects">Pipelines</a>
      <a href="#resume">Resume</a>
    </div>
  </nav>
</header>

<!-- HERO -->
<section class="hero">
  <div>
    <h1>Hello,<br>
      I'm <span>Your Name</span><br>
      DevOps Engineer
    </h1>
    <p style="margin-top:14px;color:var(--muted)">
      CI/CD | Terraform | AWS | Docker | Kubernetes
    </p>
  </div>

  <div class="code">
<pre>
provider "aws" {
  region = "us-east-1"
}

resource "aws_eks_cluster" "prod" {
  name = "eks-prod"
}
</pre>
  </div>
</section>

<!-- PIPELINES -->
<section id="projects">
<h2>End-to-End DevOps Pipelines</h2>

<div class="pipeline-wrapper">

<!-- CI LANE -->
<h3 class="lane-title">CI Pipeline</h3>
<div class="pipeline">
  <a class="pipe" href="YOUR_GITHUB_REPO_URL">GitHub
    <span>Source Code</span>
  </a>
  <div class="arrow">➜</div>

  <a class="pipe" href="YOUR_GITHUB_REPO_URL">Jenkins
    <span>Build & Test</span>
  </a>
  <div class="arrow">➜</div>

  <a class="pipe" href="YOUR_GITHUB_REPO_URL">Docker
    <span>Image Build</span>
  </a>
</div>

<!-- CD LANE -->
<h3 class="lane-title">CD Pipeline</h3>
<div class="pipeline">
  <a class="pipe" href="YOUR_GITHUB_REPO_URL">AWS ECR
    <span>Image Registry</span>
  </a>
  <div class="arrow">➜</div>

  <a class="pipe" href="YOUR_GITHUB_REPO_URL">Kubernetes (EKS)
    <span>Deployment</span>
  </a>
  <div class="arrow">➜</div>

  <a class="pipe" href="YOUR_GITHUB_REPO_URL">Monitoring
    <span>Prometheus / Grafana</span>
  </a>
</div>

<!-- TERRAFORM -->
<h3 class="lane-title">Terraform Infrastructure Pipeline</h3>
<div class="pipeline">
  <div class="pipe">Terraform Init
    <span>Provider Setup</span>
  </div>
  <div class="arrow">➜</div>

  <div class="pipe">Terraform Plan
    <span>Preview Changes</span>
  </div>
  <div class="arrow">➜</div>

  <div class="pipe">Terraform Apply
    <span>Create AWS Infra</span>
  </div>
</div>

<!-- DEPLOYMENT -->
<h3 class="lane-title">Deployment Strategy</h3>
<div class="deploy">
  <div class="deploy-box">
    <h4>Blue-Green Deployment</h4>
    <p style="color:var(--muted)">
      Two environments (Blue & Green). Traffic switches only after
      successful validation.
    </p>
  </div>

  <div class="deploy-box">
    <h4>Rolling Update</h4>
    <p style="color:var(--muted)">
      Pods updated gradually ensuring zero downtime.
    </p>
  </div>
</div>

</div>
</section>

<!-- RESUME -->
<section id="resume">
<h2>Resume</h2>
<a href="resume.pdf" download class="pipe" style="display:inline-block">
Download Resume
</a>
</section>

<footer>
© 2025 DevOps Engineer Portfolio
</footer>

</body>
</html>

