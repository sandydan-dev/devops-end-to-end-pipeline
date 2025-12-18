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

/* ================= BACKGROUND CI/CD GRID ================= */
.bg{
  position:fixed;
  inset:0;
  background:
    linear-gradient(90deg,rgba(0,229,255,.08) 1px,transparent 1px),
    linear-gradient(rgba(0,229,255,.08) 1px,transparent 1px);
  background-size:80px 80px;
  animation:grid 40s linear infinite;
  z-index:-1;
}
@keyframes grid{
  to{background-position:800px 800px}
}

/* ================= HEADER ================= */
header{
  position:sticky;
  top:0;
  padding:18px 40px;
  display:flex;
  justify-content:space-between;
  align-items:center;
  background:rgba(2,4,10,.85);
  backdrop-filter:blur(6px);
  z-index:10;
}
header h1{color:#00e5ff;font-size:22px}
nav a{
  margin-left:20px;
  text-decoration:none;
  color:#ccc;
  font-size:14px;
}
nav a:hover{color:#00e5ff}

/* ================= SECTIONS ================= */
section{
  max-width:1200px;
  margin:auto;
  padding:120px 20px;
}
.fade{
  opacity:0;
  transform:translateY(40px);
  transition:.8s;
}
.fade.show{
  opacity:1;
  transform:none;
}

/* ================= HERO TWO COLUMN ================= */
.hero{
  display:grid;
  grid-template-columns:1fr 1fr;
  align-items:center;
  gap:40px;
  min-height:90vh;
}
.hero-left h2{
  font-size:46px;
  background:linear-gradient(90deg,#00e5ff,#6cff95);
  -webkit-background-clip:text;
  color:transparent;
}
.hero-left p{
  margin:20px 0;
  font-size:18px;
  opacity:.85;
}
.btn{
  display:inline-block;
  margin-top:20px;
  margin-right:15px;
  padding:14px 38px;
  border-radius:40px;
  background:linear-gradient(90deg,#00e5ff,#6cff95);
  color:#000;
  font-weight:bold;
  text-decoration:none;
  box-shadow:0 0 25px #00e5ff;
}
.btn:hover{transform:scale(1.08)}

/* ================= ORBITAL ANIMATION ================= */
.orbit-wrap{
  position:relative;
  width:360px;
  height:360px;
  margin:auto;
}
.orbit{
  position:absolute;
  inset:0;
  border-radius:50%;
  animation:spin 25s linear infinite;
}
@keyframes spin{to{transform:rotate(360deg)}}
.icon{
  position:absolute;
  width:38px;
  height:38px;
  filter:drop-shadow(0 0 10px #00e5ff);
}
.icon svg{width:100%;height:100%}

/* positions */
.icon:nth-child(1){top:-10px;left:50%}
.icon:nth-child(2){top:50%;right:-10px}
.icon:nth-child(3){bottom:-10px;left:50%}
.icon:nth-child(4){top:50%;left:-10px}
.icon:nth-child(5){top:15%;right:15%}
.icon:nth-child(6){bottom:15%;right:15%}
.icon:nth-child(7){bottom:15%;left:15%}
.icon:nth-child(8){top:15%;left:15%}

/* ================= SKILLS ================= */
.skills{
  display:grid;
  grid-template-columns:repeat(auto-fit,minmax(160px,1fr));
  gap:20px;
}
.skill{
  padding:18px;
  background:rgba(255,255,255,.04);
  border-radius:14px;
  text-align:center;
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
  gap:12px;
}
.pipe{
  padding:14px 24px;
  border-radius:30px;
  border:1px solid #00e5ff;
  position:relative;
}
.pipe:after{
  content:"➜";
  position:absolute;
  right:-18px;
  top:50%;
  transform:translateY(-50%);
}
.pipe:last-child:after{display:none}

/* ================= PROJECTS ================= */
.projects{
  display:grid;
  grid-template-columns:repeat(auto-fit,minmax(280px,1fr));
  gap:24px;
}
.project{
  padding:22px;
  background:rgba(255,255,255,.04);
  border-radius:14px;
}

/* ================= FOOTER ================= */
footer{
  padding:40px;
  text-align:center;
  opacity:.6;
}

/* ================= MOBILE ================= */
@media(max-width:900px){
  .hero{grid-template-columns:1fr;text-align:center}
  .hero-left h2{font-size:34px}
  nav{display:none}
}
</style>
</head>

<body>
<div class="bg"></div>

<header>
  <h1>DevOps Engineer</h1>
  <nav>
    <a href="#home">Home</a>
    <a href="#skills">Skills</a>
    <a href="#pipeline">CI/CD</a>
    <a href="#projects">Projects</a>
    <a href="#contact">Contact</a>
  </nav>
</header>

<section id="home" class="hero fade">
  <!-- LEFT -->
  <div class="hero-left">
    <h2>Automating CI/CD & Cloud Infrastructure</h2>
    <p>
      DevOps Engineer specializing in CI/CD pipelines, cloud-native
      architecture, Kubernetes orchestration, and infrastructure automation.
    </p>
    <a class="btn" href="resume.pdf" download>Download Resume</a>
    <a class="btn" href="#projects">View Projects</a>
  </div>

  <!-- RIGHT -->
  <div class="hero-right">
    <div class="orbit-wrap">
      <div class="orbit">
        <div class="icon"><svg fill="#FCC624" viewBox="0 0 256 256"><circle cx="128" cy="128" r="120"/></svg></div>
        <div class="icon"><svg fill="#fff" viewBox="0 0 24 24"><path d="M12 .5C5.7.5.5 5.7.5 12"/></svg></div>
        <div class="icon"><svg fill="#2496ED" viewBox="0 0 256 256"><rect x="32" y="112" width="192" height="80"/></svg></div>
        <div class="icon"><svg fill="#D24939" viewBox="0 0 256 256"><circle cx="128" cy="64" r="32"/></svg></div>
        <div class="icon"><svg fill="#7B42BC" viewBox="0 0 256 256"><rect x="40" y="40" width="80" height="80"/></svg></div>
        <div class="icon"><svg fill="#326CE5" viewBox="0 0 256 256"><circle cx="128" cy="128" r="120"/></svg></div>
        <div class="icon"><svg fill="#FF9900" viewBox="0 0 256 256"><path d="M64 144h128"/></svg></div>
        <div class="icon"><svg fill="#0078D4" viewBox="0 0 256 256"><polygon points="64,224 128,32 192,224"/></svg></div>
      </div>
    </div>
  </div>
</section>

<section id="skills" class="fade">
  <h2>Skills</h2>
  <div class="skills">
    <div class="skill">Linux</div>
    <div class="skill">Git & GitHub</div>
    <div class="skill">Jenkins</div>
    <div class="skill">Docker</div>
    <div class="skill">Kubernetes</div>
    <div class="skill">Terraform</div>
    <div class="skill">Ansible</div>
    <div class="skill">AWS & Azure</div>
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
      <p>GitHub → Jenkins → Docker → Kubernetes with zero-downtime deployment.</p>
    </div>
    <div class="project">
      <h3>Infrastructure as Code</h3>
      <p>Provisioned AWS infrastructure using Terraform and Ansible.</p>
    </div>
  </div>
</section>

<section id="contact" class="fade">
  <h2>Contact</h2>
  <p>📧 Email: yourmail@example.com</p>
  <p>📱 Mobile: +91-XXXXXXXXXX</p>
  <p>🔗 GitHub: github.com/yourname</p>
  <p>🔗 LinkedIn: linkedin.com/in/yourname</p>
</section>

<footer>
© 2025 DevOps Engineer | CI/CD • Cloud • Automation
</footer>

<script>
const obs=new IntersectionObserver(e=>{
  e.forEach(i=>i.isIntersecting&&i.target.classList.add("show"))
});
document.querySelectorAll(".fade").forEach(el=>obs.observe(el));
</script>

</body>
</html>

