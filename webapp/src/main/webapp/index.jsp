<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>DevOps Portfolio</title>
<style>
* { margin:0; padding:0; box-sizing:border-box; }
body { font-family: 'Poppins', sans-serif; height:100vh; background: linear-gradient(135deg, #0f2027, #203a43, #2c5364); color:#fff; overflow:hidden; }

/* NAVBAR */
.navbar { display:flex; justify-content:space-between; padding:20px 60px; position:relative; z-index:10; }
.logo { font-size:24px; font-weight:700; letter-spacing:1px; }
.nav-links a { margin-left:30px; text-decoration:none; color:#fff; font-weight:400; transition:0.3s; }
.nav-links a:hover { color:#00eaff; }

/* HERO */
.hero { display:flex; flex-direction:row; height:calc(100vh - 80px); align-items:center; justify-content:space-between; padding:0 5%; position:relative; }

.hero-text { max-width:550px; animation: slideIn 1.2s ease-out; }
.hero-text h1 { font-size:48px; font-weight:700; }
.hero-text h1 span { color:#00eaff; }
.hero-text p { margin-top:20px; font-size:18px; line-height:1.6; opacity:0.9; }
.hero-text .btn-resume { margin-top:30px; padding:14px 32px; border:none; background:#00eaff; color:#000; font-size:16px; font-weight:600; border-radius:30px; cursor:pointer; transition:0.3s; text-decoration:none; display:inline-block; }
.hero-text .btn-resume:hover { transform: scale(1.1); }

/* HERO ANIMATION CONTAINER */
.animation-container {
    position: relative;
    width: 500px;
    height: 500px;
}

/* Earth */
.earth {
    width: 150px;
    height: 150px;
    background: radial-gradient(circle at 30% 30%, #2266ff, #112244);
    border-radius: 50%;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    animation: spin 10s linear infinite;
    box-shadow: 0 0 30px rgba(0, 170, 255, 0.5);
}

/* Orbiting tools */
.orbit {
    position: absolute;
    top: 50%;
    left: 50%;
    transform-origin: center center;
    animation: rotateOrbit linear infinite;
}

.orbit span {
    display: block;
    position: absolute;
    top: -10px;
    left: 100px; /* distance from center */
    font-weight: 600;
    color: #fff;
    transition: 0.3s;
}

.orbit span:hover {
    color: #ff00ff;
    transform: scale(1.2);
}

/* Stars */
.star {
    position: absolute;
    width: 2px;
    height: 2px;
    background: #fff;
    border-radius: 50%;
    animation: twinkle 2s infinite alternate;
}

@keyframes spin {
    from { transform: translate(-50%, -50%) rotate(0deg); }
    to { transform: translate(-50%, -50%) rotate(360deg); }
}

@keyframes rotateOrbit {
    from { transform: rotate(0deg); }
    to { transform: rotate(360deg); }
}

@keyframes twinkle {
    from { opacity: 0.2; }
    to { opacity: 1; }
}

@keyframes slideIn {
    from { opacity:0; transform:translateX(-80px); }
    to { opacity:1; transform:translateX(0); }
}

/* FOOTER */
.footer { position:absolute; bottom:20px; width:100%; text-align:center; font-size:14px; opacity:0.7; }
</style>
</head>

<body>
<div class="navbar">
    <div class="logo">DevOpsHub</div>
    <div class="nav-links">
        <a href="#">Home</a>
        <a href="#">Projects</a>
        <a href="#">CI/CD</a>
        <a href="#">Contact</a>
    </div>
</div>

<div class="hero">
    <div class="hero-text">
        <h1>Build. Deploy. <i>Automate.</i></h1>
        <p>Modern DevOps platform integrating CI/CD pipelines, cloud automation, container orchestration, and monitoring — all in one place.</p>
        <a href="resume.pdf" download class="btn-resume">Download Resume</a>
    </div>

    <div class="animation-container">
        <!-- Stars -->
        <%-- Generate stars in JSP --%>
        <% for(int i=0;i<50;i++){ %>
            <div class="star" style="top:<%=Math.random()*500%>px; left:<%=Math.random()*500%>px;"></div>
        <% } %>

        <!-- Earth -->
        <div class="earth"></div>

        <!-- Orbiting tools -->
        <div class="orbit" style="animation-duration:12s;"><span>Docker</span></div>
        <div class="orbit" style="animation-duration:16s;"><span>Kubernetes</span></div>
        <div class="orbit" style="animation-duration:20s;"><span>Jenkins</span></div>
        <div class="orbit" style="animation-duration:14s;"><span>Terraform</span></div>
        <div class="orbit" style="animation-duration:18s;"><span>GitHub</span></div>
    </div>
</div>

<div class="footer">© 2025 DevOpsHub | Powered by JSP & Tomcat</div>

</body>
</html>

