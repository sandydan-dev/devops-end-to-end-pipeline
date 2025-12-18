<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>CSS Solar System</title>
<style>
* { margin:0; padding:0; box-sizing:border-box; }
body {
    height:100vh;
    background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
    overflow:hidden;
    display:flex;
    justify-content:center;
    align-items:center;
}

/* Stars */
.star {
    position:absolute;
    width:2px;
    height:2px;
    background:#fff;
    border-radius:50%;
    animation: twinkle 2s infinite alternate;
}
@keyframes twinkle { from { opacity:0.2; } to { opacity:1; } }

/* Solar system container */
.solar-system {
    position: relative;
    width: 800px;
    height: 800px;
}

/* Sun */
.sun {
    width: 100px;
    height: 100px;
    background: radial-gradient(circle at center, #ffdd00, #ffaa00);
    border-radius: 50%;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    box-shadow: 0 0 50px #ffaa00, 0 0 100px #ffdd00;
}

/* Planet orbits */
.orbit {
    position: absolute;
    top: 50%;
    left: 50%;
    border: 1px dashed rgba(255,255,255,0.2);
    border-radius: 50%;
    transform: translate(-50%, -50%);
}

/* Orbit animation */
.orbit .planet {
    position: absolute;
    top: 50%;
    left: 0;
    transform: translate(-50%, -50%);
    border-radius: 50%;
    background: radial-gradient(circle at center, #888, #444);
}

/* Animations for planets */
.planet1 { width:8px; height:8px; animation: orbit1 5s linear infinite; }
.planet2 { width:14px; height:14px; animation: orbit2 8s linear infinite; }
.planet3 { width:12px; height:12px; animation: orbit3 11s linear infinite; }
.planet4 { width:20px; height:20px; animation: orbit4 15s linear infinite; }
.planet5 { width:30px; height:30px; animation: orbit5 20s linear infinite; }
.planet6 { width:25px; height:25px; animation: orbit6 25s linear infinite; }
.planet7 { width:18px; height:18px; animation: orbit7 30s linear infinite; }
.planet8 { width:16px; height:16px; animation: orbit8 35s linear infinite; }
.planet9 { width:10px; height:10px; animation: orbit9 40s linear infinite; }

/* Individual orbit radii */
.orbit1 { width: 120px; height: 120px; }
.orbit2 { width: 160px; height: 160px; }
.orbit3 { width: 200px; height: 200px; }
.orbit4 { width: 250px; height: 250px; }
.orbit5 { width: 320px; height: 320px; }
.orbit6 { width: 400px; height: 400px; }
.orbit7 { width: 480px; height: 480px; }
.orbit8 { width: 550px; height: 550px; }
.orbit9 { width: 620px; height: 620px; }

/* Orbit animations */
@keyframes orbit1 { 0% { transform: rotate(0deg) translateX(60px) rotate(0deg); } 100% { transform: rotate(360deg) translateX(60px) rotate(-360deg); } }
@keyframes orbit2 { 0% { transform: rotate(0deg) translateX(80px) rotate(0deg); } 100% { transform: rotate(360deg) translateX(80px) rotate(-360deg); } }
@keyframes orbit3 { 0% { transform: rotate(0deg) translateX(100px) rotate(0deg); } 100% { transform: rotate(360deg) translateX(100px) rotate(-360deg); } }
@keyframes orbit4 { 0% { transform: rotate(0deg) translateX(125px) rotate(0deg); } 100% { transform: rotate(360deg) translateX(125px) rotate(-360deg); } }
@keyframes orbit5 { 0% { transform: rotate(0deg) translateX(160px) rotate(0deg); } 100% { transform: rotate(360deg) translateX(160px) rotate(-360deg); } }
@keyframes orbit6 { 0% { transform: rotate(0deg) translateX(200px) rotate(0deg); } 100% { transform: rotate(360deg) translateX(200px) rotate(-360deg); } }
@keyframes orbit7 { 0% { transform: rotate(0deg) translateX(240px) rotate(0deg); } 100% { transform: rotate(360deg) translateX(240px) rotate(-360deg); } }
@keyframes orbit8 { 0% { transform: rotate(0deg) translateX(275px) rotate(0deg); } 100% { transform: rotate(360deg) translateX(275px) rotate(-360deg); } }
@keyframes orbit9 { 0% { transform: rotate(0deg) translateX(310px) rotate(0deg); } 100% { transform: rotate(360deg) translateX(310px) rotate(-360deg); } }

</style>
</head>
<body>

<div class="solar-system">

    <!-- Sun -->
    <div class="sun"></div>

    <!-- Planets -->
    <div class="orbit orbit1"><div class="planet planet1"></div></div>
    <div class="orbit orbit2"><div class="planet planet2"></div></div>
    <div class="orbit orbit3"><div class="planet planet3"></div></div>
    <div class="orbit orbit4"><div class="planet planet4"></div></div>
    <div class="orbit orbit5"><div class="planet planet5"></div></div>
    <div class="orbit orbit6"><div class="planet planet6"></div></div>
    <div class="orbit orbit7"><div class="planet planet7"></div></div>
    <div class="orbit orbit8"><div class="planet planet8"></div></div>
    <div class="orbit orbit9"><div class="planet planet9"></div></div>

    <!-- Stars -->
    <% for(int i=0;i<50;i++){ %>
        <div class="star" style="top:<%=Math.random()*800%>px; left:<%=Math.random()*800%>px;"></div>
    <% } %>

</div>

</body>
</html>

