<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>NexusShop — The Catalog</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,400;9..144,500;9..144,600;9..144,700&family=Inter:wght@400;500;600&family=IBM+Plex+Mono:wght@400;500;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="" crossorigin="anonymous">

    <style>
        :root {
            --ink: #1c2a22;
            --ink-soft: #3d4a41;
            --paper: #f2ede1;
            --paper-2: #e7dfcd;
            --paper-3: #ddd3ba;
            --gold: #c98a2b;
            --gold-deep: #a06b1c;
            --brick: #a13d2b;
            --line: rgba(28, 42, 34, 0.16);
            --line-strong: rgba(28, 42, 34, 0.32);
            --radius: 3px;
            --container: 1180px;
        }

        * { box-sizing: border-box }

        html, body { height: 100% }

        body {
            margin: 0;
            font-family: 'Inter', system-ui, -apple-system, 'Segoe UI', Roboto, Arial;
            color: var(--ink);
            background: var(--paper);
            background-image:
                repeating-linear-gradient(0deg, transparent, transparent 39px, rgba(28,42,34,0.025) 40px);
            line-height: 1.5;
            -webkit-font-smoothing: antialiased;
        }

        a { color: inherit; text-decoration: none }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 24px;
        }

        .mono {
            font-family: 'IBM Plex Mono', monospace;
            letter-spacing: 0.02em;
        }

        .eyebrow {
            font-family: 'IBM Plex Mono', monospace;
            font-size: 11px;
            letter-spacing: 0.14em;
            text-transform: uppercase;
            color: var(--ink-soft);
        }

        h1, h2, h3, .display {
            font-family: 'Fraunces', serif;
            font-weight: 600;
            color: var(--ink);
            letter-spacing: -0.01em;
            margin: 0;
        }

        /* Header / Masthead */
        header {
            position: sticky;
            top: 0;
            z-index: 40;
            background: var(--paper);
            border-bottom: 2px solid var(--ink);
        }

        .masthead-strip {
            border-bottom: 1px solid var(--line);
            padding: 6px 0;
        }
        .masthead-strip .container {
            display: flex;
            justify-content: space-between;
            font-size: 11px;
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
            padding: 16px 0;
        }

        .brand {
            display: flex;
            align-items: baseline;
            gap: 10px;
        }
        .brand .display {
            font-size: 26px;
        }
        .brand .accent { color: var(--brick) }

        nav.main-nav ul {
            display: flex;
            gap: 4px;
            list-style: none;
            margin: 0;
            padding: 0;
            align-items: center;
        }

        nav.main-nav li a {
            display: flex;
            gap: 6px;
            align-items: center;
            padding: 8px 12px;
            font-family: 'IBM Plex Mono', monospace;
            font-size: 12px;
            letter-spacing: 0.06em;
            text-transform: uppercase;
            color: var(--ink);
            border-bottom: 2px solid transparent;
        }

        nav.main-nav li a:hover { border-bottom-color: var(--gold) }

        .search {
            display: flex;
            align-items: center;
            gap: 8px;
            background: var(--paper-2);
            border: 1px solid var(--line-strong);
            padding: 8px 12px;
            border-radius: var(--radius);
            min-width: 230px;
        }

        .search input {
            border: 0;
            background: transparent;
            outline: none;
            width: 100%;
            font-size: 13px;
            font-family: 'Inter', sans-serif;
            color: var(--ink);
        }

        .icon-btn {
            background: transparent;
            border: 0;
            cursor: pointer;
            color: var(--ink);
            font-size: 15px;
        }

        .header-actions { display: flex; align-items: center; gap: 12px; }

        .cart {
            position: relative;
            display: inline-flex;
            align-items: center;
            padding: 6px;
        }

        .cart-count {
            position: absolute;
            top: -4px;
            right: -6px;
            background: var(--brick);
            color: var(--paper);
            font-family: 'IBM Plex Mono', monospace;
            font-size: 10px;
            font-weight: 600;
            width: 16px;
            height: 16px;
            border-radius: 50%;
            display: inline-grid;
            place-items: center;
        }

        .mobile-toggle {
            display: none;
            border: 0;
            background: transparent;
            font-size: 20px;
            cursor: pointer;
        }

        /* Hero */
        .hero {
            padding: 64px 0 56px;
            border-bottom: 1px solid var(--line);
        }
        .hero .container {
            display: grid;
            grid-template-columns: 1.1fr 0.9fr;
            gap: 40px;
            align-items: center;
        }
        .hero h1 {
            font-size: 52px;
            line-height: 1.04;
        }
        .hero h1 em {
            font-style: italic;
            color: var(--brick);
        }
        .hero p {
            margin: 20px 0 26px;
            max-width: 460px;
            color: var(--ink-soft);
            font-size: 16px;
        }
        .hero-figure {
            position: relative;
            border: 1px solid var(--line-strong);
            padding: 14px;
        }
        .hero-figure img {
            width: 100%;
            height: 360px;
            object-fit: cover;
            display: block;
            filter: saturate(0.92) contrast(1.02);
        }
        .hero-figure .cap {
            display: flex;
            justify-content: space-between;
            font-size: 11px;
            margin-top: 10px;
            color: var(--ink-soft);
        }

        .btn {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            padding: 12px 22px;
            font-family: 'IBM Plex Mono', monospace;
            font-size: 12px;
            letter-spacing: 0.08em;
            text-transform: uppercase;
            cursor: pointer;
            border: 1px solid var(--ink);
            border-radius: var(--radius);
            transition: transform .15s ease, background .15s ease, color .15s ease;
        }

        .btn-primary {
            background: var(--ink);
            color: var(--paper);
        }
        .btn-primary:hover { background: var(--brick); border-color: var(--brick); }

        .btn-ghost {
            background: transparent;
            color: var(--ink);
        }
        .btn-ghost:hover { background: var(--paper-2); }

        /* Sections */
        .section { padding: 56px 0; }
        .section-head {
            display: flex;
            justify-content: space-between;
            align-items: flex-end;
            border-bottom: 2px solid var(--ink);
            padding-bottom: 14px;
            margin-bottom: 30px;
        }
        .section-head h2 { font-size: 30px; }
        .section-head .eyebrow { margin-bottom: 6px; display: block; }

        .grid { display: grid; gap: 22px; }

        /* Categories — indexed list */
        .categories { grid-template-columns: repeat(3, 1fr); }

        .cat-card {
            display: flex;
            align-items: center;
            gap: 16px;
            background: transparent;
            border: 1px solid var(--line-strong);
            border-radius: var(--radius);
            padding: 18px 18px;
            cursor: pointer;
            transition: background .15s ease, border-color .15s ease;
        }
        .cat-card:hover { background: var(--paper-2); border-color: var(--ink); }

        .cat-card .num {
            font-family: 'IBM Plex Mono', monospace;
            font-size: 13px;
            color: var(--gold-deep);
            min-width: 26px;
        }
        .cat-card .icon {
            font-size: 18px;
            color: var(--ink);
            width: 28px;
            text-align: center;
        }
        .cat-card h4 {
            font-family: 'Inter', sans-serif;
            font-weight: 600;
            font-size: 15px;
            margin: 0;
        }
        .cat-card .sub {
            font-size: 12px;
            color: var(--ink-soft);
            margin-top: 2px;
        }

        /* Products — specimen cards */
        .products { grid-template-columns: repeat(4, 1fr); }

        .product {
            background: var(--paper);
            border: 1px solid var(--line-strong);
            border-radius: var(--radius);
            overflow: hidden;
            display: flex;
            flex-direction: column;
            position: relative;
        }

        .product .num-tag {
            position: absolute;
            top: 10px;
            left: 10px;
            background: var(--paper);
            border: 1px solid var(--ink);
            padding: 3px 7px;
            font-family: 'IBM Plex Mono', monospace;
            font-size: 11px;
            z-index: 2;
        }

        .product .badge-tag {
            position: absolute;
            top: 10px;
            right: 10px;
            padding: 4px 8px;
            font-family: 'IBM Plex Mono', monospace;
            font-size: 10px;
            letter-spacing: 0.04em;
            border-radius: var(--radius);
            z-index: 2;
            color: var(--paper);
        }

        .product img {
            width: 100%;
            height: 190px;
            object-fit: cover;
            display: block;
            border-bottom: 1px solid var(--line);
            filter: saturate(0.94);
        }

        .product-body {
            padding: 14px 16px 6px;
            display: flex;
            flex-direction: column;
            gap: 8px;
            flex: 1;
        }

        .product h5 {
            margin: 0;
            font-size: 15px;
            font-weight: 600;
            font-family: 'Inter', sans-serif;
        }

        .price-line {
            display: flex;
            align-items: baseline;
            gap: 6px;
        }
        .price-line .leader {
            flex: 1;
            border-bottom: 1px dotted var(--line-strong);
            margin-bottom: 4px;
        }

        .price {
            font-family: 'IBM Plex Mono', monospace;
            font-weight: 600;
            color: var(--ink);
            font-size: 15px;
            white-space: nowrap;
        }

        .old-price {
            color: var(--ink-soft);
            text-decoration: line-through;
            font-family: 'IBM Plex Mono', monospace;
            font-weight: 400;
            font-size: 12px;
        }

        .rating { color: var(--gold-deep); font-size: 12px; }
        .cat-label { font-size: 11px; color: var(--ink-soft); text-transform: uppercase; letter-spacing: 0.05em; }

        .product-footer {
            padding: 12px 16px 16px;
            display: flex;
            gap: 8px;
        }

        .add-btn {
            flex: 1;
            background: var(--ink);
            color: var(--paper);
            border: 1px solid var(--ink);
            padding: 10px;
            border-radius: var(--radius);
            cursor: pointer;
            font-family: 'IBM Plex Mono', monospace;
            font-size: 11px;
            letter-spacing: 0.06em;
            text-transform: uppercase;
        }
        .add-btn:hover { background: var(--brick); border-color: var(--brick); }

        .wish-btn {
            background: transparent;
            border: 1px solid var(--line-strong);
            padding: 8px 10px;
            border-radius: var(--radius);
            cursor: pointer;
        }
        .wish-btn:hover { border-color: var(--ink); }

        /* Deal — featured lot */
        .deal {
            display: flex;
            gap: 0;
            border: 1px solid var(--ink);
            border-radius: var(--radius);
            overflow: hidden;
            align-items: stretch;
        }

        .deal img {
            width: 46%;
            height: 340px;
            object-fit: cover;
            display: block;
            filter: saturate(0.9);
        }

        .deal .content {
            padding: 34px;
            flex: 1;
            position: relative;
            background: var(--paper-2);
        }

        .lot-stamp {
            position: absolute;
            top: 24px;
            right: 24px;
            border: 2px solid var(--brick);
            color: var(--brick);
            padding: 6px 10px;
            font-family: 'IBM Plex Mono', monospace;
            font-size: 11px;
            letter-spacing: 0.08em;
            transform: rotate(4deg);
        }

        .timer {
            display: flex;
            gap: 10px;
            margin: 22px 0;
        }

        .time-box {
            background: var(--ink);
            color: var(--paper);
            padding: 10px 14px;
            border-radius: var(--radius);
            min-width: 64px;
            text-align: center;
            font-family: 'IBM Plex Mono', monospace;
        }
        .time-box div:first-child { font-size: 18px; font-weight: 600; }
        .time-box div:last-child { font-size: 10px; opacity: .75; text-transform: uppercase; letter-spacing: 0.06em; }

        .deal .price { font-size: 26px; }

        /* Testimonials — reader letters */
        .testimonials {
            display: flex;
            gap: 18px;
            overflow-x: auto;
            padding: 6px 4px 16px;
        }

        .testimonial {
            min-width: 320px;
            background: var(--paper);
            border: 1px solid var(--line-strong);
            border-top: 3px solid var(--gold);
            padding: 20px;
            border-radius: var(--radius);
        }
        .testimonial p { font-family: 'Fraunces', serif; font-style: italic; font-size: 16px; line-height: 1.5; margin: 10px 0 16px; }

        /* Newsletter */
        .newsletter {
            background: var(--ink);
            color: var(--paper);
            border-radius: var(--radius);
            padding: 40px;
            text-align: center;
        }
        .newsletter h3 { color: var(--paper); font-size: 26px; }
        .newsletter p { color: var(--paper-3); margin: 10px 0 22px; }

        .newsletter input {
            padding: 12px 14px;
            border-radius: var(--radius);
            border: 1px solid rgba(242,237,225,0.3);
            background: rgba(242,237,225,0.06);
            color: var(--paper);
            width: 320px;
            max-width: 100%;
            margin-right: 8px;
            font-family: 'Inter', sans-serif;
        }
        .newsletter input::placeholder { color: var(--paper-3); }

        /* Footer */
        footer {
            margin-top: 24px;
            padding: 40px 0 30px;
            border-top: 2px solid var(--ink);
            color: var(--ink-soft);
            font-size: 13px;
        }

        .responsive-notice { display:none }

        /* Responsive */
        @media (max-width:1080px) {
            .categories { grid-template-columns: repeat(2, 1fr); }
            .products { grid-template-columns: repeat(3, 1fr); }
            .hero .container { grid-template-columns: 1fr; }
            .hero-figure { order: -1; }
        }

        @media (max-width:900px) {
            nav.main-nav { display: none; }
            .mobile-toggle { display: inline-block; }
            .products { grid-template-columns: repeat(2, 1fr); }
            .deal { flex-direction: column; }
            .deal img { width: 100%; height: 220px; }
        }

        @media (max-width:600px) {
            .hero h1 { font-size: 34px; }
            .products { grid-template-columns: 1fr; }
            .categories { grid-template-columns: 1fr; }
        }

        .muted { color: var(--ink-soft); }
        .text-center { text-align: center }

        @media (prefers-reduced-motion: reduce) {
            * { transition: none !important; }
        }

        :focus-visible {
            outline: 2px solid var(--brick);
            outline-offset: 2px;
        }
    </style>
