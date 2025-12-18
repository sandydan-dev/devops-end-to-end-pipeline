<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>DevOps Engineer | Portfolio</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<style>
/* ================= RESET ================= */
*{margin:0;padding:0;box-sizing:border-box}
html{scroll-behavior:smooth}
body{
  font-family:Segoe UI,Arial,sans-serif;
  background:#02040a;
  color:#fff;
  overflow-x:hidden;
}

/* ================= BACKGROUND ANIMATION ================= */
.bg-grid{
  position:fixed;
  inset:0;
  background:
    linear-gradient(90deg,rgba(0,229,255,.08) 1px,transparent 1px),
    linear-gradient(rgba(0,229,255,.08) 1px,transparent 1px);
  background-size:80px 80px;
  animation:gridMove 35s linear infinite;
  z-index:-1;
}
@keyframes gridMove{
  from{background-position:0 0}
  to{background-position:800px 800px}
}

/* ================= HEADER ================= */
header{
  position:sticky;
  top:0;
  background:rgba(2,4,10,.8);
  backdrop-filter:blur(6px);
  padding:16px 40px;
  display:flex;
  justify-content:space-between;
  align-items:center;
  z-index:100;
}
header h1{
  font-size:22px;
  color:#00e5ff;
}
nav a{
  margin-left:20px;
  text-decoration:none;
  color:#ccc;
  font-size:14px;
}
nav a:hover{color:#00e5ff}

/* ================= SECTIONS ================= */
section{
  max-width:1100px;
  margin:0 auto;
  padding:100px 20px;
}
.fade{
  opacity:0;
  transform:translateY(40px);
  animation:fadeIn .8s forwards;
}
@keyframes fadeIn{
  to{opacity:1;transform:none}
}

/* ================= HERO ================= */
.hero{
  text-align:center;
  padding-top:140px;
}
.hero h2{
  font-size:46px;
  background:linear-gradient(90deg,#00e5ff,#6cff95);
  -webkit-background-clip:text;
  color:transparent;
}
.hero p{
  margin:20px 0;
  font-size:18px;
  opacity:.85;
}
.btn{
  display:inline-block;
  margin:10px;
  padding:14px 36px;
  border-radius:40px;
  background:linear-gradient(90deg,#00e5ff,#6cff95);
  color:#000;
  font-weight:bold;
  text-decoration:none;
  box-shadow:0 0 25px #00e5ff;
}
.btn:hover{transform:scale(1.08)}

/* ================= SKILLS ================= */
.skills{
  display:grid;
  grid-template-columns:repeat(auto-fit,minmax(150px,1fr));
  gap:20px;
  text-align:center;
}
.skill{
  padding:20px;
  background:rgba(255,255,255,.03);
  border-radius:12px;
  animation:pulse 6s infinite;
}
@keyframes pulse{
  0%,100%{box-shadow:0 0 10px rgba(0,229,255,.2)}
  50%{box-shadow:0 0 25px rgba(0,229,255,.6)}
}

/* ================= PIPELINE ================= */
.pipeline{
  display:flex;
  flex-wrap:wrap;
  justify-content:center;
  gap:14px;
}
.pipe{
  padding:14px 22px;
  border-radius:30px;
  background:#0b1a26;
  border:1px solid #00e5ff;
  animation:flow 4s infinite alternate;
}
@keyframes flow{
  from{transform:translateY(0)}
  to{transform:translateY(-8px)}
}

/* ================= PROJECTS ================= */
.projects{
  display:grid;
  grid-template-columns:repeat(auto-fit,minmax(280px,1fr));
  gap:24px;
}
.project{
  background:rgba(255,255,255,.03);
  padding:22px;
  border-radius:14px;
}
.project h3{color:#00e5ff}

/* ================= CONTACT ================= */
.contact p{margin:10px 0}

/* ================= FOOTER ================= */
footer{
  text-align:center;
  padding:40px;
  opacity:.6;
  font-size:14px;
}

/* ================= MOBILE ================= */
@media(max-width:768px){
  .hero h2{font-size:34px}
  header{flex-direction:column}
  nav{margin-top:10px}
}
</style>
</head>

<body>
<div class="bg-grid"></div>

<header>
  <h1>DevOps Engineer</h1>
  <nav>
    <a href="#home">Home</a>
    <a href="#about">About</a>
    <a href="#skills">Skills</a>
    <a href="#pipeline">CI/CD</a>
    <a href="#projects">Projects</a>
    <a href="#resume">Resume</a>
    <a href="#contact">Contact</a>
  </nav>
</header>

<section id="home" class="hero fade">
  <h2>Automating CI/CD & Cloud Infrastructure</h2>
  <p>AWS • Kubernetes • Docker • Jenkins • Terraform • Ansible</p>
  <a class="btn" href="#projects">View Projects</a>
  <a class="btn" href="resume.pdf" download>Download Resume</a>
</section>

<section id="about" class="fade">
  <h2>About Me</h2>
  <p>
    DevOps Engineer focused on building scalable CI/CD pipelines,
    automating infrastructure, container orchestration, and
    ensuring reliability across cloud-native systems.
  </p>
</section>

<section id="skills" class="fade">
  <h2>Skills</h2>
  <div class="skills">
    <div class="skill">Linux</div>
    <div class="skill">GitHub</div>
    <div class="skill">Docker</div>
    <div class="skill">Kubernetes</div>
    <div class="skill">Jenkins</div>
    <div class="skill">Ansible</div>
    <div class="skill">Terraform</div>
    <div class="skill">AWS</div>
    <div class="skill">Azure</div>
    <div class="skill">Prometheus</div>
    <div class="skill">Grafana</div>
  </div>
</section>

<section id="pipeline" class="fade">
  <h2>CI/CD Pipeline</h2>
  <div class="pipeline">
    <div class="pipe">Git</div>
    <div class="pipe">Jenkins</div>
    <div class="pipe">Maven</div>
    <div class="pipe">Docker</div>
    <div class="pipe">Kubernetes</div>
    <div class="pipe">Monitoring</div>
  </div>
</section>

<section id="projects" class="fade">
  <h2>Projects</h2>
  <div class="projects">
    <div class="project">
      <h3>End-to-End CI/CD Pipeline</h3>
      <p>Automated build, test, Docker image creation, and Kubernetes deployment using Jenkins.</p>
    </div>
    <div class="project">
      <h3>Infrastructure as Code</h3>
      <p>Provisioned AWS infrastructure using Terraform and Ansible.</p>
    </div>
    <div class="project">
      <h3>Monitoring Stack</h3>
      <p>Implemented Prometheus and Grafana for observability.</p>
    </div>
  </div>
</section>

<section id="resume" class="fade">
  <h2>Resume</h2>
  <a class="btn" href="resume.pdf" download>Download Resume (PDF)</a>
</section>

<section id="contact" class="contact fade">
  <h2>Contact</h2>
  <p>📧 Email: yourmail@example.com</p>
  <p>📱 Mobile: +91-XXXXXXXXXX</p>
  <p>🔗 GitHub: github.com/yourname</p>
  <p>🔗 LinkedIn: linkedin.com/in/yourname</p>
</section>

<footer>
  © 2025 DevOps Engineer | Built with JSP • Maven • Tomcat
</footer>

</body>
</html>

