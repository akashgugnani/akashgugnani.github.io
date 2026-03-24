<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gugnani | Physics & Design</title>
    <link href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@400;600;700&display=swap" rel="stylesheet">
    <style>
        :root {
            --bg-color: #f4f4f0;
            --text-dark: #111;
            --card-radius: 32px;
            --border-heavy: 3px solid #111;
        }

        body {
            font-family: 'Space Grotesk', sans-serif;
            background-color: var(--bg-color);
            color: var(--text-dark);
            margin: 0;
            padding: 5% 10%;
            overflow-x: hidden;
        }

        /* The "Loud" Header */
        .hero {
            margin-bottom: 80px;
            max-width: 1000px;
        }

        .role-tag {
            display: inline-block;
            font-size: 1.2rem;
            font-weight: 700;
            text-transform: uppercase;
            border: var(--border-heavy);
            border-radius: 50px;
            padding: 8px 24px;
            margin-bottom: 30px;
            background-color: #ffd700; /* Pop of color */
        }

        h1 {
            font-size: clamp(3rem, 6vw, 5.5rem);
            line-height: 1.05;
            letter-spacing: -0.04em;
            margin: 0 0 30px 0;
        }

        .sub-text {
            font-size: 1.5rem;
            line-height: 1.4;
            max-width: 600px;
            font-weight: 600;
        }

        /* The Staggered Grid */
        .grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 40px;
            align-items: start;
        }

        /* Push every even card down slightly for a staggered look */
        @media (min-width: 768px) {
            .grid article:nth-child(even) {
                margin-top: 60px;
            }
        }

        /* Playful Project Cards */
        .card {
            background: #fff;
            border: var(--border-heavy);
            border-radius: var(--card-radius);
            padding: 24px;
            transition: all 0.3s cubic-bezier(0.25, 0.8, 0.25, 1);
            position: relative;
            box-shadow: 8px 8px 0px #111; /* Brutalist shadow */
        }

        .card:hover {
            transform: translate(-4px, -4px);
            box-shadow: 12px 12px 0px #111;
        }

        .card-img-placeholder {
            width: 100%;
            height: 250px;
            border-radius: 20px;
            border: 2px solid #111;
            margin-bottom: 20px;
            object-fit: cover;
        }

        /* Custom colors for different cards */
        .c-blue { background-color: #a7c7e7; }
        .c-green { background-color: #b5e48c; }
        .c-pink { background-color: #ffb5a7; }
        .c-purple { background-color: #cdb4db; }

        .card h3 {
            font-size: 1.8rem;
            margin: 0 0 10px 0;
            line-height: 1.1;
        }

        .card p {
            font-size: 1.1rem;
            margin-bottom: 30px;
        }

        /* Pill-shaped Tags */
        .tags {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
        }

        .tag {
            font-size: 0.85rem;
            font-weight: 700;
            border: 2px solid #111;
            border-radius: 50px;
            padding: 6px 16px;
            background: #fff;
        }
    </style>
</head>
<body>

    <section class="hero">
        <div class="role-tag">Physicist & Writer</div>
        <h1>Hi, 👋 I am Gugnani & <br> welcome to the inside of my brain!</h1>
        <div class="sub-text">
            It is analytical, curious and busy. Take a peek at what I'm working on when I am not distracted by my Persian cat. 🐈
        </div>
    </section>

    <section class="grid">
        
        <article class="card">
            <div class="card-img-placeholder c-blue"></div>
            <h3>Boron-Nitride Encapsulated Graphene</h3>
            <p>Recent publication in Physical Review Letters detailing dynamically tunable hydrodynamic transport and the physics of fluidic electron flow.</p>
            <div class="tags">
                <span class="tag">PRL Paper</span>
                <span class="tag">2D Materials</span>
                <span class="tag">Research</span>
            </div>
        </article>

        <article class="card">
            <div class="card-img-placeholder c-green"></div>
            <h3>Bambootronics</h3>
            <p>Interdisciplinary research and upcoming presentation for the Bamboo Beyond Borders 2026 symposium.</p>
            <div class="tags">
                <span class="tag">Symposium</span>
                <span class="tag">Experimental Physics</span>
            </div>
        </article>

        <article class="card">
            <div class="card-img-placeholder c-pink"></div>
            <h3>Science Communication</h3>
            <p>Translating the complexities of gas flow, Knudsen experiments, and condensed matter into engaging technical writing.</p>
            <div class="tags">
                <span class="tag">Content Strategy</span>
                <span class="tag">Technical Writing</span>
            </div>
        </article>

        <article class="card">
            <div class="card-img-placeholder c-purple"></div>
            <h3>RPGR2025 Toyama</h3>
            <p>Preparing to engage with the global condensed matter community on the latest advancements in graphene research in Japan.</p>
            <div class="tags">
                <span class="tag">Conference</span>
                <span class="tag">Networking</span>
            </div>
        </article>

    </section>

</body>
</html>
