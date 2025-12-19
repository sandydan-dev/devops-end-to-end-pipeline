<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>DevOps Engineer Portfolio</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<style>
/* ===== THEME ===== */
:root{
  --bg1:#0b1020;
  --bg2:#0f172a;
  --card:#111827;
  --text:#e5e7eb;
  --muted:#9ca3af;
  --accent:#22d3ee;
  --accent2:#a855f7;
}

*{margin:0;padding:0;box-sizing:border-box}
body{
  font-family:system-ui, sans-serif;
  background:radial-gradient(circle at top left,var(--bg2),var(--bg1));
  color:var(--text);
  scroll-behavior:smooth;
}

/* ===== NAV ===== */
header{
  position:fixed;
  width:100%;
  top:0;
  z-index:10;
  background:rgba(11,16,32,.9);
}
.nav{
  max-width:1200px;
  margin:auto;
  padding:18px 24px;
  display:flex;
  justify-content:space-between;
  align-items:center;
}
.nav strong{color:var(--accent)}
.nav a{
  color:var(--muted);
  margin-left:22px;
  text-decoration:none;
  font-size:14px;
}
.nav a:hover{color:var(--accent)}

/* ===== SECTIONS ===== */
section{
  max-width:1200px;
  margin:auto;
  padding:120px 24px;
}

/* ===== HERO ===== */
.hero{
  display:grid;
  grid-template-columns:1fr 1fr;
  gap:50px;
  align-items:center;
  padding-top:160px;
}
.hero h1{
  font-size:44px;
  line-height:1.2;
}
.hero h1 span{
  background:linear-gradient(90deg,var(--accent),var(--accent2));
  -webkit-background-clip:text;
  color:transparent;
}
.hero p{
  margin-top:18px;
  color:var(--muted);
  max-width:520px;
}

/* ===== BUTTONS ===== */
.buttons{margin-top:26px}
.btn{
  display:inline-block;
  padding:10px 18px;
  border-radius:8px;
  text-decoration:none;
  font-size:14px;
  margin-right:12px;
}
.btn.primary{
  background:linear-gradient(135deg,var(--accent),var(--accent2));
  color:#000;
  font-weight:600;
}
.btn.outline{
  border:1px solid var(--accent);
  color:var(--accent);
}

