<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>DevOps Engineer Portfolio</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<style>
/* ===== BASE ===== */
:root{
  --bg:#0f172a;
  --card:#111827;
  --text:#e5e7eb;
  --muted:#9ca3af;
  --accent:#38bdf8;
}
*{margin:0;padding:0;box-sizing:border-box}
body{
  font-family:system-ui, sans-serif;
  background:var(--bg);
  color:var(--text);
  line-height:1.6;
  scroll-behavior:smooth;
}

/* ===== HEADER / MENU ===== */
header{
  position:fixed;
  width:100%;
  top:0;
  background:#020617;
  z-index:10;
}
.nav{
  max-width:1100px;
  margin:auto;
  padding:14px 20px;
  display:flex;
  justify-content:space-between;
  align-items:center;
}
.nav strong{font-size:18px}
.nav a{
  color:var(--muted);
  margin-left:18px;
  text-decoration:none;
  font-size:14px;
}
.nav a:hover{color:var(--accent)}

/* ===== SECTIONS ===== */
section{
  max-width:1100px;
  margin:auto;
  padding:100px 20px;
}

/* ===== HERO ===== */
.hero{
  padding-top:140px;
  animation:fadeIn .8s ease;
}
.hero h1{
  font-size:42px;
}
.hero span{color:var(--accent)}
.hero p{
  margin-top:12px;
  color:var(--muted);
  max-width:600px;
}
.btn{
  display:inline-block;
  margin-top:20px;
  padding:10px 20px;
  border-radius:6px;
  background:var(--accent);
  color:#000;
  text-decoration:none;
  font-weight:600;
}

/* ===== CARDS ===== */
.cards{
  display:grid;
  grid-template-columns:repeat(auto-fit,minmax(260px,1fr));
  gap:20px;
  margin-top:30px;
}
.card{
  background:var(--card);
  padding:20px;
  border-radius:10px;
  border:1px solid #1f2937;
  animation:slideUp .6s ease;
}
.card h3{margin-bottom:8px}

/* ===== FOOTER ===== */
footer{
  padding:30px 20px;
  text-align:center;
  color:var(--muted);
  border-top:1px solid #1f2937;
}

/* ===== SIMPLE ANIMATIONS ===== */
@keyframes fadeIn{
  from{opacity:0}
  to{opacity:1}
}
@keyframes slideUp{
  from{opacity:0; transform:translateY(8px)}
  to{opacity:1; transform:translateY(0)}
}

/* ===== MOBILE ===== */
@media(max-width:768px){
  .hero h1{font-size:32px}
}
</style>
</head>

<body>

<!-- ===== MENU BAR ===== -->
<header>
  <div class="nav">
    <strong>DevOps</strong>
    <div>
      <a href="#home">Home</a>
      <a href="#about">About</a>
      <a href="#projects">Projects</a>
      <a href="#resume">Resume</a>
    </div>
  </div>
</header>

<!-- ===== HERO ===== -->
<section id="home" class="hero">
  <h1>Hi, I'm a <span>DevOps Engineer</span></h1>
  <p>
    I build reliable CI/CD pipelines, automate cloud infrastructure,
    and deploy scalable applications using DevOps best practices.
  </p>
  <a href="#projects" class="btn">View Projects</a>
</section>

<!-- ===== ABOUT ===== -->
<section id="about">
  <h2>About Me</h2>
  <p style="color:var(--muted); max-width:700px">
    DevOps engineer with hands-on experience in Linux, Git, Jenkins,
    Docker, Kubernetes and AWS. Focused on automation, reliability,
    and clean infrastructure design.
  </p>
</section>

<!-- ===== PROJECTS ===== -->
<section id="projects">
  <h2>Projects</h2>
  <div class="cards">
    <div class="card">
      <h3>CI/CD Pipeline</h3>
      <p>End-to-end pipeline using Git, Jenkins, Docker and Kubernetes.</p>
    </div>
    <div class="card">
      <h3>AWS Infrastructure</h3>
      <p>VPC, EC2, Load Balancer and Auto Scaling using Terraform.</p>
    </div>
    <div class="card">
      <h3>Monitoring Setup</h3>
      <p>Centralized logging and monitoring for production workloads.</p>
    </div>
  </div>
</section>

<!-- ===== RESUME ===== -->
<section id="resume">
  <h2>Resume</h2>
  <p style="color:var(--muted)">Download my resume below:</p>
  <a href="resume.pdf" download class="btn">Download Resume</a>
</section>

<!-- ===== FOOTER ===== -->
<footer>
  © 2025 DevOps Engineer • Clean & Simple Portfolio
</footer>

</body>
</html>

