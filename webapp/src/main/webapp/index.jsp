<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>DevOps Engineer | CI/CD | Cloud | Kubernetes</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- ATS META -->
<meta name="description" content="DevOps Engineer portfolio with CI/CD pipelines, AWS, Kubernetes, Docker, Terraform, Jenkins, Ansible, Monitoring and Automation.">

<style>
/* ================= THEME ================= */
:root{
  --bg:#02040a;
  --text:#ffffff;
  --accent:#00e5ff;
  --card:rgba(255,255,255,.04);
}
.light{
  --bg:#f4f7fb;
  --text:#0a0a0a;
  --accent:#0078ff;
  --card:#ffffff;
}

*{margin:0;padding:0;box-sizing:border-box}
html{scroll-behavior:smooth}
body{
  font-family:Segoe UI,Arial,sans-serif;
  background:var(--bg);
  color:var(--text);
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
  from{background-position:0 0}
  to{background-position:800px 800px}
}

/* ================= HEADER ================= */
header{
  position:sticky;
  top:0;
  padding:14px 30px;
  display:flex;
  justify-content:space-between;
  align-items:center;
  background:rgba(0,0,0,.6);
  backdrop-filter:blur(6px);
  z-index:10;
}
header h1{color:var(--accent);font-size:20px}
nav a{
  margin-left:18px;
  text-decoration:none;
  color:var(--text);
  font-size:14px;
}
.toggle{
  cursor:pointer;
  padding:6px 14px;
  border-radius:20px;
  border:1px solid var(--accent);
  font-size:12px;
}

/* ================= SECTIONS ================= */
section{
  max-width:1100px;
  margin:auto;
  padding:100px 20px;
}
.fade{
  opacity:0;
  transform:translateY(40px);
}
.fade.show{
  opacity:1;
  transform:none;
  transition:.8s;
}

/* ================= HERO ================= */
.hero{text-align:center;padding-top:140px}
.hero h2{
  font-size:46px;
  background:linear-gradient(90deg,var(--accent),#6cff95);
  -webkit-background-clip:text;
  color:transparent;
}
.hero p{margin:20px 0;font-size:18px;opacity:.85}
.btn{
  display:inline-block;
  margin:10px;
  padding:14px 36px;
  border-radius:40px;
  background:linear-gradient(90deg,var(--accent),#6cff95);
  color:#000;
  font-weight:bold;
  text-decoration:none;
}

/* ================= ORBITAL ICONS ================= */
.orbit-wrap{
  position:relative;
  width:360px;
  height:360px;
  margin:60px auto;
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
  width:36px;
  height:36px;
  filter:drop-shadow(0 0 10px var(--accent));
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
  background:var(--card);
  padding:18px;
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
  gap:10px;
}
.pipe{
  padding:14px 22px;
  border-radius:30px;
  border:1px solid var(--accent);
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
  background:var(--card);
  padding:22px;
  border-radius:14px;
}

/* ================= FOOTER ================= */
footer{text-align:center;padding:40px;opacity:.6}

/* ================= MOBILE ================= */
@media(max-width:768px){
  .hero h2{font-size:32px}
  nav{display:none}
}
</style>
</head>

<body>
<div class="bg"></div>

<header>
  <h1>DevOps Engineer</h1>
  <div class="toggle" onclick="toggleTheme()">Toggle Theme</div>
</header>

<section class="hero fade">
  <h2>Automating CI/CD & Cloud Infrastructure</h2>
  <p>AWS • Azure • Kubernetes • Docker • Jenkins • Terraform • Ansible</p>
  <a class="btn" href="resume.pdf" download>Download Resume</a>

  <!-- ORBIT -->
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
</section>

<section class="fade">
  <h2>Skills</h2>
  <div class="skills">
    <div class="skill">Linux</div>
    <div class="skill">Git & GitHub</div>
    <div class="skill">Jenkins CI/CD</div>
    <div class="skill">Docker</div>
    <div class="skill">Kubernetes</div>
    <div class="skill">Terraform</div>
    <div class="skill">Ansible</div>
    <div class="skill">AWS & Azure</div>
    <div class="skill">Prometheus</div>
    <div class="skill">Grafana</div>
  </div>
</section>

<section class="fade">
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

<section class="fade">
  <h2>Projects</h2>
  <div class="projects">
    <div class="project">
      <h3>End-to-End CI/CD Pipeline</h3>
      <p>GitHub → Jenkins → Maven → Docker → Kubernetes on AWS with monitoring.</p>
    </div>
    <div class="project">
      <h3>Infrastructure as Code</h3>
      <p>Provisioned AWS VPC, EC2, EKS using Terraform and Ansible.</p>
    </div>
  </div>
</section>

<section class="fade">
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
/* scroll animation */
const obs=new IntersectionObserver(e=>{
  e.forEach(i=>i.isIntersecting&&i.target.classList.add("show"))
});
document.querySelectorAll(".fade").forEach(el=>obs.observe(el));

/* theme toggle */
function toggleTheme(){
  document.body.classList.toggle("light");
}
</script>

</body>
</html>

