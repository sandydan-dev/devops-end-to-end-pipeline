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
  background:var(--bg);
  color:var(--text);
}

/* ===== NAV ===== */
header{
  position:fixed;
  top:0;
  width:100%;
  background:#020617;
  border-bottom:1px solid var(--border);
  z-index:10;
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
  text-align:center;
  padding-top:160px;
}
.hero h1 span{
  background:linear-gradient(90deg,var(--accent),var(--accent2));
  -webkit-background-clip:text;
  color:transparent;
}
.hero p{
  color:var(--muted);
  margin-top:12px;
}

/* ===== CODE SCROLL ===== */
.code-wrapper{
  margin:50px auto 0;
  max-width:700px;
  height:280px;
  overflow:hidden;
  border-radius:14px;
  border:1px solid var(--border);
  background:linear-gradient(180deg,#020617,#020617);
}

.code-header{
  display:flex;
  gap:8px;
  padding:10px;
  border-bottom:1px solid var(--border);
}
.dot{width:10px;height:10px;border-radius:50%}
.red{background:#ef4444}
.yellow{background:#facc15}
.green{background:#22c55e}

.code-scroll{
  padding:16px;
  font-family:monospace;
  font-size:13px;
  color:#a5f3fc;
  animation:scrollCode 18s linear infinite;
}

@keyframes scrollCode{
  0%{transform:translateY(0)}
  100%{transform:translateY(-50%)}
}

/* ===== PIPELINES ===== */
.pipeline-wrapper{
  margin-top:40px;
}

.lane-title{
  color:var(--accent);
  margin-bottom:12px;
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
.pipe span{
  display:block;
  font-size:12px;
  color:var(--muted);
}
.pipe:hover{
  border-color:var(--accent);
}

.arrow{
  color:var(--accent2);
  font-size:20px;
}

/* ===== DEPLOY ===== */
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
  <h1>Hello, I'm <span>Your Name</span><br>DevOps Engineer</h1>
  <p>CI/CD • Terraform • AWS • Docker • Kubernetes</p>

  <!-- CENTERED TERRAFORM CODE -->
  <div class="code-wrapper">
    <div class="code-header">
      <div class="dot red"></div>
      <div class="dot yellow"></div>
      <div class="dot green"></div>
    </div>

    <div class="code-scroll">
<pre>
provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
}

resource "aws_eks_cluster" "prod" {
  name = "eks-prod"
}

resource "aws_eks_node_group" "nodes" {
  cluster_name = aws_eks_cluster.prod.name
}

# --- repeat ---
provider "aws" {
  region = "us-east-1"
}
</pre>
    </div>
  </div>
</section>

<!-- PIPELINES -->
<section id="projects">
<h2>End-to-End DevOps Pipelines</h2>

<div class="pipeline-wrapper">

<h3 class="lane-title">CI Pipeline</h3>
<div class="pipeline">
  <a class="pipe" href="YOUR_GITHUB_REPO_URL">GitHub<span>Source</span></a>
  <div class="arrow">➜</div>
  <a class="pipe" href="YOUR_GITHUB_REPO_URL">Jenkins<span>Build & Test</span></a>
  <div class="arrow">➜</div>
  <a class="pipe" href="YOUR_GITHUB_REPO_URL">Docker<span>Image</span></a>
</div>

<h3 class="lane-title">CD Pipeline</h3>
<div class="pipeline">
  <div class="pipe">AWS ECR<span>Registry</span></div>
  <div class="arrow">➜</div>
  <div class="pipe">EKS<span>Deploy</span></div>
  <div class="arrow">➜</div>
  <div class="pipe">Monitoring<span>Prometheus</span></div>
</div>

<h3 class="lane-title">Terraform Pipeline</h3>
<div class="pipeline">
  <div class="pipe">terraform init</div>
  <div class="arrow">➜</div>
  <div class="pipe">terraform plan</div>
  <div class="arrow">➜</div>
  <div class="pipe">terraform apply</div>
</div>

<h3 class="lane-title">Deployment Strategy</h3>
<div class="deploy">
  <div class="deploy-box">
    <h4>Blue-Green</h4>
    <p style="color:var(--muted)">Zero-downtime traffic switch.</p>
  </div>
  <div class="deploy-box">
    <h4>Rolling Update</h4>
    <p style="color:var(--muted)">Gradual pod replacement.</p>
  </div>
</div>

</div>
</section>

<!-- RESUME -->
<section id="resume">
<h2>Resume</h2>
<a href="resume.pdf" download class="pipe">Download Resume</a>
</section>

<footer>
© 2025 DevOps Engineer Portfolio
</footer>

</body>
</html>

