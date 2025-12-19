<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>DevOps Engineer Portfolio</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<style>
/* ================= THEME ================= */
:root {
  --bg:#020617; --card:#0b1220; --text:#e5e7eb;
  --muted:#94a3b8; --accent:#38bdf8; --green:#22c55e;
}
#theme:checked ~ * {
  --bg:#f8fafc; --card:#ffffff; --text:#020617;
  --muted:#334155;
}

/* ================= RESET ================= */
*{margin:0;padding:0;box-sizing:border-box}
body{
  background:var(--bg);
  color:var(--text);
  font-family:system-ui;
  overflow-x:hidden;
}

/* ================= GALAXY ================= */
.galaxy{
  position:fixed; inset:0; z-index:-2;
  background:
    radial-gradient(1px 1px at 20% 30%,#fff,transparent),
    radial-gradient(1px 1px at 70% 80%,#fff,transparent),
    radial-gradient(2px 2px at 40% 60%,#fff,transparent);
  animation:warp 40s linear infinite;
}
@keyframes warp{
  from{transform:scale(1)}
  to{transform:scale(1.4)}
}

/* ================= HEADER ================= */
header{
  position:fixed; width:100%; z-index:10;
  background:rgba(2,6,23,.7); backdrop-filter:blur(8px);
}
nav{
  max-width:1100px; margin:auto; padding:16px;
  display:flex; justify-content:space-between; align-items:center;
}
nav a{color:var(--muted); margin-left:16px; text-decoration:none}
nav a:hover{color:var(--accent)}

/* ================= SECTION ================= */
section{max-width:1100px;margin:auto;padding:120px 20px}

/* ================= HERO ================= */
.hero{display:grid;grid-template-columns:1fr 1fr;gap:40px;align-items:center}
.hero h1{font-size:44px}
.hero span{color:var(--accent)}
.btn{
  display:inline-block;margin-top:20px;padding:12px 22px;
  background:linear-gradient(135deg,var(--accent),var(--green));
  color:#000;border-radius:8px;text-decoration:none;font-weight:600;
}

/* ================= EARTH ================= */
.earth-wrap{perspective:800px}
.earth{
  width:260px;height:260px;border-radius:50%;margin:auto;
  background:radial-gradient(circle at 30% 30%,#60a5fa,#1e3a8a 60%,#020617);
  box-shadow:0 0 40px var(--accent);
  animation:spin 18s linear infinite;
}
.earth:before{
  content:"";position:absolute;inset:0;border-radius:50%;
  background:repeating-linear-gradient(to right,
    rgba(255,255,255,.15) 0 2px,transparent 4px 10px);
}
@keyframes spin{to{transform:rotateY(360deg)}}

/* ================= PIPELINE ================= */
.pipeline{display:flex;justify-content:space-between;margin-top:40px}
.stage{
  width:110px;height:70px;background:var(--card);border-radius:12px;
  display:flex;align-items:center;justify-content:center;position:relative;
}
.stage:after{
  content:"";position:absolute;right:-40px;width:40px;height:2px;
  background:linear-gradient(90deg,transparent,var(--accent),transparent);
  animation:flow 1.5s infinite;
}
.stage:last-child:after{display:none}
@keyframes flow{from{opacity:.2}to{opacity:1}}

/* ================= K8s MESH ================= */
.mesh{
  position:relative;height:260px;margin-top:40px;
}
.node{
  width:20px;height:20px;border-radius:50%;
  background:var(--accent);position:absolute;
  animation:pulse 2s infinite;
}
@keyframes pulse{
  0%{box-shadow:0 0 0 0 rgba(56,189,248,.6)}
  100%{box-shadow:0 0 0 14px transparent}
}

/* ================= AWS FLOW ================= */
.aws{display:grid;grid-template-columns:repeat(auto-fit,minmax(220px,1fr));gap:20px}
.aws-box{
  background:var(--card);padding:20px;border-radius:16px;
  border:1px solid #1f2937;position:relative;overflow:hidden;
}
.aws-box:before{
  content:"";position:absolute;inset:-100%;
  background:linear-gradient(120deg,transparent,rgba(56,189,248,.4),transparent);
  animation:cloud 4s infinite;
}
@keyframes cloud{to{transform:translateX(60%)}}

/* ================= FOOTER ================= */
footer{text-align:center;padding:40px;color:var(--muted)}

/* ================= TOGGLE ================= */
.toggle{cursor:pointer;font-size:14px;color:var(--muted)}

/* ================= RESPONSIVE ================= */
@media(max-width:900px){
  .hero{grid-template-columns:1fr;text-align:center}
}
</style>
</head>

<body>
<input type="checkbox" id="theme" hidden>
<div class="galaxy"></div>

<header>
<nav>
<strong>DevOps</strong>
<div>
<label for="theme" class="toggle">🌗 Theme</label>
<a href="#pipeline">Pipeline</a>
<a href="#k8s">K8s</a>
<a href="#aws">AWS</a>
<a href="#resume">Resume</a>
</div>
</nav>
</header>

<section class="hero">
<div>
<h1>DevOps <span>Engineer</span></h1>
<p>Cloud • CI/CD • Kubernetes • Automation</p>
<a class="btn" href="#pipeline">Explore</a>
</div>
<div class="earth-wrap"><div class="earth"></div></div>
</section>

<section id="pipeline">
<h2>CI/CD Pipeline</h2>
<div class="pipeline">
<div class="stage">Git</div>
<div class="stage">Build</div>
<div class="stage">Docker</div>
<div class="stage">Deploy</div>
</div>
</section>

<section id="k8s">
<h2>Kubernetes Mesh</h2>
<div class="mesh">
<div class="node" style="top:40%;left:20%"></div>
<div class="node" style="top:20%;left:50%"></div>
<div class="node" style="top:60%;left:70%"></div>
<div class="node" style="top:50%;left:40%"></div>
</div>
</section>

<section id="aws">
<h2>AWS Architecture</h2>
<div class="aws">
<div class="aws-box">VPC</div>
<div class="aws-box">EC2 / EKS</div>
<div class="aws-box">Load Balancer</div>
<div class="aws-box">Auto Scaling</div>
</div>
</section>

<section id="resume">
<h2>Resume</h2>
<a class="btn" href="resume.pdf" download>Download Resume</a>
</section>

<footer>© 2025 DevOps Engineer • Pure CSS Portfolio</footer>
</body>
</html>

