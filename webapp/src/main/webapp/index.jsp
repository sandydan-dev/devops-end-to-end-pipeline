<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>DevOps Portfolio - Custom Earth Animation</title>
    <style>
        html, body {
            margin: 0;
            padding: 0;
            overflow: hidden;
            height: 100%;
            background-color: #000;
            font-family: Arial, sans-serif;
        }
        #canvas-container {
            width: 100%;
            height: 100vh;
            position: relative;
        }
        #overlay-text {
            position: absolute;
            top: 20%;
            left: 10%;
            color: #fff;
            font-size: 2rem;
            z-index: 2;
        }
        a#resume {
            position: absolute;
            bottom: 10%;
            left: 10%;
            color: #00ffea;
            text-decoration: none;
            font-weight: bold;
            padding: 10px 20px;
            border: 2px solid #00ffea;
            border-radius: 5px;
            transition: 0.3s;
            z-index: 2;
        }
        a#resume:hover {
            background-color: #00ffea;
            color: #000;
        }
    </style>
</head>
<body>
<div id="canvas-container"></div>
<div id="overlay-text">
    <h1>Hello, I'm Sandy Dan</h1>
    <p>DevOps Engineer | Portfolio Branding</p>
</div>
<a id="resume" href="resume.pdf" download>Download Resume</a>

<script src="https://cdn.jsdelivr.net/npm/three@0.164.0/build/three.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/three@0.164.0/examples/js/controls/OrbitControls.js"></script>
<script>
    const container = document.getElementById('canvas-container');

    // Scene, Camera, Renderer
    const scene = new THREE.Scene();
    const camera = new THREE.PerspectiveCamera(45, window.innerWidth/window.innerHeight, 0.1, 1000);
    camera.position.set(0, 10, 30);

    const renderer = new THREE.WebGLRenderer({ antialias: true, alpha: true });
    renderer.setSize(window.innerWidth, window.innerHeight);
    renderer.setPixelRatio(window.devicePixelRatio);
    container.appendChild(renderer.domElement);

    // Lights
    const ambientLight = new THREE.AmbientLight(0xffffff, 0.5);
    scene.add(ambientLight);

    const pointLight = new THREE.PointLight(0xffffff, 1);
    pointLight.position.set(10, 20, 20);
    scene.add(pointLight);

    // Glowing Earth (simple colored sphere + emissive)
    const earthGeo = new THREE.SphereGeometry(5, 64, 64);
    const earthMat = new THREE.MeshPhongMaterial({
        color: 0x2266ff,
        shininess: 30,
        emissive: 0x112244,
        emissiveIntensity: 0.5
    });
    const earth = new THREE.Mesh(earthGeo, earthMat);
    scene.add(earth);

    // Stars
    const starGeo = new THREE.BufferGeometry();
    const starVertices = [];
    for(let i=0;i<2000;i++){
        starVertices.push((Math.random()-0.5)*2000);
        starVertices.push((Math.random()-0.5)*2000);
        starVertices.push((Math.random()-0.5)*2000);
    }
    starGeo.setAttribute('position', new THREE.Float32BufferAttribute(starVertices,3));
    const stars = new THREE.Points(starGeo,new THREE.PointsMaterial({color:0xffffff}));
    scene.add(stars);

    // Orbiting DevOps text
    const loader = new THREE.FontLoader();
    const orbitTexts = [];
    const tools = ['Docker','Kubernetes','Jenkins','Terraform','GitHub'];
    
    loader.load('https://threejs.org/examples/fonts/helvetiker_regular.typeface.json', function(font){
        tools.forEach((tool, index) => {
            const textGeo = new THREE.TextGeometry(tool, {
                font: font,
                size: 0.8,
                height: 0.1
            });
            const textMat = new THREE.MeshBasicMaterial({ color: Math.random()*0xffffff });
            const mesh = new THREE.Mesh(textGeo, textMat);

            // random orbit distance
            const distance = 8 + index*2;
            const angle = Math.random()*Math.PI*2;
            orbitTexts.push({ mesh, distance, angle, speed: 0.002+Math.random()*0.003 });
            scene.add(mesh);
        });
    });

    // Orbit Controls
    const controls = new THREE.OrbitControls(camera, renderer.domElement);
    controls.enableDamping = true;
    controls.dampingFactor = 0.05;

    // Animation loop
    function animate(){
        requestAnimationFrame(animate);
        earth.rotation.y += 0.002;

        orbitTexts.forEach(obj=>{
            obj.angle += obj.speed;
            obj.mesh.position.set(
                Math.cos(obj.angle)*obj.distance,
                Math.sin(obj.angle*0.5)*2,
                Math.sin(obj.angle)*obj.distance
            );
        });

        controls.update();
        renderer.render(scene,camera);
    }

    animate();

    // Resize
    window.addEventListener('resize', ()=>{
        camera.aspect = window.innerWidth/window.innerHeight;
        camera.updateProjectionMatrix();
        renderer.setSize(window.innerWidth, window.innerHeight);
    });
</script>
</body>
</html>

