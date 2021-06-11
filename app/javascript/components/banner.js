import Typed from 'typed.js';

const quotes = [
  "If music be the food of love, play on.",
  "Music can name the unnameable and communicate the unknowable.",
  "Everything in the universe has a rhythm, everything dances.",
  "Music gives a soul to the universe, wings to the mind, flight to the imagination, and life to everything.",
  "The music is not in the notes, but in the silence in between.",
  "Music, once admitted to the soul, becomes a sort of spirit and never dies.",
  "Beans, beans, the musical fruit, the more you eat, the more you toot."
]

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: quotes,
    typeSpeed: 60,
    loop: true
  });
}

export { loadDynamicBannerText };
