<%@ Page Title="Gallery" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="heading">
            <h2>Our School Gallery</h2>
        </div>

        <div class="filters">
            <button class="filter-btn active" data-filter="all" aria-pressed="true">All</button>
            <button class="filter-btn" data-filter="Events">Events</button>
            <button class="filter-btn" data-filter="Activities">Activities</button>
            <button class="filter-btn" data-filter="Celebrations">Celebrations</button>
        </div>

        <div class="gallery-grid" id="galleryGrid">
            <div class="gallery-item fade-in" data-category="Events" data-index="0">
                <img src="<%= ResolveUrl("~/images/event_pic1.jpg") %>" alt="Event 1" />
                <div class="overlay">
                    <button class="plus-btn" aria-label="Open image">+</button>
                    <div class="category-text">Events</div>
                </div>
            </div>

            <div class="gallery-item fade-in" data-category="Activities" data-index="1">
                <img src="<%= ResolveUrl("~/images/activity_pic1.jpg") %>" alt="Activity 1" />
                <div class="overlay">
                    <button class="plus-btn" aria-label="Open image">+</button>
                    <div class="category-text">Activities</div>
                </div>
            </div>

            <div class="gallery-item fade-in" data-category="Celebrations" data-index="2">
                <img src="<%= ResolveUrl("~/images/celebrate1.jpg") %>" alt="Celebration 1" />
                <div class="overlay">
                    <button class="plus-btn" aria-label="Open image">+</button>
                    <div class="category-text">Celebrations</div>
                </div>
            </div>

            <div class="gallery-item fade-in" data-category="Events" data-index="3">
                <img src="<%= ResolveUrl("~/images/event_pic2.jpg") %>" alt="Event 2" />
                <div class="overlay">
                    <button class="plus-btn" aria-label="Open image">+</button>
                    <div class="category-text">Events</div>
                </div>
            </div>

            <div class="gallery-item fade-in" data-category="Activities" data-index="4">
                <img src="<%= ResolveUrl("~/images/activity_pic2.jpg") %>" alt="Activity 2" />
                <div class="overlay">
                    <button class="plus-btn" aria-label="Open image">+</button>
                    <div class="category-text">Activities</div>
                </div>
            </div>

            <div class="gallery-item fade-in" data-category="Celebrations" data-index="5">
                <img src="<%= ResolveUrl("~/images/celebrate2.jpg") %>" alt="Celebration 2" />
                <div class="overlay">
                    <button class="plus-btn" aria-label="Open image">+</button>
                    <div class="category-text">Celebrations</div>
                </div>
            </div>

            <div class="gallery-item fade-in" data-category="Events" data-index="6">
                <img src="<%= ResolveUrl("~/images/event_pic3.jpg") %>" alt="Event 3" />
                <div class="overlay">
                    <button class="plus-btn" aria-label="Open image">+</button>
                    <div class="category-text">Events</div>
                </div>
            </div>

            <div class="gallery-item fade-in" data-category="Activities" data-index="7">
                <img src="<%= ResolveUrl("~/images/activity_pic3.jpg") %>" alt="Activity 3" />
                <div class="overlay">
                    <button class="plus-btn" aria-label="Open image">+</button>
                    <div class="category-text">Activities</div>
                </div>
            </div>

            <div class="gallery-item fade-in" data-category="Celebrations" data-index="8">
                <img src="<%= ResolveUrl("~/images/celebrate3.jpg") %>" alt="Celebration 3" />
                <div class="overlay">
                    <button class="plus-btn" aria-label="Open image">+</button>
                    <div class="category-text">Celebrations</div>
                </div>
            </div>
        </div>
    </div>

    <!-- Lightbox -->
    <div class="lightbox" id="lightbox" aria-hidden="true" role="dialog" aria-label="Image viewer">
        <div class="lb-backdrop" id="lbBackdrop"></div>
        <div class="lb-panel" role="document">
            <div class="lb-counter" id="lbCounter">0 / 0</div>
            <div class="lb-toolbar">
                <button class="lb-tool-btn" id="lbZoomOut" aria-label="Zoom out">
                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                        <circle cx="11" cy="11" r="8"></circle>
                        <line x1="8" y1="11" x2="14" y2="11"></line>
                        <line x1="21" y1="21" x2="16.65" y2="16.65"></line>
                    </svg>
                </button>
                <button class="lb-tool-btn" id="lbZoomIn" aria-label="Zoom in">
                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                        <circle cx="11" cy="11" r="8"></circle>
                        <line x1="11" y1="8" x2="11" y2="14"></line>
                        <line x1="8" y1="11" x2="14" y2="11"></line>
                        <line x1="21" y1="21" x2="16.65" y2="16.65"></line>
                    </svg>
                </button>
                <button class="lb-tool-btn" id="lbFullscreen" aria-label="Fullscreen">
                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                        <path d="M8 3H5a2 2 0 0 0-2 2v3m18 0V5a2 2 0 0 0-2-2h-3m0 18h3a2 2 0 0 0 2-2v-3M3 16v3a2 2 0 0 0 2 2h3"></path>
                    </svg>
                </button>
                <button class="lb-tool-btn" id="lbInfo" aria-label="Info">
                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                        <circle cx="12" cy="12" r="10"></circle>
                        <line x1="12" y1="16" x2="12" y2="12"></line>
                        <line x1="12" y1="8" x2="12.01" y2="8"></line>
                    </svg>
                </button>
                <button class="lb-tool-btn" id="lbClose" aria-label="Close">
                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                        <line x1="18" y1="6" x2="6" y2="18"></line>
                        <line x1="6" y1="6" x2="18" y2="18"></line>
                    </svg>
                </button>
            </div>
            <button class="lb-nav lb-prev" id="lbPrev" aria-label="Previous">&#10094;</button>
            <div class="lb-image-wrap">
                <img id="lbImage" src="" alt="" />
                <div class="lb-caption">photo</div>
            </div>
            <button class="lb-nav lb-next" id="lbNext" aria-label="Next">&#10095;</button>
            <div class="lb-thumbs-container">
                <div class="lb-thumbs" id="lbThumbs"></div>
            </div>
        </div>
    </div>

    <!-- Fonts and styles -->
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@600;700&family=Montserrat:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        :root{ --primary: #f7931e; --secondary:#333333; --text:#ffffff; --bg:#ffffff; }
        .container{ max-width:1200px; margin:0 auto; padding:32px 0; }
        .heading{ text-align:center; margin-bottom:18px; }
        .heading h2{ margin:0; font-size:28px; color:var(--secondary); font-family: 'Playfair Display', serif; }
        .filters{ text-align:center; margin:24px 0 30px; }
        .filter-btn{ display:inline-block; margin:0 10px; padding:10px 18px; border-radius:4px; border:1px solid #e6e6e6; background:#fff; color:var(--secondary); cursor:pointer; font-weight:600; transition:all .18s ease; font-family: 'Montserrat', sans-serif; }
        .filter-btn.active{ background:var(--primary); color:#fff; border-color:var(--primary); box-shadow:0 8px 20px rgba(247,147,30,0.12); }

        /* grid */
        .gallery-grid{ display:flex; flex-wrap:wrap; gap:24px; justify-content:flex-start; align-items:flex-start; }
        .gallery-item{ width:350px; height:260px; position:relative; border-radius:6px; overflow:hidden; flex:0 0 350px; background:#f5f5f5; }
        .gallery-item img{ width:100%; height:100%; object-fit:cover; display:block; transition:transform .45s cubic-bezier(.2,.8,.2,1); }

        /* overlay */
        .overlay{ position:absolute; inset:0; background:rgba(0,0,0,0); display:flex; align-items:center; justify-content:center; flex-direction:column; gap:10px; opacity:0; transition:opacity .22s ease, background .22s ease; pointer-events:none; }
        .gallery-item:hover .overlay{ opacity:1; background:rgba(0,0,0,0.55); pointer-events:auto; }
        .gallery-item:hover img{ transform:scale(1.06); }

        .plus-btn{ width:56px; height:56px; border-radius:50%; background:var(--primary); color:#fff; border:none; display:inline-flex; align-items:center; justify-content:center; font-size:28px; cursor:pointer; box-shadow:0 8px 24px rgba(247,147,30,0.18); transition:transform .16s ease; }
        .plus-btn:active{ transform:scale(.98); }
        .category-text{ color:#fff; font-weight:700; margin-top:8px; text-transform:uppercase; letter-spacing:1px; font-size:13px; }

        /* lightbox */
        .lightbox{ position:fixed; inset:0; display:none; align-items:center; justify-content:center; z-index:9999; }
        .lightbox.open{ display:flex; }
        .lb-backdrop{ position:absolute; inset:0; background:#000; opacity:0; transition:opacity .22s ease; }
        .lightbox.open .lb-backdrop{ opacity:1; }
        .lb-panel{ position:relative; width:100%; height:100vh; display:flex; flex-direction:column; align-items:center; z-index:2; }
        
        /* Toolbar */
        .lb-toolbar{ position:absolute; top:0; right:0; display:flex; background:rgba(0,0,0,0.7); z-index:10; }
        .lb-tool-btn{ width:50px; height:50px; background:transparent; border:none; color:#fff; cursor:pointer; display:flex; align-items:center; justify-content:center; transition:background .2s; }
        .lb-tool-btn:hover{ background:rgba(255,255,255,0.1); }

        /* Counter */
        .lb-counter{ position:absolute; top:15px; left:15px; color:#fff; font-weight:400; font-size:16px; font-family:'Montserrat',sans-serif; z-index:10; }

        /* Image Container - FIXED SIZING */
        .lb-image-wrap{ width:100%; flex:1; display:flex; align-items:center; justify-content:center; flex-direction:column; padding:70px 20px 20px; box-sizing:border-box; }
        .lb-image-wrap img{ width:auto; height:auto; max-width:55%; max-height:calc(100vh - 250px); object-fit:contain; }
        .lb-caption{ color:#fff; font-size:14px; margin-top:10px; font-family:'Montserrat',sans-serif; }

        /* Navigation */
        .lb-nav{ position:absolute; top:50%; transform:translateY(-50%); background:transparent; border:none; color:#fff; width:48px; height:72px; font-size:36px; cursor:pointer; display:flex; align-items:center; justify-content:center; z-index:10; }
        .lb-prev{ left:20px; }
        .lb-next{ right:20px; }

        /* Thumbnails Container */
        .lb-thumbs-container{ width:100%; background:#000; padding:10px 0; box-sizing:border-box; }
        .lb-thumbs{ display:flex; gap:8px; padding:0 10px; overflow-x:auto; overflow-y:hidden; max-width:100%; }
        .lb-thumbs::-webkit-scrollbar{ height:6px; }
        .lb-thumbs::-webkit-scrollbar-track{ background:#1a1a1a; }
        .lb-thumbs::-webkit-scrollbar-thumb{ background:#444; border-radius:3px; }
        .lb-thumb{ width:90px; height:70px; flex:0 0 90px; border-radius:4px; overflow:hidden; cursor:pointer; border:3px solid transparent; opacity:.6; transition:all .2s ease; }
        .lb-thumb img{ width:100%; height:100%; object-fit:cover; display:block; }
        .lb-thumb.active{ border-color:#fff; opacity:1; transform:scale(1.05); }
        .lb-thumb:hover{ opacity:1; }

        /* responsive */
        @media (max-width:1100px){ .gallery-item{ width:300px; height:224px; flex:0 0 300px; } .lb-image-wrap img{ max-width:65%; } }
        @media (max-width:768px){ 
            .container{ padding:18px 0; } 
            .gallery-grid{ justify-content:center; gap:18px; } 
            .gallery-item{ width:45%; flex:0 0 45%; height:200px; } 
            .plus-btn{ width:48px; height:48px; font-size:24px; }
            .lb-thumb{ width:70px; height:55px; flex:0 0 70px; }
            .lb-nav{ width:40px; height:60px; font-size:28px; }
            .lb-prev{ left:10px; }
            .lb-next{ right:10px; }
            .lb-image-wrap img{ max-width:75%; }
        }
        @media (max-width:420px){ 
            .gallery-item{ width:90%; flex:0 0 90%; height:180px; } 
            .lb-thumb{ width:60px; height:45px; flex:0 0 60px; }
            .lb-image-wrap img{ max-width:85%; }
        }

        /* small animation helpers */
        .fade-in{ animation:fadeIn .28s ease both; }
        @keyframes fadeIn{ from{opacity:0; transform:translateY(6px)} to{opacity:1; transform:none} }
    </style>

    <script>
        (function () {
            var filterBtns = document.querySelectorAll('.filter-btn');
            var items = document.querySelectorAll('.gallery-item');

            function setActiveFilter(btn) {
                filterBtns.forEach(function (b) { b.classList.remove('active'); b.setAttribute('aria-pressed', 'false'); });
                btn.classList.add('active'); btn.setAttribute('aria-pressed', 'true');
            }

            filterBtns.forEach(function (btn) {
                btn.addEventListener('click', function () {
                    setActiveFilter(this);
                    var cat = this.getAttribute('data-filter');
                    items.forEach(function (it) {
                        if (cat === 'all' || it.getAttribute('data-category') === cat) {
                            it.style.display = 'block';
                            it.style.opacity = '1';
                        } else {
                            it.style.display = 'none';
                            it.style.opacity = '0';
                        }
                    });
                });
            });

            // Lightbox logic
            var lb = document.getElementById('lightbox');
            var lbBackdrop = document.getElementById('lbBackdrop');
            var lbImage = document.getElementById('lbImage');
            var lbClose = document.getElementById('lbClose');
            var lbPrev = document.getElementById('lbPrev');
            var lbNext = document.getElementById('lbNext');
            var lbCounter = document.getElementById('lbCounter');
            var lbThumbs = document.getElementById('lbThumbs');
            var lbZoomIn = document.getElementById('lbZoomIn');
            var lbZoomOut = document.getElementById('lbZoomOut');
            var lbFullscreen = document.getElementById('lbFullscreen');

            var allGallery = Array.prototype.slice.call(document.querySelectorAll('.gallery-item'));
            var gallery = allGallery.slice();
            var currentIndex = 0;
            var zoomLevel = 1;

            function filterGalleryByCategory(cat) {
                if (!cat || cat.toLowerCase() === 'all') return allGallery.slice();
                return allGallery.filter(function (g) { return g.getAttribute('data-category') === cat; });
            }

            function buildThumbs() {
                lbThumbs.innerHTML = '';
                gallery.forEach(function (g, idx) {
                    var img = g.querySelector('img');
                    var t = document.createElement('div'); t.className = 'lb-thumb'; t.setAttribute('data-index', idx);
                    var im = document.createElement('img'); im.src = img.src; im.alt = img.alt || '';
                    t.appendChild(im);
                    t.addEventListener('click', function (e) { openByIndex(idx); });
                    lbThumbs.appendChild(t);
                });
            }

            function updateThumbsActive(index) {
                var ts = lbThumbs.querySelectorAll('.lb-thumb');
                ts.forEach(function (t) { t.classList.remove('active'); });
                var el = lbThumbs.querySelector('.lb-thumb[data-index="' + index + '"]');
                if (el) el.classList.add('active');
                if (el) el.scrollIntoView({ behavior: 'smooth', inline: 'center', block: 'nearest' });
            }

            function openByIndex(idx) {
                if (!gallery || gallery.length === 0) return;
                currentIndex = (idx + gallery.length) % gallery.length;
                var node = gallery[currentIndex];
                lbImage.src = node.querySelector('img').src;
                lbImage.alt = node.querySelector('img').alt || '';
                lbCounter.textContent = (currentIndex + 1) + ' / ' + gallery.length;
                zoomLevel = 1;
                lbImage.style.transform = 'scale(1)';
                lb.classList.add('open'); lb.setAttribute('aria-hidden', 'false'); document.body.style.overflow = 'hidden';
                updateThumbsActive(currentIndex);
                lbClose.focus();
            }

            function closeLB() {
                lb.classList.remove('open'); lb.setAttribute('aria-hidden', 'true'); lbImage.src = ''; document.body.style.overflow = '';
                gallery = allGallery.slice();
                buildThumbs();
                lbCounter.textContent = '0 / ' + gallery.length;
                zoomLevel = 1;
            }

            function next() { openByIndex(currentIndex + 1); }
            function prev() { openByIndex(currentIndex - 1); }

            function attachOpeners() {
                document.querySelectorAll('.plus-btn').forEach(function (b) {
                    b.removeEventListener('click', plusClickHandler);
                    b.addEventListener('click', plusClickHandler);
                });

                document.querySelectorAll('.gallery-item img').forEach(function (im) {
                    im.removeEventListener('click', imageClickHandler);
                    im.addEventListener('click', imageClickHandler);
                });
            }

            function plusClickHandler(e) {
                e.stopPropagation();
                var p = this.closest('.gallery-item');
                var cat = p.getAttribute('data-category');
                gallery = filterGalleryByCategory(cat);
                buildThumbs();
                var idx = gallery.indexOf(p);
                if (idx === -1) idx = 0;
                openByIndex(idx);
            }

            function imageClickHandler(e) {
                var p = this.closest('.gallery-item');
                var cat = p.getAttribute('data-category');
                gallery = filterGalleryByCategory(cat);
                buildThumbs();
                var idx = gallery.indexOf(p);
                if (idx === -1) idx = 0;
                openByIndex(idx);
            }

            attachOpeners();

            lbClose.addEventListener('click', closeLB);
            lbBackdrop.addEventListener('click', closeLB);
            lbNext.addEventListener('click', function (e) { e.stopPropagation(); next(); });
            lbPrev.addEventListener('click', function (e) { e.stopPropagation(); prev(); });

            // Zoom
            lbZoomIn.addEventListener('click', function (e) {
                e.stopPropagation();
                zoomLevel = Math.min(zoomLevel + 0.25, 3);
                lbImage.style.transform = 'scale(' + zoomLevel + ')';
            });

            lbZoomOut.addEventListener('click', function (e) {
                e.stopPropagation();
                zoomLevel = Math.max(zoomLevel - 0.25, 0.5);
                lbImage.style.transform = 'scale(' + zoomLevel + ')';
            });

            // Fullscreen
            lbFullscreen.addEventListener('click', function (e) {
                e.stopPropagation();
                if (!document.fullscreenElement) {
                    lb.requestFullscreen().catch(function (err) { console.log(err); });
                } else {
                    document.exitFullscreen();
                }
            });

            document.addEventListener('keydown', function (e) {
                if (lb.classList.contains('open')) {
                    if (e.key === 'Escape') closeLB();
                    if (e.key === 'ArrowRight') next();
                    if (e.key === 'ArrowLeft') prev();
                }
            });

            var observer = new MutationObserver(function () {
                allGallery = Array.prototype.slice.call(document.querySelectorAll('.gallery-item'));
                if (lb.classList.contains('open') && gallery.length > 0) {
                    var currentCat = gallery[0].getAttribute('data-category');
                    gallery = filterGalleryByCategory(currentCat);
                } else {
                    gallery = allGallery.slice();
                }
                buildThumbs();
                updateThumbsActive(currentIndex);
                attachOpeners();
            });
            observer.observe(document.getElementById('galleryGrid'), { childList: true, subtree: true, attributes: true });

            buildThumbs();
            lbCounter.textContent = '0 / ' + gallery.length;
        })();
    </script>
</asp:Content>