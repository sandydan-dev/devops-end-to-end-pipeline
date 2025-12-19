<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title>DevOps Engineer | Portfolio</title>

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700&display=swap" rel="stylesheet">

<style>
:root {
  --bg: #0b0f14;
  --card: #121822;
  --text: #e5e7eb;
  --muted: #9ca3af;
  --accent: #38bdf8;
  --accent2: #22c55e;
}

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Inter', sans-serif;
}

body {
  background: radial-gradient(circle at top, #111827, var(--bg));
  color: var(--text);
  scroll-behavior: smooth;
}

/* ---------- HEADER ---------- */
header {
  position: fixed;
  width: 100%;
  background: rgba(11,15,20,0.7);
  backdrop-filter: blur(10px);
  z-index: 100;
}

.nav {
  max-width: 1100px;
  margin: auto;
  padding: 16px;
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.nav a {
  color: var(--muted);
  margin-left: 20px;
  text-decoration: none;
  font-size: 14px;
}

.nav a:hover {
  color: var(--accent);
}

/* ---------- SECTIONS ---------- */
section {
  max-width: 1100px;
  margin: auto;
  padding: 110px 20px 80px;
}

/* ---------- HERO ---------- */
.hero {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 40px;
  align-items: center;
}

.hero h1 {
  font-size: 42px;
  line-height: 1.2;
}

.hero span {
  color: var(--accent);
}

.hero p {
  margin: 20px 0;
  color: var(--muted);
}

.btn {
  display: inline-block;
  margin-top: 20px;
  padding: 12px 22px;
  border-radius: 8px;
  background: linear-gradient(135deg, var(--accent), var(--accent2));
  color: #000;
  text-decoration: none;
  font-weight: 600;
}

/* ---------- ANIMATION PANEL ---------- */
.pipeline {
  position: relative;
  height: 260px;
  border-radius: 16px;
  background: linear-gradient(180deg, #0f172a, #020617);
  overflow: hidden;
}

.node {
  position: absolute;
  width: 60px;
  height: 60px;
  border-radius: 50%;
  background: var(--card);
  border: 1px solid #1f2937;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 12px;
  animation: float 4s ease-in-out infinite;
}

.node:nth-child(1) { top: 40px; left: 40px; }
.node:nth-child(2) { top: 140px; left: 140px; animation-delay: 1s;}
.node:nth-child(3) { top: 60px; right: 120px; animation-delay: 2s;}
.node:nth-child(4) { bottom: 40px; right: 40px; animation-delay: 3s;}

@keyframes float {
  0%,100% { transform: translateY(0); }
  50% { transform: translateY(-12px); }
}

/* ---------- ABOUT ---------- */
.cards {
  display: grid;
  grid-template-columns: repeat(auto-fit,minmax(240px,1fr));
  gap: 20px;
}

.card {
  background: var(--card);
  padding: 24px;
  border-radius: 16px;
  border: 1px solid #1f2937;
  transition: transform .3s;
}

.card:hover {
  transform: translateY(-6px);
}

/* ---------- PROJECTS ---------- */
.project {
  margin-top: 20px;
}

/* ---------- TOOLS ---------- */
.tools span {
  display: inline-block;
  margin: 6px;
  padding: 8px 14px;
  background: #020617;
  border-radius: 999px;
  font-size: 13px;
  border: 1px solid #1f2937;
}

/* ---------- FOOTER ---------- */
footer {
  padding: 40px 20px;
  text-align: center;
  color: var(--muted);
  border-top: 1px solid #1f2937;
}

/* ---------- RESPONSIVE ---------- */
@media(max-width: 900px) {
  .hero {
    grid-template-columns: 1fr;
  }
}
</style>
</head>

<body>

<header>
  <div class="nav">
    <strong>DevOps</strong>
    <div>
      <a href="#about">About</a>
      <a href="#projects">Projects</a>
      <a href="#tools">Tools</a>
      <a href="#resume">Resume</a>
    </div>
  </div>
</header>

<!-- HERO -->
<section class="hero">
  <div>
    <h1>Hi, I'm a <span>DevOps Engineer</span></h1>
    <p>
      I design, automate and scale cloud infrastructure using modern DevOps practices.
      Passionate about CI/CD, Kubernetes and cloud-native solutions.
    </p>
    <a class="btn" href="#projects">View Projects</a>
  </div>

  <div class="pipeline">
    <div class="node">Git</div>
    <div class="node">CI</div>
    <div class="node">Docker</div>
    <div class="node">K8s</div>
  </div>
</section>

<!-- ABOUT -->
<section id="about">
  <h2>About Me</h2>
  <div class="cards">
    <div class="card">
      <h3>Automation</h3>
      <p>I automate infrastructure using IaC and pipelines to reduce manual effort.</p>
    </div>
    <div class="card">
      <h3>Cloud</h3>
      <p>Experience with AWS services, networking, security and scalability.</p>
    </div>
    <div class="card">
      <h3>Reliability</h3>
      <p>Monitoring, logging and high availability are always part of my designs.</p>
    </div>
  </div>
</section>

<!-- PROJECTS -->
<section id="projects">
  <h2>Projects</h2>
  <div class="project card">
    <h3>End-to-End CI/CD Pipeline</h3>
    <p>Git → Jenkins → Docker → Kubernetes with zero-downtime deployments.</p>
  </div>
  <div class="project card">
    <h3>AWS Infrastructure with Terraform</h3>
    <p>VPC, EC2, ALB and autoscaling provisioned via Terraform.</p>
  </div>
</section>

<!-- TOOLS -->
<section id="tools">
  <h2>DevOps Tools</h2>
  <div class="tools">
    <span>Linux</span>
    <span>Git</span>
    <span>Jenkins</span>
    <span>Docker</span>
    <span>Kubernetes</span>
    <span>AWS</span>
    <span>Terraform</span>
    <span>Ansible</span>
    <span>Monitoring</span>
  </div>
</section>

<!-- RESUME -->
<section id="resume">
  <h2>Resume</h2>
  <p>You can download my resume below.</p>
  <a class="btn" href="resume.pdf" download>Download Resume</a>
</section>

<footer>
  © 2025 DevOps Engineer • Built with JSP
</footer>

</body>
</html>

