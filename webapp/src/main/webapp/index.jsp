<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>DevOps Portfolio - Earth & DevOps Orbit</title>
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

    <!-- Three.js -->
    <script src="https://cdn.jsdelivr.net/npm/three@0.164.0/build/three.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/three@0.164.0/examples/js/controls/OrbitControls.js"></script>
    <script>
        const container = document.getElementById('canvas-container');

        // Scene, Camera, Renderer
        const scene = new THREE.Scene();
        const camera = new THREE.PerspectiveCamera(45, window.innerWidth/window.innerHeight, 0.1, 1000);
        camera.position.set(0, 0, 25);

        const renderer = new THREE.WebGLRenderer({ antialias: true, alpha: true });
        renderer.setSize(window.innerWidth, window.innerHeight);
        renderer.setPixelRatio(window.devicePixelRatio);
        container.appendChild(renderer.domElement);

        // Lights
        const ambientLight = new THREE.AmbientLight(0xffffff, 0.7);
        scene.add(ambientLight);

        const directionalLight = new THREE.DirectionalLight(0xffffff, 1);
        directionalLight.position.set(5, 3, 5);
        scene.add(directionalLight);

        // Texture Loader
        const loader = new THREE.TextureLoader();
        const earthTexture = loader.load('https://raw.githubusercontent.com/ajaybhatia3/earth-textures/main/earth_daymap.jpg');
        const earthNormalMap = loader.load('https://raw.githubusercontent.com/ajaybhatia3/earth-textures/main/earth_normal_map.png');
        const earthSpecularMap = loader.load('https://raw.githubusercontent.com/ajaybhatia3/earth-textures/main/earth_specular_map.png');

        // Earth
        const earthGeo = new THREE.SphereGeometry(5, 64, 64);
        const earthMat = new THREE.MeshPhongMaterial({
            map: earthTexture,
            normalMap: earthNormalMap,
            specularMap: earthSpecularMap,
            shininess: 10
        });
        const earth = new THREE.Mesh(earthGeo, earthMat);
        scene.add(earth);

        // Stars
        const starGeo = new THREE.BufferGeometry();
        const starMat = new THREE.PointsMaterial({ color: 0xffffff });
        const starVertices = [];
        for(let i = 0; i < 10000; i++){
            const x = (Math.random() - 0.5) * 2000;
            const y = (Math.random() - 0.5) * 2000;
            const z = (Math.random() - 0.5) * 2000;
            starVertices.push(x, y, z);
        }
        starGeo.setAttribute('position', new THREE.Float32BufferAttribute(starVertices, 3));
        const stars = new THREE.Points(starGeo, starMat);
        scene.add(stars);

        // DevOps tools orbiting Earth
        const tools = [
            { name: 'Docker', color: 0x2496ed, distance: 8, size: 0.6 },
            { name: 'Kubernetes', color: 0x326ce5, distance: 10, size: 0.8 },
            { name: 'Jenkins', color: 0xff0000, distance: 12, size: 0.5 },
            { name: 'Terraform', color: 0x623ce8, distance: 14, size: 0.7 },
            { name: 'GitHub', color: 0x181717, distance: 16, size: 0.6 }
        ];

        const orbitObjects = [];
        tools.forEach(tool => {
            const geo = new THREE.SphereGeometry(tool.size, 32, 32);
            const mat = new THREE.MeshBasicMaterial({ color: tool.color });
            const obj = new THREE.Mesh(geo, mat);

            // Orbit trail
            const trailGeo = new THREE.RingGeometry(tool.distance - 0.01, tool.distance + 0.01, 64);
            const trailMat = new THREE.MeshBasicMaterial({ color: 0xffffff, side: THREE.DoubleSide, transparent: true, opacity: 0.1 });
            const trail = new THREE.Mesh(trailGeo, trailMat);
            trail.rotation.x = Math.PI / 2;
            scene.add(trail);

            orbitObjects.push({ mesh: obj, distance: tool.distance, speed: 0.002 + Math.random()*0.002, angle: Math.random() * Math.PI*2 });
            scene.add(obj);
        });

        // Controls
        const controls = new THREE.OrbitControls(camera, renderer.domElement);
        controls.enableDamping = true;
        controls.dampingFactor = 0.05;

        // Animate
        function animate() {
            requestAnimationFrame(animate);
            earth.rotation.y += 0.0015;

            orbitObjects.forEach(obj => {
                obj.angle += obj.speed;
                obj.mesh.position.set(
                    Math.cos(obj.angle) * obj.distance,
                    0,
                    Math.sin(obj.angle) * obj.distance
                );
            });

            controls.update();
            renderer.render(scene, camera);
        }

        animate();

        // Resize
        window.addEventListener('resize', () => {
            camera.aspect = window.innerWidth / window.innerHeight;
            camera.updateProjectionMatrix();
            renderer.setSize(window.innerWidth, window.innerHeight);
        });
    </script>
</body>
</html>

