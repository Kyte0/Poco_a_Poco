import Typed from 'typed.js';

const quotes = [
  "Find the music teacher that inspires you."
]

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: quotes,
    typeSpeed: 60,
    loop: false
  });
}

export { loadDynamicBannerText };