/* ===== CODE CARD ===== */
.code-card{
  background:linear-gradient(180deg,#0b1220,#020617);
  border-radius:14px;
  border:1px solid #1f2937;
  padding:18px;
  height:340px;
  overflow:hidden;
  font-family:monospace;
  font-size:13px;
  position:relative;
}

/* fake editor header */
.code-header{
  display:flex;
  gap:8px;
  margin-bottom:10px;
}
.dot{width:10px;height:10px;border-radius:50%}
.red{background:#ef4444}
.yellow{background:#facc15}
.green{background:#22c55e}

/* ===== SCROLLING CODE ===== */
.code-scroll{
  position:absolute;
  top:50px;
  left:18px;
  right:18px;
  animation:scrollCode 22s linear infinite;
  color:#a5f3fc;
}
.code-scroll span{color:#c084fc}
.code-scroll .res{color:#38bdf8}
.code-scroll .str{color:#fca5a5}

/* duplicate content creates seamless loop */
.code-scroll::after{
  content:attr(data-code);
  white-space:pre;
}

/* ===== SCROLL ANIMATION ===== */
@keyframes scrollCode{
  from{transform:translateY(0)}
  to{transform:translateY(-50%)}
}

/* ===== PROJECTS ===== */
.projects{
  display:grid;
  grid-template-columns:repeat(auto-fit,minmax(260px,1fr));
  gap:20px;
  margin-top:30px;
}
.project{
  background:var(--card);
  border-radius:12px;
  padding:20px;
  border:1px solid #1f2937;
}

/* ===== FOOTER ===== */
footer{
  text-align:center;
  padding:30px;
  color:var(--muted);
  border-top:1px solid #1f2937;
}

/* ===== RESPONSIVE ===== */
@media(max-width:900px){
  .hero{grid-template-columns:1fr}
  .hero h1{font-size:34px}
}

.pipeline-container{
  display:flex;
  flex-wrap:wrap;
  align-items:center;
  gap:12px;
}

.pipeline-box{
  background:#020617;
  border:1px solid #1f2937;
  border-radius:12px;
  padding:16px 18px;
  min-width:150px;
  text-align:center;
  transition:.3s ease;
}

.pipeline-box h4{
  color:#22d3ee;
  margin-bottom:6px;
}

.pipeline-box p{
  font-size:13px;
  color:#9ca3af;
}

.pipeline-box:hover{
  transform:translateY(-4px);
  border-color:#22d3ee;
}

.arrow{
  font-size:22px;
  color:#a855f7;
}

.pipeline-desc{
  margin-top:24px;
  max-width:800px;
  color:#9ca3af;
  font-size:14px;
}

</style>
</head>

<body>

<header>
  <div class="nav">
    <strong>YOUR NAME</strong>
    <div>
      <a href="#projects">Projects</a>
      <a href="#resume">Resume</a>
    </div>
  </div>
</header>

<section class="hero">
  <div>
    <h1>Hello,<br>
      This is <span>Your Name</span><br>
      I'm a DevOps Engineer.
    </h1>
    <p>
      Automating cloud infrastructure and CI/CD pipelines
      using Terraform, Docker, Kubernetes and AWS.
    </p>

    <div class="buttons">
      <a href="#projects" class="btn outline">View Projects</a>
      <a href="resume.pdf" download class="btn primary">Get Resume</a>
    </div>
  </div>

  <!-- ===== TERRAFORM CODE CARD ===== -->
  <div class="code-card">
    <div class="code-header">
      <div class="dot red"></div>
      <div class="dot yellow"></div>
      <div class="dot green"></div>
    </div>

<pre class="code-scroll" data-code='
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

resource "aws_instance" "web" {
  ami           = "ami-0abcdef123"
  instance_type = "t3.micro"

  tags = {
    Name = "devops-server"
  }
}

output "public_ip" {
  value = aws_instance.web.public_ip
}
'>
provider <span>"aws"</span> {
  region = <span class="str">"us-east-1"</span>
}

resource <span class="res">"aws_vpc"</span> "main" {
  cidr_block = <span class="str">"10.0.0.0/16"</span>
}

resource <span class="res">"aws_subnet"</span> "public" {
  vpc_id     = aws_vpc.main.id
  cidr_block = <span class="str">"10.0.1.0/24"</span>
}

resource <span class="res">"aws_instance"</span> "web" {
  ami           = <span class="str">"ami-0abcdef123"</span>
  instance_type = <span class="str">"t3.micro"</span>

  tags = {
    Name = <span class="str">"devops-server"</span>
  }
}

output <span>"public_ip"</span> {
  value = aws_instance.web.public_ip
}
</pre>

  </div>
</section>


  <section id="projects">
  <h2 style="margin-bottom:30px">End-to-End CI/CD Pipelines</h2>

  <div class="pipeline-container">

    <div class="pipeline-box">
      <h4>GitHub</h4>
      <p>Source Code</p>
    </div>

    <div class="arrow">➜</div>

    <div class="pipeline-box">
      <h4>Jenkins</h4>
      <p>CI Build & Test</p>
    </div>

    <div class="arrow">➜</div>

    <div class="pipeline-box">
      <h4>Docker</h4>
      <p>Image Build</p>
    </div>

    <div class="arrow">➜</div>

    <div class="pipeline-box">
      <h4>AWS ECR</h4>
      <p>Image Registry</p>
    </div>

    <div class="arrow">➜</div>

    <div class="pipeline-box">
      <h4>Kubernetes (EKS)</h4>
      <p>Deployment</p>
    </div>

    <div class="arrow">➜</div>

    <div class="pipeline-box">
      <h4>Monitoring</h4>
      <p>Prometheus & Grafana</p>
    </div>

  </div>

  <div class="pipeline-desc">
    <p>
      <strong>Pipeline Flow:</strong><br>
      Developer pushes code to GitHub → Jenkins triggers CI → Docker image is built →
      pushed to AWS ECR → deployed to Kubernetes (EKS) →
      monitored using Prometheus & Grafana.
    </p>
  </div>
</section>


<section id="resume">
  <h2>Resume</h2>
  <a href="resume.pdf" download class="btn primary">Download Resume</a>
</section>

<footer>
  © 2025 Your Name • DevOps Engineer
</footer>

</body>
</html>

