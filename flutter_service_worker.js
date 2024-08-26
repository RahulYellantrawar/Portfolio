'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "6fde96fad90bf2f185234f64d41d95b5",
".git/config": "5ceb23bdf794aa8b10634db23ec96643",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/FETCH_HEAD": "eadcc7d0cafe12f14f4007fd2dda9d39",
".git/HEAD": "5ab7a4355e4c959b0c5c008f202f51ec",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "5029bfab85b1c39281aa9697379ea444",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/sendemail-validate.sample": "4d67df3a8d5c98cb8565c07e42be0b04",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "82d206685d6f1cf3c8e31b6993fd1775",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "f807f5e9f98958c37cd62ef26c3a98e2",
".git/logs/refs/heads/gh-pages": "f807f5e9f98958c37cd62ef26c3a98e2",
".git/logs/refs/remotes/origin/gh-pages": "61c5d47c7328bcc384cb491cb2331d2c",
".git/objects/1b/8c8700d188a9e7aad1f4cd21833ff4b3ed9cca": "d4badacb029f341764c7b6561a074d19",
".git/objects/24/11c790db56ddf1618591630752b3f58b490cf7": "c1cc826e41cfc29f33ba27dc19e94fd2",
".git/objects/2f/da6a37c37f44735da21fb5933bd6ebec57b715": "08f9a78bbef6a2c9e058d1e47bde5dcb",
".git/objects/32/02f9909e792f6f480d093e152d051e6344b1cb": "bf1d37db911432b1fd2280a3a4854e43",
".git/objects/3d/a036297a6c1e512e2f6e295e09e990bb856128": "062a8a30a3391706857a4028ed9e0db7",
".git/objects/5a/7da0d6194a93000c179eee5fc9d8750db8cdd8": "eaaa0e61b3a636b667c1aa22834dbafc",
".git/objects/65/7a29e78ff9c2ecabeb23e8ce5dbd8d49d069fe": "0bd35a9b4fb176093caefb770bdc3a67",
".git/objects/71/3ea52705b0f222244f68ba083b4393f882270a": "91f2542197b83d0331475b653cb1afbe",
".git/objects/7a/ebded7ad93d6b7d75b800adf2c89d49295d4b1": "f4c56728aa4b90d1feca5f61c61842b6",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/89/86c9b5c1eeea90bd560f9b0fbb68fdec0153f5": "9b6acf5d7936257f3f9a99621cd9db87",
".git/objects/89/deac67333b292e11492db5de1a0772c5c8da16": "9550ea2d6900dc40b3b2d4f96ba1a83b",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8d/349e47da0411628fb693302dc01995ed0b7e1d": "fea9fedfcbe29e2cd7c3d6dd7a540b1b",
".git/objects/a8/0b03c095dd54ff56e21d5934acd4504a58730a": "4d4275238ea128f9ea81670fbefb50a6",
".git/objects/a9/5abb2eb3e81d3338cf745734377eca4e5e4e5a": "c6bba8790856ae2530d1562394d272b1",
".git/objects/ad/172e757bda7e4860299c00b84ccb211cab87d9": "e6cb8f96812f4fa126b336faea137217",
".git/objects/b1/b26df398392f4b647694aaf25f525366e05075": "122351fe15d053d7dbd191293651f158",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/be/45af6b9fd5a1d481335572850e8a02a84cbe3d": "381963177e1e0c012329fd647bde3ee5",
".git/objects/c3/1d846989a790fae1f08b558742ebe29567e245": "41d5f200a0360624456aaea18ffed647",
".git/objects/c3/70885aa302d79c3b247c127fdc43976840d2c8": "886ed3dca2c15ab234fe76897d701433",
".git/objects/c4/85164c0793671d3427423950f3cdbc80825948": "8246042e85f52bf3c7091dae7783c582",
".git/objects/c5/3c38039a8381bd317ecd404e26f0d6c17390a1": "2c39271e3a4e14f75b2313ad628bb733",
".git/objects/c9/b1edffffc246751356cb1ff95cf7e68953d0d4": "02e0a9bd2972c907aae212d2df800521",
".git/objects/ca/e39ebe41a9bb0a82200bc945a75c590074af56": "dac335575cb1fe7ce4ec59d2b935d687",
".git/objects/d3/065c47e5652b4df5e32e342cfe2a52ad0d99da": "72d810a4f58325c1a3bb191b605b74cf",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/dc/b7d28ee75f94ea6b5d61058c2b46f3c7cca2c0": "00384bf2f430da73b0ec8addf6fb8b7f",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/f7/b627edd6212a167a243fe96fbd9ff2d80d30dd": "99ffb45c10a1639d4275c86901e5b6da",
".git/objects/fe/3914bcf3baf9d87a873a444cac8aaf9dcd54c1": "372add7dd6cdabc32b9333e8d66bff72",
".git/ORIG_HEAD": "b4148b94c8e5674375480fb2cc7b9e6d",
".git/refs/heads/gh-pages": "b4148b94c8e5674375480fb2cc7b9e6d",
".git/refs/remotes/origin/gh-pages": "b4148b94c8e5674375480fb2cc7b9e6d",
"apple-touch-icon.png": "5f4a8b2f8f29250da01c3ea4cc910c60",
"assets/AssetManifest.bin": "f5163c151b7b378e0ffe0438641ae9f1",
"assets/AssetManifest.bin.json": "bf8ad218776c634903d086c9090d75a1",
"assets/AssetManifest.json": "d1082312e17417c317cc0d928fa25be9",
"assets/assets/fonts/Function%2520Regular.ttf": "36f00fc2923fa4fa4cdffeeae7be4426",
"assets/assets/fonts/SourceSerif4-Regular.ttf": "563a88f26a4d055e8206a367c309506b",
"assets/assets/images/discovery_agency.webp": "11ad3baef4aa48b8137b6393728d896f",
"assets/assets/images/loading.gif": "9e0373c2b4410c49439dfd822c5fd16e",
"assets/assets/images/logo.png": "43cf72e53394e90e3ec1590a432617e2",
"assets/assets/images/skills/androidstudio.png": "2e9de958a3aae4da7c8c9b8b47b59035",
"assets/assets/images/skills/dart.png": "d5627a8f0bd9714ef0dfda8f0add6749",
"assets/assets/images/skills/firebase.png": "c24b6b9c0fcd84c7b258879880472660",
"assets/assets/images/skills/flutter.png": "496166b5b52e02865c338bb52558e54e",
"assets/assets/images/skills/vscode.png": "6e2bc76629043264c4fafcc4e850f91b",
"assets/assets/images/teech_logo.webp": "744804c621b5cb4dd9075d2ec6ba00ae",
"assets/FontManifest.json": "1969c884a189152522c04b14dfb8ac99",
"assets/fonts/MaterialIcons-Regular.otf": "52cbf2003fb01b435531fa6c19f7e634",
"assets/NOTICES": "f52131ba4837b7bfc9fbc86f85c8f999",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "7189e88d71afedf5396c1f9ea275e89f",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "f3307f62ddff94d2cd8b103daf8d1b0f",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "04f83c01dded195a11d21c2edf643455",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.ico": "9b6013932751ef0172182a0b8a302c60",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"flutter_bootstrap.js": "fa33f32df7638bb5ac5d06553d50c983",
"icons/icon-192-maskable.png": "cf82ac45a32899c6f8b0066f7ea46255",
"icons/icon-192.png": "fa09eb4b73b8b573cc4ba4c1e12c33f4",
"icons/icon-512-maskable.png": "2d257829bfdca67b171647e9949b84ab",
"icons/icon-512.png": "4c13063995df4923eb5e4acbe5e45596",
"index.html": "78ccb4e0ad8f61a66767643c0b3e8bfb",
"/": "78ccb4e0ad8f61a66767643c0b3e8bfb",
"main.dart.js": "ce7858b9517b84de09b298b01a89bc1f",
"manifest.json": "dbd512c8788290833311e830f33ee3a6",
"splash/img/dark-1x.gif": "0b55f91dc8b28aadc744e0731897254b",
"splash/img/dark-2x.gif": "17bf360cfe93b1614e82811e81cf95d3",
"splash/img/dark-3x.gif": "39555de7efa2aedaf1831e818dd398f3",
"splash/img/dark-4x.gif": "15ff9ce97bf3b1d2c635a25123896e13",
"splash/img/light-1x.gif": "0b55f91dc8b28aadc744e0731897254b",
"splash/img/light-2x.gif": "17bf360cfe93b1614e82811e81cf95d3",
"splash/img/light-3x.gif": "39555de7efa2aedaf1831e818dd398f3",
"splash/img/light-4x.gif": "15ff9ce97bf3b1d2c635a25123896e13",
"version.json": "009c9e65172e010890f7f65fde438006"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
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
