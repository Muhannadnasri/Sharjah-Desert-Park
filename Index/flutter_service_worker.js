'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "8c89fd20d5e172f01d5c1dcc883d9153",
"index.html": "50dcff6433daf5a7bfb10be7939de06e",
"/": "50dcff6433daf5a7bfb10be7939de06e",
"main.dart.js": "19e1be0dd538094f52e498c81468bed4",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "d5be4d2d62852ace26d7c3c33472ad4a",
"assets/AssetManifest.json": "276e6f317b20261c9bb367dc6babcd68",
"assets/NOTICES": "897dab346a4f106aa678747c65f57f69",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "4fc935dad351697db8e181de23cfec50",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "6ffb39c8cb9e8d35ebbc2e35d2c34da5",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "5ada3c4c2aaf5beada1fd8e25ad6ad09",
"assets/packages/localization/test/assets/lang2/en_US.json": "b389499c34b7ee2ec98c62fe49e08fa0",
"assets/packages/localization/test/assets/lang2/pt_BR.json": "08e9b784a138126822761beec7614524",
"assets/packages/localization/test/assets/lang/en_US.json": "18804652fbce3b62aacb6cce6f572f3c",
"assets/packages/localization/test/assets/lang/pt_BR.json": "f999b93065fe17d355d1ac5dcc1ff830",
"assets/fonts/MaterialIcons-Regular.otf": "7e7a6cccddf6d7b20012a548461d5d81",
"assets/assets/images/info.png": "601611d3069b0a3c8ea10d5fea61f22a",
"assets/assets/images/nature_reserve.jpg": "0d95877d12835f97e828292c0104f0d1",
"assets/assets/images/Book.jpg": "1fb3fd51eb2caf918f441fe26173e2c3",
"assets/assets/images/Time.jpg": "562289b874cdfa7a6a2565dc4132a3f6",
"assets/assets/images/Sand%2520Gazelle.jpg": "50d63104fb029d056559a9d41455dfce",
"assets/assets/images/botanicalgarden1.jpg": "1ab0a97ddce0bb25fdbfae3b131a52cd",
"assets/assets/images/botanicalgarden3.jpg": "8bfae2fd50c6c8ff828a21d1c70d97e9",
"assets/assets/images/TimeAr.jpg": "3f1b7e91623c29955fb5ad3b0894932b",
"assets/assets/images/childrensfar.jpg": "78d34897bc06d2bd7b04bd4f86c292ae",
"assets/assets/images/Egyptian%2520Goose.jpg": "455c286e08e46280664f9d118ed8f155",
"assets/assets/images/dhabb.jpg": "e62423395bea27d2ea9ea3c4eee14587",
"assets/assets/images/Domestic%2520Cat.jpg": "f8b9fd2c077586feb3b592e0a4aefa3e",
"assets/assets/images/Grey%2520Francolin.png": "0772e608eece96f4fe7793b3ad411fc1",
"assets/assets/images/Our%2520Strategy.jpg": "9390417628da4bbb1d28f7c70de6a71c",
"assets/assets/images/Vitaceae%2520vtis.png": "3c9ba59e7a08e425275e387009851a5b",
"assets/assets/images/Chairperson%2520Message.jpg": "17361cc05ee584f31d746855354edd90",
"assets/assets/images/Arabian%2520leopard.jpg": "a8200cd53e2f62e363ffc1183b8b2de1",
"assets/assets/images/Natural%2520History%2520and%2520Botanical%2520Museum.jpg": "3831e6f8e1a068066b32264885abaf7d",
"assets/assets/images/Desert%2520Monitor.jpg": "c8112e593f07cad0bd4e55bb26db0145",
"assets/assets/images/Broom%2520Bush.jpg": "585047c885842523d264987be51a205f",
"assets/assets/images/childrensfarm.jpg": "60c0312800cdf1b63857b64ed6db5eba",
"assets/assets/images/EPAA-logoxx.png": "565728af0c7b9a3d5cd82220f4cef536",
"assets/assets/images/b_05175.jpg": "63d6c8ef8eb28c62cc665fee6da5d75b",
"assets/assets/images/kelompokhewandad.png": "882c91864aca4f506469cea2b75d7728",
"assets/assets/images/Greater%2520Flamingo.jpg": "8c8a0a7dfeb4641d7b3e8a9e0c27a4fb",
"assets/assets/images/Our%2520Authority.jpg": "5c7bfdb6b1473afd971186bd954210ed",
"assets/assets/images/Common%2520Pochard.jpg": "35375632b52a9e6b3e51eca9175ec635",
"assets/assets/images/Saffron%2520in%2520jammu%2520and%2520kashmir.png": "9e257b5cf1ec467ce3430e835008d21a",
"assets/assets/images/img_4034.jpg": "a2e37e1f411e6403e3eddde5303bd41f",
"assets/assets/images/logo-full-en-white3.png": "bb9958bbeecb270a1165a403cf7a9ab5",
"assets/assets/images/img_4037.jpg": "36ff3d5162414ed0800fc1bef7fcab42",
"assets/assets/images/Arabian%2520red%2520fox.jpg": "44b32647d1676a45fbbef5170f92afd4",
"assets/assets/images/Black%2520rat.jpg": "24acd20dca4ec9db55b0abf7631d8be8",
"assets/assets/images/Northern%2520Pintail.jpeg": "48faca97dcfde9a5760d0e8826a22cfc",
"assets/assets/images/Eurasian%2520Teal.jpg": "bb4fc18aa0a8ff4ba298ba358761a5a5",
"assets/assets/images/Great%2520Egret.jpg": "184fc0f9dd6a828252118a46efac88ce",
"assets/assets/images/Sacred%2520Baboon.jpg": "57d0ed82403c9f54065222254a8cfec7",
"assets/assets/images/BookAr.jpg": "e525efd658c8861b5c7c2b9d1eba2b26",
"assets/assets/images/EPAA-logo.png": "347813a83f91654a1c1bda63c1825e99",
"assets/assets/images/palm%2520tree.png": "af55d262dedf948bed78a6018176b146",
"assets/assets/images/fys-campaign-34.png": "4bc62702f4defc758a4739f6e030206f",
"assets/assets/html/ourAuthority.txt": "e0be26c7f7fff17264834236d8730b56",
"assets/assets/html/chairpersonMessage.txt": "5a1a8d709c5c505ba166d3881d6122ae",
"assets/assets/html/wildlife.txt": "c2efa829e5814dfc04f92d211ffcdb58",
"assets/assets/html/ourStrategy.txt": "c2efa829e5814dfc04f92d211ffcdb58",
"assets/assets/icons/info.png": "4356aac832f20e2cc2c511b74d5e2677",
"assets/assets/icons/search.svg": "517ff67788988194a9e9dd9a78e5d1de",
"assets/assets/icons/home.svg": "c2a0a72697f23ad54806cc3562b15c1a",
"assets/assets/icons/logout.svg": "18869dd965e6f6fd6ee5c67bdf496ea5",
"assets/assets/icons/settings.png": "9c8366eee70a9593d2d049e9e8a5af2d",
"assets/assets/icons/animals.png": "df03a2e0cd6c636cda0fdfefb48c7f26",
"assets/assets/icons/category/music.svg": "e502eade916a622d90d33834548f9565",
"assets/assets/icons/category/cooking.svg": "eaffd5af8d5562e3f35f794524efdaf5",
"assets/assets/icons/category/all.svg": "6c473a7a60413df239fc7034845530b7",
"assets/assets/icons/category/design.svg": "08a5503254c092ca2b6b44f804d5de9d",
"assets/assets/icons/category/finance.svg": "8a17e79cfebdd18d7f72369ddd162e77",
"assets/assets/icons/category/coding.svg": "c76f45512c01214c3c7b4bd8411ece24",
"assets/assets/icons/category/art.svg": "3c76f7b76358d97975d1fc39eef5ee77",
"assets/assets/icons/category/education.svg": "46a8530f1b8b10c43e40005ca58dc59c",
"assets/assets/icons/category/business.svg": "277b1b6d49c315c82b1eec9e8e4d638e",
"assets/assets/icons/map.png": "fa6901cfcd4b2903a8fc275fcd3a4294",
"assets/assets/icons/shield.svg": "3d74768cd37aafacab3d4b94f2056a31",
"assets/assets/icons/time.svg": "b6147a0a82eda1dbc9c2bbda1c09bb29",
"assets/assets/icons/discover.svg": "f1277acf1acb883e4e1195ed0e6de6b1",
"assets/assets/icons/home.png": "3d7646b93b5716a80d365e18601c858b",
"assets/assets/icons/do.png": "3f7da1cc14106699522ddf0cc5ea75e0",
"assets/assets/icons/wallet.svg": "6123983f51db777543e9b795c80d3aa0",
"assets/assets/icons/bell.svg": "89d5cf9e881aff5ba4fc5bf27e8c69b5",
"assets/assets/icons/work.svg": "1175f696781a3d36f62885ac95d353a3",
"assets/assets/icons/bag.svg": "df775282951ef33b9fd8021eaeb2f92a",
"assets/assets/icons/parking.png": "419fec8c87e954046192f38aa03ef542",
"assets/assets/icons/setting.svg": "2f8345e3604aab3d83eaaba2712a65a7",
"assets/assets/icons/message.svg": "73bbbfc925b51e50b363672964de3142",
"assets/assets/icons/play1.svg": "b212529abd2f901141fc862e4eca4ffd",
"assets/assets/icons/play.svg": "33812c169543b5950324f57ce009f726",
"assets/assets/icons/chat.svg": "d9397cc23e74b6059d8eecb5cbb6e6e8",
"assets/assets/icons/send.svg": "44ab16c623e10bc171eebeebca733493",
"assets/assets/icons/more.svg": "4d9dd4fc74e2421f87b2fe83812cf360",
"assets/assets/icons/star.svg": "a1a64d8fdfb70f75f29efff5d037c73b",
"assets/assets/icons/unlock.svg": "691f227481cc14402b56f70a07672c92",
"assets/assets/icons/clock.svg": "d97fb399cb1a291f12288b3d04767366",
"assets/assets/icons/location.svg": "33717522495cf7baf1ebd93779871be3",
"assets/assets/icons/profile.svg": "85958be4123734439aca3e16ce15a6d1",
"assets/assets/icons/filter.svg": "caf83beb5cd1120a22dea2a0464ef590",
"assets/assets/icons/bookmark.svg": "530b4101ee6632aad82023dce9991d9e",
"assets/assets/icons/heart.svg": "bc9b910d76c26e2047ca47d6708f7cc4"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
