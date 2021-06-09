import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Change your life", "Learn to play some tunes"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
