<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>DevOps Engineer | CI/CD Portfolio</title>

<style>
/* ===============================
   GLOBAL RESET & THEME
================================ */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

body {
    background: #0b0f19;
    color: #eaeaf0;
    overflow-x: hidden;
}

/* ===============================
   CI/CD PIPELINE BACKGROUND
================================ */
.pipeline-bg {
    position: fixed;
    inset: 0;
    z-index: -1;
    background: radial-gradient(circle at top, #121a2f, #070a12);
    overflow: hidden;
}

/* pipeline track */
.pipeline-track {
    position: absolute;
    top: 50%;
    left: -10%;
    width: 120%;
    height: 4px;
    background: linear-gradient(
        90deg,
        transparent,
        #1f80ff,
        #00ffd5,
        #1f80ff,
        transparent
    );
    animation: moveTrack 6s linear infinite;
}

/* pipeline stages */
.stage {
    position: absolute;
    top: calc(50% - 18px);
    width: 36px;
    height: 36px;
    border-radius: 50%;
    background: #10182c;
    border: 2px solid #00ffd5;
    box-shadow: 0 0 20px rgba(0,255,213,.8);
}

.stage::after {
    content: '';
    position: absolute;
    inset: 8px;
    border-radius: 50%;
    background: #00ffd5;
    animation: pulse 2s infinite;
}

.stage.git    { left: 15%; }
.stage.build  { left: 35%; }
.stage.test   { left: 55%; }
.stage.deploy { left: 75%; }

@keyframes moveTrack {
    from { transform: translateX(0); }
    to   { transform: translateX(10%); }
}

@keyframes pulse {
    0%   { transform: scale(.6); opacity: .5; }
    50%  { transform: scale(1); opacity: 1; }
    100% { transform: scale(.6); opacity: .5; }
}

/* ===============================
   HEADER / HERO
================================ */
header {
    height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: center;
}

.hero h1 {
    font-size: 3.5rem;
    background: linear-gradient(90deg, #00ffd5, #1f80ff);
    -webkit-background-clip: text;
    color: transparent;
    animation: glow 3s ease-in-out infinite;
}

.hero h2 {
    margin-top: 15px;
    font-weight: 400;
    color: #b5c2ff;
}

.hero p {
    margin-top: 20px;
    max-width: 650px;
    line-height: 1.7;
    color: #cfd3ff;
}

@keyframes glow {
    0%,100% { text-shadow: 0 0 15px rgba(0,255,213,.6); }
    50% { text-shadow: 0 0 35px rgba(31,128,255,.9); }
}

/* ===============================
   SECTIONS
================================ */
section {
    padding: 100px 12%;
}

.section-title {
    font-size: 2.4rem;
    margin-bottom: 40px;
    color: #00ffd5;
}

/* ===============================
   SKILLS GRID
================================ */
.skills {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
    gap: 25px;
}

.skill-card {
    background: #0f1529;
    border-radius: 14px;
    padding: 25px;
    text-align: center;
    border: 1px solid rgba(0,255,213,.2);
    transition: transform .4s, box-shadow .4s;
}

.skill-card:hover {
    transform: translateY(-10px);
    box-shadow: 0 0 40px rgba(0,255,213,.4);
}

.skill-card h3 {
    color: #1f80ff;
    margin-bottom: 10px;
}

/* ===============================
   CI/CD FLOW
================================ */
.flow {
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
    gap: 20px;
}

.flow-step {
    flex: 1;
    min-width: 160px;
    background: #0f1529;
    padding: 25px;
    border-radius: 12px;
    text-align: center;
    position: relative;
    animation: slideUp 1s ease forwards;
}

.flow-step span {
    display: block;
    font-size: 1.4rem;
    color: #00ffd5;
    margin-bottom: 10px;
}

@keyframes slideUp {
    from { opacity: 0; transform: translateY(30px); }
    to   { opacity: 1; transform: translateY(0); }
}

/* ===============================
   FOOTER
================================ */
footer {
    text-align: center;
    padding: 40px;
    background: #060913;
    color: #7f8cff;
}

/* ===============================
   RESPONSIVE
================================ */
@media(max-width:768px) {
    .hero h1 { font-size: 2.5rem; }
    section { padding: 80px 8%; }
}
</style>
</head>

<body>

<!-- CI/CD ANIMATED BACKGROUND -->
<div class="pipeline-bg">
    <div class="pipeline-track"></div>
    <div class="stage git"></div>
    <div class="stage build"></div>
    <div class="stage test"></div>
    <div class="stage deploy"></div>
</div>

<!-- HERO -->
<header>
    <div class="hero">
        <h1>DevOps Engineer</h1>
        <h2>CI/CD | Cloud | Automation | Kubernetes</h2>
        <p>
            I design, build, and operate scalable CI/CD pipelines and cloud-native
            infrastructure with a focus on automation, security, and reliability.
        </p>
    </div>
</header>

<!-- SKILLS -->
<section>
    <h2 class="section-title">DevOps Skills</h2>
    <div class="skills">
        <div class="skill-card"><h3>AWS / Cloud</h3><p>EC2, VPC, IAM, S3</p></div>
        <div class="skill-card"><h3>CI/CD</h3><p>Jenkins, GitHub Actions</p></div>
        <div class="skill-card"><h3>Containers</h3><p>Docker, Kubernetes</p></div>
        <div class="skill-card"><h3>IaC</h3><p>Terraform, Ansible</p></div>
        <div class="skill-card"><h3>Monitoring</h3><p>Prometheus, Grafana</p></div>
        <div class="skill-card"><h3>Security</h3><p>DevSecOps, SonarQube</p></div>
    </div>
</section>

<!-- CI/CD FLOW -->
<section>
    <h2 class="section-title">CI/CD Pipeline Flow</h2>
    <div class="flow">
        <div class="flow-step"><span>1</span>Code Commit</div>
        <div class="flow-step"><span>2</span>Build & Package</div>
        <div class="flow-step"><span>3</span>Test & Scan</div>
        <div class="flow-step"><span>4</span>Docker Image</div>
        <div class="flow-step"><span>5</span>Kubernetes Deploy</div>
    </div>
</section>

<!-- FOOTER -->
<footer>
    © 2025 DevOps Engineer Portfolio | Built with CI/CD mindset 🚀
</footer>

</body>
</html>