</head>

<body>
    <header>
        <div class="masthead-strip">
            <div class="container mono muted">
                <span>VOL. IV — SUMMER EDITION</span>
                <span>FREE SHIPPING OVER $75</span>
            </div>
        </div>

        <div class="container header-inner" role="banner">
            <div style="display:flex;align-items:center;gap:16px;">
                <button class="mobile-toggle" id="mobileToggle" aria-label="Open menu"><em class="fas fa-bars"></em></button>
                <a class="brand" href="#">
                    <span class="display">Nexus<span class="accent">Shop</span></span>
                    <span class="eyebrow">The Catalog</span>
                </a>
            </div>

            <nav class="main-nav" id="mainNav" aria-label="Primary navigation">
                <ul>
                    <li><a href="#"><em class="fas fa-home"></em> Home</a></li>
                    <li class="has-dropdown" aria-haspopup="true">
                        <a href="#" id="catMenuBtn"><em class="fas fa-th-large"></em> Index</a>
                    </li>
                    <li><a href="#"><em class="fas fa-fire"></em> Trending</a></li>
                    <li><a href="#deals"><em class="fas fa-tag"></em> Lots</a></li>
                    <li><a href="#about"><em class="fas fa-info-circle"></em> About</a></li>
                </ul>
            </nav>

            <div style="display:flex;align-items:center;gap:14px;">
                <div class="search" role="search" aria-label="Product search">
                    <input type="search" id="searchInput" placeholder="Search the catalog..." aria-label="Search products" />
                    <button class="icon-btn" id="searchBtn" aria-label="Search"><em class="fas fa-search"></em></button>
                </div>

                <div class="header-actions" role="group" aria-label="Header actions">
                    <a class="icon-btn" title="Account" href="#"><em class="far fa-user"></em></a>
                    <a class="icon-btn" title="Wishlist" href="#"><em class="far fa-heart"></em></a>
                    <a class="cart" href="#" id="cartBtn" title="View cart" aria-label="Cart">
                        <em class="fas fa-shopping-cart"></em>
                        <span class="cart-count" id="cartCount">0</span>
                    </a>
                </div>
            </div>
        </div>

        <!-- Mobile menu (hidden on desktop) -->
        <div id="mobileMenu" style="display:none; background:var(--paper); border-top:1px solid var(--line);">
            <div class="container" style="padding:12px 0;">
                <nav aria-label="Mobile navigation">
                    <ul class="mono" style="list-style:none;padding:0;margin:0;display:flex;flex-direction:column;gap:10px;font-size:13px;text-transform:uppercase;letter-spacing:0.05em;">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">Index</a></li>
                        <li><a href="#">Trending</a></li>
                        <li><a href="#deals">Lots</a></li>
                        <li><a href="#about">About</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>

    <main>
        <!-- Hero -->
        <section class="hero">
            <div class="container">
                <div>
                    <span class="eyebrow">Entry No. 001 — Editor's Selection</span>
                    <h1 style="margin-top:10px">Goods worth <em>cataloguing.</em></h1>
                    <p>A curated index of technology, dress and accessory — each entry numbered, priced plainly, and shipped promptly. No noise, just the goods.</p>
                    <div>
                        <button class="btn btn-primary" id="shopNow">Browse the Index <em class="fas fa-arrow-right"></em></button>
                        <button class="btn btn-ghost" id="exploreDeals">This Week's Lots</button>
                    </div>
                </div>
                <div class="hero-figure">
                    <img src="https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1000&q=80" alt="Curated seasonal goods">
                    <div class="cap mono">
                        <span>FIG. 1 — SUMMER SELECT</span>
                        <span>SHOT ON FILM</span>
                    </div>
                </div>
            </div>
        </section>

        <!-- Categories -->
        <section class="section container" aria-labelledby="cat-title">
            <div class="section-head">
                <div>
                    <span class="eyebrow">Departments</span>
                    <h2 id="cat-title">Shop by Category</h2>
                </div>
                <p class="muted mono" style="font-size:12px;margin:0">06 ENTRIES</p>
            </div>

            <div class="grid categories" id="categoriesGrid" aria-live="polite"></div>
        </section>

        <!-- Products -->
        <section class="section container" aria-labelledby="prod-title">
            <div class="section-head">
                <div>
                    <span class="eyebrow">This Season</span>
                    <h2 id="prod-title">Trending Products</h2>
                </div>
                <p class="muted mono" style="font-size:12px;margin:0" id="prodCount">08 ENTRIES</p>
            </div>

            <div class="grid products" id="productsGrid" aria-live="polite"></div>
        </section>

        <!-- Deals -->
        <section id="deals" class="section container" aria-labelledby="deals-title">
            <div class="section-head">
                <div>
                    <span class="eyebrow">Limited Run</span>
                    <h2 id="deals-title">Featured Lot</h2>
                </div>
            </div>

            <div class="deal">
                <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80" alt="Deal product">
                <div class="content">
                    <div class="lot-stamp mono">CLOSING SOON</div>
                    <span class="eyebrow">Lot 014</span>
                    <h3 style="margin-top:8px;font-size:28px">MacBook Air M2</h3>
                    <p class="muted" style="max-width:340px">Thin, light and powerful — now with M2 performance.</p>

                    <div class="timer" aria-hidden="false">
                        <div class="time-box">
                            <div id="dealDays">0</div>
                            <div>Days</div>
                        </div>
                        <div class="time-box">
                            <div id="dealHours">00</div>
                            <div>Hrs</div>
                        </div>
                        <div class="time-box">
                            <div id="dealMinutes">00</div>
                            <div>Min</div>
                        </div>
                        <div class="time-box">
                            <div id="dealSeconds">00</div>
                            <div>Sec</div>
                        </div>
                    </div>

                    <div style="display:flex;align-items:center;gap:12px;">
                        <div class="price">$999 <span class="old-price" style="font-size:15px">$1,199</span></div>
                        <div class="mono" style="background:var(--brick);color:var(--paper);padding:6px 10px;border-radius:var(--radius);font-weight:600;font-size:12px">−17%</div>
                    </div>

                    <p style="margin-top:12px;font-size:13px;" class="mono muted">ONLY 12 UNITS REMAIN AT THIS PRICE</p>
                    <div style="margin-top:20px;">
                        <button class="btn btn-primary" id="buyDeal">Claim This Lot</button>
                    </div>
                </div>
            </div>
        </section>

        <!-- Testimonials -->
        <section class="section container" aria-labelledby="test-title">
            <div class="section-head">
                <div>
                    <span class="eyebrow">Correspondence</span>
                    <h2 id="test-title">Reader Letters</h2>
                </div>
            </div>

            <div class="testimonials" id="testimonials">
                <div class="testimonial">
                    <div class="rating">★★★★★</div>
                    <p>"Fast shipping and excellent customer support. The product exceeded my expectations."</p>
                    <div style="display:flex;align-items:center;gap:10px">
                        <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="avatar" style="width:38px;height:38px;border-radius:50%;object-fit:cover;filter:saturate(0.9)">
                        <div>
                            <div style="font-weight:600">Ava Martin</div>
                            <div class="muted mono" style="font-size:11px">VERIFIED BUYER</div>
                        </div>
                    </div>
                </div>

                <div class="testimonial">
                    <div class="rating">★★★★☆</div>
                    <p>"Great selection and the checkout was smooth. Will shop again."</p>
                    <div style="display:flex;align-items:center;gap:10px">
                        <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="avatar" style="width:38px;height:38px;border-radius:50%;object-fit:cover;filter:saturate(0.9)">
                        <div>
                            <div style="font-weight:600">Michael Lee</div>
                            <div class="muted mono" style="font-size:11px">FREQUENT BUYER</div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Newsletter -->
        <section class="section container" aria-labelledby="news-title">
            <div class="newsletter" id="newsletter">
                <span class="eyebrow" style="color:var(--paper-3)">Subscription</span>
                <h3 id="news-title" style="margin-top:8px">Join the Index</h3>
                <p>Get next season's catalog and early access to limited lots.</p>
                <form id="newsletterForm" style="display:flex;justify-content:center;gap:8px;flex-wrap:wrap;" onsubmit="return false;">
                    <input id="newsletterEmail" type="email" placeholder="Enter your email" aria-label="Email address" required>
                    <button class="btn btn-primary" id="subscribeBtn" style="border-color:var(--paper)">Subscribe</button>
                </form>
                <div id="newsletterMsg" class="mono" style="margin-top:12px;font-size:13px;display:none"></div>
            </div>
        </section>
    </main>

    <footer>
        <div class="container" style="display:flex;flex-wrap:wrap;gap:28px;align-items:flex-start;justify-content:space-between">
            <div style="max-width:360px">
                <div class="display" style="font-size:18px">NexusShop</div>
                <p class="muted" style="margin-top:8px">A modern e-commerce demo built with HTML, CSS &amp; JavaScript.</p>
                <div style="margin-top:14px;display:flex;gap:10px">
                    <a class="icon-btn" href="#" title="Facebook"><em class="fab fa-facebook"></em></a>
                    <a class="icon-btn" href="#" title="Twitter"><em class="fab fa-twitter"></em></a>
                    <a class="icon-btn" href="#" title="Instagram"><em class="fab fa-instagram"></em></a>
                </div>
            </div>

            <div style="display:flex;gap:40px;flex:1;justify-content:flex-end;flex-wrap:wrap">
                <div>
                    <div class="mono" style="font-weight:600;margin-bottom:8px;font-size:12px;text-transform:uppercase;letter-spacing:0.05em">Company</div>
                    <div class="muted" style="line-height:1.9">About<br>Careers<br>Press</div>
                </div>
                <div>
                    <div class="mono" style="font-weight:600;margin-bottom:8px;font-size:12px;text-transform:uppercase;letter-spacing:0.05em">Support</div>
                    <div class="muted" style="line-height:1.9">Help Center<br>Shipping &amp; Returns<br>Contact</div>
                </div>
            </div>
        </div>

        <div class="mono" style="text-align:center;margin-top:26px;color:var(--ink-soft);font-size:12px;border-top:1px solid var(--line);padding-top:20px">© <span id="year"></span> NEXUSSHOP — ALL RIGHTS RESERVED</div>
    </footer>

    <script>
        // --- Sample data (can be replaced by server-side data or API) ---
        const CATEGORIES = [{
                id: 'phones',
                name: 'Smartphones',
                icon: 'fa-mobile-alt'
            },
            {
                id: 'laptops',
                name: 'Laptops',
                icon: 'fa-laptop'
            },
            {
                id: 'clothing',
                name: 'Clothing',
                icon: 'fa-tshirt'
            },
            {
                id: 'gadgets',
                name: 'Gadgets',
                icon: 'fa-headphones'
            },
            {
                id: 'footwear',
                name: 'Footwear',
                icon: 'fa-shoe-prints'
            },
            {
                id: 'accessories',
                name: 'Accessories',
                icon: 'fa-watch'
            }
        ];

        const PRODUCTS = [{
                id: 1,
                title: 'iPhone 14 Pro Max',
                price: 1099,
                oldPrice: 1199,
                rating: 5,
                reviews: 128,
                badge: 'New',
                img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',
                category: 'phones'
            },
            {
                id: 2,
                title: 'MacBook Pro 14"',
                price: 1999,
                rating: 4,
                reviews: 86,
                img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',
                category: 'laptops'
            },
            {
                id: 3,
                title: 'Apple Watch Series 8',
                price: 349,
                oldPrice: 399,
                rating: 5,
                reviews: 214,
                badge: '-25%',
                img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',
                category: 'accessories'
            },
            {
                id: 4,
                title: 'Nike Air Max 270',
                price: 150,
                rating: 4,
                reviews: 53,
                img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',
                category: 'footwear'
            },
            {
                id: 5,
                title: 'Sony A7 IV Camera',
                price: 2499,
                rating: 5,
                reviews: 42,
                img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',
                category: 'gadgets'
            },
            {
                id: 6,
                title: 'Chanel No. 5',
                price: 120,
                rating: 5,
                reviews: 189,
                img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',
                category: 'accessories'
            },
            {
                id: 7,
                title: 'Travel Backpack',
                price: 79,
                oldPrice: 99,
                rating: 4,
                reviews: 67,
                img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',
                category: 'accessories'
            },
            {
                id: 8,
                title: 'Sony WH-1000XM5',
                price: 399,
                rating: 5,
                reviews: 156,
                img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',
                category: 'gadgets'
            }
        ];

        // --- Render categories & products ---
        const categoriesGrid = document.getElementById('categoriesGrid');
        const productsGrid = document.getElementById('productsGrid');
        const cartCountEl = document.getElementById('cartCount');
        const searchInput = document.getElementById('searchInput');
        const prodCountEl = document.getElementById('prodCount');

        let cartCount = 0;

        function pad2(n) { return String(n).padStart(2, '0'); }

        function renderCategories() {
            categoriesGrid.innerHTML = '';
            CATEGORIES.forEach((cat, i) => {
                const el = document.createElement('div');
                el.className = 'cat-card';
                el.innerHTML = `
                    <div class="num mono">${pad2(i + 1)}</div>
                    <div class="icon"><em class="fas ${cat.icon}"></em></div>
                    <div>
                        <h4>${cat.name}</h4>
                        <div class="sub">Explore ${cat.name}</div>
                    </div>
                `;
                el.addEventListener('click', () => {
                    searchInput.value = cat.name;
                    filterProducts(cat.name);
                    window.scrollTo({
                        top: document.getElementById('prod-title').offsetTop - 90,
                        behavior: 'smooth'
                    });
                });
                categoriesGrid.appendChild(el);
            });
        }

        function renderProducts(list) {
            productsGrid.innerHTML = '';
            prodCountEl.textContent = pad2(list.length) + ' ENTRIES';
            list.forEach(p => {
                const el = document.createElement('article');
                el.className = 'product';
                el.innerHTML = `
                    <div class="num-tag mono">No. ${String(p.id).padStart(3, '0')}</div>
                    ${p.badge ? `<div class="badge-tag mono" style="background:${p.badge.startsWith('-') ? 'var(--brick)' : 'var(--gold-deep)'}">${p.badge}</div>` : ''}
                    <img src="${p.img}" alt="${escapeHtml(p.title)}">
                    <div class="product-body">
                        <h5>${escapeHtml(p.title)}</h5>
                        <div class="cat-label">${p.category}</div>
                        <div class="price-line">
                            <span class="price">$${p.price.toLocaleString()}</span>
                            <span class="leader"></span>
                            <span class="rating">${'★'.repeat(Math.round(p.rating))} <span class="mono" style="font-size:11px;color:var(--ink-soft)">(${p.reviews})</span></span>
                        </div>
                        ${p.oldPrice ? `<div class="old-price">was $${p.oldPrice.toLocaleString()}</div>` : ''}
                    </div>
                    <div class="product-footer">
                        <button class="add-btn" data-id="${p.id}"><em class="fas fa-cart-plus"></em> Add</button>
                        <button class="wish-btn" aria-label="Add to wishlist"><em class="far fa-heart"></em></button>
                    </div>
                `;
                productsGrid.appendChild(el);
            });

            // attach listeners to add buttons
            productsGrid.querySelectorAll('.add-btn').forEach(btn => {
                btn.addEventListener('click', (e) => {
                    const id = Number(btn.dataset.id);
                    addToCart(id);
                });
            });
        }

        // --- Utilities ---
        function escapeHtml(text) {
            return String(text).replace(/[&<>"']/g, s => ({
                '&': '&amp;',
                '<': '&lt;',
                '>': '&gt;',
                '"': '&quot;',
                "'": '&#39;'
            } [s]));
        }

        function addToCart(productId) {
            const p = PRODUCTS.find(x => x.id === productId);
            if (!p) return;
            cartCount++;
            cartCountEl.textContent = cartCount;
            // Simple feedback
            const btn = document.querySelector(`.add-btn[data-id="${productId}"]`);
            if (btn) {
                const original = btn.innerHTML;
                btn.innerHTML = 'Added ✓';
                btn.disabled = true;
                setTimeout(() => {
                    btn.innerHTML = original;
                    btn.disabled = false;
                }, 1200);
            }
        }

        function updateCartCount() {
            cartCountEl.textContent = cartCount;
        }

        function filterProducts(query) {
            const q = String(query || '').trim().toLowerCase();
            if (!q) {
                renderProducts(PRODUCTS);
                return;
            }
            const filtered = PRODUCTS.filter(p =>
                p.title.toLowerCase().includes(q) ||
                p.category.toLowerCase().includes(q)
            );
            renderProducts(filtered);
        }

        // --- Search handling ---
        document.getElementById('searchBtn').addEventListener('click', () => filterProducts(searchInput.value));
        searchInput.addEventListener('keydown', (e) => {
            if (e.key === 'Enter') filterProducts(e.target.value);
        });

        // --- Mobile menu toggle ---
        const mobileToggle = document.getElementById('mobileToggle');
        const mobileMenu = document.getElementById('mobileMenu');
        mobileToggle.addEventListener('click', () => {
            mobileMenu.style.display = mobileMenu.style.display === 'none' || !mobileMenu.style.display ? 'block' : 'none';
        });

        // --- Simple dropdown (desktop) ---
        const catMenuBtn = document.getElementById('catMenuBtn');
        catMenuBtn && catMenuBtn.addEventListener('click', (e) => {
            e.preventDefault();
            alert('Use the category tiles below to filter — this is a demo.');
        });

        // --- Newsletter subscribe (demo) ---
        document.getElementById('newsletterForm').addEventListener('submit', (e) => {
            e.preventDefault();
            const email = document.getElementById('newsletterEmail').value.trim();
            const msg = document.getElementById('newsletterMsg');
            if (!email || !email.includes('@')) {
                msg.style.display = 'block';
                msg.textContent = 'PLEASE ENTER A VALID EMAIL ADDRESS.';
                msg.style.color = '#e6a49a';
                return;
            }
            msg.style.display = 'block';
            msg.style.color = '#d8cfa9';
            msg.textContent = 'THANKS — YOU ARE SUBSCRIBED.';
            document.getElementById('newsletterEmail').value = '';
            setTimeout(() => msg.style.display = 'none', 3000);
        });

        // --- Countdown timer for deal ---
        (function setupDealTimer() {
            // Target: 1 day from now (demo)
            const now = new Date();
            const target = new Date(now.getTime() + (24 * 60 + 36) * 60 * 1000); // 24h36m
            function tick() {
                const diff = target - new Date();
                const days = Math.floor(diff / (24 * 3600 * 1000));
                const hours = Math.floor((diff % (24 * 3600 * 1000)) / (3600 * 1000));
                const mins = Math.floor((diff % (3600 * 1000)) / (60 * 1000));
                const secs = Math.floor((diff % (60 * 1000)) / 1000);
                document.getElementById('dealDays').textContent = days;
                document.getElementById('dealHours').textContent = pad2(hours);
                document.getElementById('dealMinutes').textContent = pad2(mins);
                document.getElementById('dealSeconds').textContent = pad2(secs);
                if (diff <= 0) clearInterval(timer);
            }
            tick();
            const timer = setInterval(tick, 1000);
        })();

        // --- Small UI bindings ---
        document.getElementById('shopNow').addEventListener('click', () => window.scrollTo({
            top: document.getElementById('prod-title').offsetTop - 90,
            behavior: 'smooth'
        }));
        document.getElementById('exploreDeals').addEventListener('click', () => window.location.hash = '#deals');
        document.getElementById('buyDeal').addEventListener('click', () => {
            cartCount += 1;
            updateCartCount();
            alert('Deal added to cart (demo).');
        });

        // --- Initialization ---
        (function init() {
            renderCategories();
            renderProducts(PRODUCTS);
            updateCartCount();
            document.getElementById('year').textContent = new Date().getFullYear();
        })();
    </script>
</body>

</html>
