<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>For Yashmin ❤️</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Dancing+Script:wght@600&display=swap');

        body {
            font-family: 'Dancing Script', cursive;
            background: linear-gradient(to right, #ff758c, #ff7eb3);
            text-align: center;
            color: white;
            padding: 30px;
            overflow: hidden;
            animation: heartbeat 3s infinite alternate;
        }

        @keyframes heartbeat {
            0% { transform: scale(1); }
            100% { transform: scale(1.02); }
        }

        .container {
            max-width: 500px;
            margin: auto;
            background: rgba(255, 255, 255, 0.2);
            padding: 20px;
            border-radius: 15px;
            box-shadow: 0px 0px 10px rgba(255, 255, 255, 0.3);
            position: relative;
            z-index: 2;
        }

        h1 {
            font-size: 28px;
        }

        p {
            font-size: 18px;
            line-height: 1.6;
        }

        .shayari {
            font-style: italic;
            font-size: 20px;
            margin: 20px 0;
        }

        .buttons {
            margin-top: 20px;
        }

        button {
            padding: 10px 20px;
            border: none;
            font-size: 18px;
            border-radius: 5px;
            margin: 10px;
            cursor: pointer;
            transition: 0.3s;
        }

        .yes {
            background-color: #4CAF50;
            color: white;
        }

        .no {
            background-color: #f44336;
            color: white;
        }

        button:hover {
            transform: scale(1.1);
        }

        .hidden-message {
            display: none;
            margin-top: 20px;
            font-size: 22px;
            font-weight: bold;
        }

        .falling-rose {
            position: absolute;
            width: 30px;
            height: 30px;
            top: -50px;
            animation: fall linear infinite;
        }

        @keyframes fall {
            0% { transform: translateY(-50px); }
            100% { transform: translateY(100vh); }
        }

        .heart {
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            font-size: 50px;
            display: none;
            animation: pulse 1s infinite alternate;
        }

        @keyframes pulse {
            0% { transform: scale(1); }
            100% { transform: scale(1.5); }
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Hy Yashmin...</h1>
        <p>Main tumse kuch kehna chahta hoon, par shayad ye kehna zaroori nahi hai, kyunki shabdon ke bina bhi kuch baatein samjhi ja sakti hain.  
           Hamari <b>playlist</b>, hamari <b>cute partner wali DP</b>, aur wo <b>chhoti-chhoti baatein</b>—shayad ye sab mere liye kuch zyada hi khaas ho gaye hain.  
           Ho sakta hai ki ye sirf meri overthinking ho, lekin kabhi-kabhi mujhe lagta hai ki in sab cheezon mein sirf ek mazak nahi tha, kuch aur bhi tha.  
        </p>

        <p class="shayari">
            "Main tumse pyaar karta hoon,<br>
            isliye nahi ki tumhari aankhein kitni khoobsurat hain,<br>
            balki isliye ki jab tum mujhse baat karti ho,<br>
            to mujhe meri aankhon se zyada tumhari aankhon par yakeen hota hai."
        </p>

        <p>Bas, itna hi kehna tha.  
           Agar tumhe ye accept hai, to "YES" pe click karo, aur agar nahi, to "NO".</p>

        <div class="buttons">
            <button class="yes" onclick="showLove()">YES ❤️</button>
            <button class="no" onclick="showSad()">NO 😢</button>
        </div>

        <p class="hidden-message" id="love-message">Mujhe pata tha! ❤️</p>
    </div>

    <div class="heart" id="heart">❤️</div>

    <script>
        function showLove() {
            document.getElementById("love-message").style.display = "block";
            document.getElementById("heart").style.display = "block";
            setTimeout(() => { document.getElementById("heart").style.display = "none"; }, 3000);
            alert("Yay! Tumne YES kaha! ❤️");
        }

        function showSad() {
            let confirmNo = confirm("Are you sure? 😢");
            if (!confirmNo) {
                alert("Pata tha, tum mazak kar rahi thi! 😍");
            }
        }

        function createRose() {
            let rose = document.createElement("img");
            rose.src = "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Rose_icon.svg/512px-Rose_icon.svg.png"; 
            rose.classList.add("falling-rose");
            rose.style.left = Math.random() * 100 + "vw";
            rose.style.animationDuration = Math.random() * 3 + 2 + "s"; 
            document.body.appendChild(rose);
            setTimeout(() => { rose.remove(); }, 5000);
        }

        setInterval(createRose, 500);
    </script>

</body>
</html>