import Typed from 'typed.js';

const quotes = [
  "If music be the food of love, play on.",
  "Music can name the unnameable and communicate the unknowable.",
  "Everything in the universe has a rhythm, everything dances.",
  "Life seems to go on without effort when I am filled with music.",
  "The music is not in the notes, but in the silence in between.",
  "Music, once admitted to the soul, becomes a sort of spirit and never dies.",
  "Beans, beans, the musical fruit, the more you eat, the more you toot.",
  "Music in the soul can be heard by the universe."
]

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: quotes,
    typeSpeed: 60,
    loop: true
  });
}

export { loadDynamicBannerText };
