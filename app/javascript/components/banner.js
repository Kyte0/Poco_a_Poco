import Typed from 'typed.js';

const quotes = [
  "Music in the soul can be heard by the universe."
]

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: quotes,
    typeSpeed: 60,
    loop: false
  });
}

export { loadDynamicBannerText };
