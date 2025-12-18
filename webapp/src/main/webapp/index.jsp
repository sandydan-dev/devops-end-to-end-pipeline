<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>DevOps Engineer | Portfolio</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
:root {
    --primary: #38bdf8;
    --secondary: #22d3ee;
    --dark: #020617;
    --card: #020617;
    --text: #e5e7eb;
}

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    scroll-behavior: smooth;
}

body {
    font-family: "Segoe UI", Arial, sans-serif;
    background: radial-gradient(circle at top, #020617, #000);
    color: var(--text);
}

/* ===== HERO SECTION ===== */
.hero {
    min-height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: center;
    position: relative;
    overflow: hidden;
}

.hero::before {
    content: "";
    position: absolute;
    inset: 0;
    background:
        repeating-linear-gradient(
            90deg,
            rgba(56,189,248,0.08) 0,
            rgba(56,189,248,0.08) 1px,
            transparent 1px,
            transparent 60px
        );
    animation: moveGrid 20s linear infinite;
}

@keyframes moveGrid {
    from { transform: translateX(0); }
    to { transform: translateX(-60px); }
}

.hero-content {
    z-index: 2;
    animation: fadeUp 1.5s ease;
}

@keyframes fadeUp {
    from { opacity: 0; transform: translateY(40px); }
    to { opacity: 1; transform: translateY(0); }
}

.hero h1 {
    font-size: 56px;
    color: var(--primary);
}

.hero span {
    color: white;
}

.hero p {
    font-size: 22px;
    margin: 15px 0 30px;
    color: #cbd5f5;
}

.btn {
    padding: 14px 32px;
    background: linear-gradient(135deg, var(--primary), var(--secondary));
    color: var(--dark);
    border-radius: 40px;
    text-decoration: none;
    font-weight: bold;
    transition: transform .3s, box-shadow .3s;
}

.btn:hover {
    transform: scale(1.08);
    box-shadow: 0 0 25px var(--primary);
}

/* ===== SECTION ===== */
section {
    max-width: 1100px;
    margin: auto;
    padding: 80px 20px;
}

h2 {
    font-size: 36px;
    color: var(--primary);
    margin-bottom: 30px;
}

/* ===== CARDS ===== */
.grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
    gap: 25px;
}

.card {
    background: linear-gradient(180deg, #020617, #020617);
    padding: 25px;
    border-radius: 16px;
    box-shadow: 0 0 30px rgba(56,189,248,.1);
    transition: transform .4s, box-shadow .4s;
}

.card:hover {
    transform: translateY(-10px);
    box-shadow: 0 0 40px rgba(56,189,248,.4);
}

.card h3 {
    color: var(--secondary);
    margin-bottom: 10px;
}

/* ===== TIMELINE ===== */
.timeline {
    border-left: 3px solid var(--primary);
    padding-left: 30px;
}

.timeline div {
    margin-bottom: 30px;
    position: relative;
}

.timeline div::before {
    content: "";
    position: absolute;
    left: -40px;
    top: 6px;
    width: 16px;
    height: 16px;
    background: var(--primary);
    border-radius: 50%;
}

/* ===== FOOTER ===== */
footer {
    background: #000;
    padding: 30px;
    text-align: center;
    color: #94a3b8;
}

/* ===== FLOATING DEVOPS ICONS ===== */
.floating {
    position: fixed;
    inset: 0;
    pointer-events: none;
}

.floating span {
    position: absolute;
    color: var(--primary);
    opacity: .15;
    font-size: 24px;
    animation: float 12s linear infinite;
}

@keyframes float {
    from { transform: translateY(110vh) rotate(0deg); }
    to { transform: translateY(-10vh) rotate(360deg); }
}
</style>
</head>

<body>

<!-- FLOATING DEVOPS EFFECT -->
<div class="floating">
    <span style="left:10%; animation-duration:14s;">⚙️</span>
    <span style="left:30%; animation-duration:18s;">☁️</span>
    <span style="left:50%; animation-duration:16s;">🐳</span>
    <span style="left:70%; animation-duration:20s;">🚀</span>
    <span style="left:90%; animation-duration:22s;">📦</span>
</div>

<!-- HERO -->
<div class="hero">
    <div class="hero-content">
        <h1>DevOps <span>Engineer</span></h1>
        <p>AWS | Docker | Kubernetes | Jenkins | Terraform | Ansible</p>
        <a href="#contact" class="btn">Hire Me</a>
    </div>
</div>

<!-- ABOUT -->
<section>
<h2>About Me</h2>
<p>
I am a highly motivated DevOps Engineer specializing in cloud infrastructure,
CI/CD automation, container orchestration, and scalable deployments.
I design production-grade pipelines and cloud-native solutions.
</p>
</section>

<!-- SKILLS -->
<section>
<h2>Core Skills</h2>
<div class="grid">
    <div class="card"><h3>Cloud</h3>AWS EC2, VPC, IAM, S3, ALB</div>
    <div class="card"><h3>CI/CD</h3>Jenkins, GitHub, Maven, SonarQube</div>
    <div class="card"><h3>Containers</h3>Docker, Kubernetes, Helm</div>
    <div class="card"><h3>IaC</h3>Terraform, Ansible</div>
    <div class="card"><h3>Monitoring</h3>Prometheus, Grafana</div>
    <div class="card"><h3>Security</h3>DevSecOps, Secrets, IAM</div>
</div>
</section>

<!-- EXPERIENCE -->
<section>
<h2>Experience & Projects</h2>
<div class="timeline">
    <div>
        <h3>End-to-End CI/CD Pipeline</h3>
        <p>Git → Jenkins → Maven → Docker → Kubernetes → AWS</p>
    </div>
    <div>
        <h3>Cloud Infrastructure Automation</h3>
        <p>Provisioned AWS infrastructure using Terraform & Ansible</p>
    </div>
    <div>
        <h3>Containerized Java Applications</h3>
        <p>Dockerized WAR apps and deployed on Kubernetes</p>
    </div>
</div>
</section>

<!-- CONTACT -->
<section id="contact">
<h2>Contact</h2>
<p>Email: devops@example.com</p>
<p>GitHub: github.com/yourusername</p>
<p>LinkedIn: linkedin.com/in/yourprofile</p>
</section>

<footer>
© 2025 DevOps Engineer Portfolio | Powered by JSP & Tomcat
</footer>

</body>
</html>

