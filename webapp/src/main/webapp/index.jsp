<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Sandy Dan Portfolio</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
/* ================== GLOBAL ================== */
* { margin:0; padding:0; box-sizing:border-box; }
body {
    font-family: 'Poppins', sans-serif;
    color: #fff;
    background: #0f2027;
    overflow-x: hidden;
    scroll-behavior: smooth;
}

/* ================== PARTICLE BACKGROUND ================== */
.background {
    position: fixed;
    top:0; left:0;
    width: 100%; height: 100%;
    z-index: -1;
    overflow: hidden;
}
.particle {
    position: absolute;
    border-radius: 50%;
    opacity: 0.2;
    background: linear-gradient(45deg, #00eaff, #ff00ff);
    animation: float 30s linear infinite;
}
@keyframes float {
    0% { transform: translateY(0) translateX(0) scale(1); }
    50% { transform: translateY(-1000px) translateX(500px) scale(1.3); }
    100% { transform: translateY(0) translateX(0) scale(1); }
}

/* ================== NAVBAR ================== */
.navbar {
    display:flex;
    justify-content: space-between;
    padding: 20px 50px;
    position: fixed;
    width: 100%;
    z-index: 10;
}
.logo { font-size: 24px; font-weight: 700; letter-spacing:1px; }
.nav-links a {
    margin-left: 30px;
    text-decoration: none;
    color: #fff;
    font-weight: 400;
    transition:0.3s;
    position: relative;
}
.nav-links a::after {
    content:"";
    position:absolute;
    width:0;
    height:2px;
    left:0; bottom:-4px;
    background:#00eaff;
    transition:0.3s;
}
.nav-links a:hover::after { width:100%; }

/* ================== HERO ================== */
.hero {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    height: 100vh;
    text-align: center;
    padding: 0 20px;
    overflow: hidden;
}
.hero h1 {
    font-size: 56px;
    font-weight: 700;
    margin-bottom: 20px;
    opacity:0;
    transform: translateY(-30px);
    animation: fadeSlide 1s forwards 0.5s;
}
.hero h1 span { color: #00eaff; }
.hero p {
    font-size: 20px;
    opacity:0;
    transform: translateY(-20px);
    max-width:600px;
    margin-bottom: 30px;
    animation: fadeSlide 1s forwards 1s;
}
.btn-resume {
    padding:14px 32px;
    border:none;
    background:#00eaff;
    color:#000;
    font-size:16px;
    font-weight:600;
    border-radius:30px;
    cursor:pointer;
    text-decoration:none;
    transition:0.3s, box-shadow 0.3s;
    opacity:0;
    transform: translateY(-10px);
    animation: fadeSlide 1s forwards 1.5s;
}
.btn-resume:hover { 
    transform: scale(1.1); 
    box-shadow: 0 0 20px #00eaff, 0 0 40px #ff00ff;
}

/* ================== SECTIONS ================== */
.section {
    padding:100px 20px;
    text-align: center;
    opacity:0;
    transform: translateY(50px);
    transition: all 1s ease-out;
}
.section.visible {
    opacity:1;
    transform: translateY(0);
}
.section h2 {
    font-size:36px;
    margin-bottom:40px;
}
.section p {
    max-width:700px;
    margin:0 auto;
    font-size:18px;
    opacity:0.85;
    line-height:1.6;
}

/* ================== FOOTER ================== */
.footer {
    text-align:center;
    padding:20px;
    opacity:0.6;
}

/* ================== ANIMATIONS ================== */
@keyframes fadeSlide {
    to { opacity:1; transform: translateY(0); }
}

/* ================== RESPONSIVE ================== */
@media(max-width:768px){
    .hero h1 { font-size:40px; }
    .hero p { font-size:16px; }
}
</style>
</head>
<body>

<!-- Particle Background -->
<div class="background">
    <% for(int i=0;i<30;i++){ %>
        <div class="particle" style="width:<%=5+Math.random()*15%>px; height:<%=5+Math.random()*15%>px; top:<%=Math.random()*100%>%; left:<%=Math.random()*100%>%; animation-duration:<%=20+Math.random()*20%>s;"></div>
    <% } %>
</div>

<!-- NAVBAR -->
<div class="navbar">
    <div class="logo">Sandy Dan</div>
    <div class="nav-links">
        <a href="#hero">Home</a>
        <a href="#about">About</a>
        <a href="#projects">Projects</a>
        <a href="#contact">Contact</a>
    </div>
</div>

<!-- HERO -->
<div id="hero" class="hero">
    <h1>Hello, I'm <span>Sandy Dan</span></h1>
    <p>I am a DevOps & Cloud enthusiast building scalable, automated, and reliable infrastructure with CI/CD, Docker, Kubernetes, and AWS.</p>
    <a href="resume.pdf" download class="btn-resume">Download Resume</a>
</div>

<!-- ABOUT -->
<div id="about" class="section">
    <h2>About Me</h2>
    <p>I specialize in cloud automation, container orchestration, and CI/CD pipelines. My goal is to make infrastructure reliable, secure, and scalable, helping businesses accelerate software delivery.</p>
</div>

<!-- PROJECTS -->
<div id="projects" class="section">
    <h2>Projects</h2>
    <p>Here are some of my recent projects in DevOps and Cloud Automation including CI/CD pipelines, Kubernetes clusters, Docker deployments, and Infrastructure as Code with Terraform.</p>
</div>

<!-- CONTACT -->
<div id="contact" class="section">
    <h2>Contact</h2>
    <p>Email: sandy@example.com | Phone: +91 9876543210</p>
</div>

<!-- FOOTER -->
<div class="footer">
    © 2025 Sandy Dan | Designed with JSP & CSS
</div>

<script>
// Scroll-triggered fade-in sections
const sections = document.querySelectorAll('.section');
function revealSections(){
    const triggerBottom = window.innerHeight * 0.85;
    sections.forEach(section => {
        const top = section.getBoundingClientRect().top;
        if(top < triggerBottom){
            section.classList.add('visible');
        }
    });
}
window.addEventListener('scroll', revealSections);
window.addEventListener('load', revealSections);
</script>

</body>
</html>

