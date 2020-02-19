import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["All you need", "is a new costume"],
    typeSpeed: 100,
    loop: true
  });
}

export { loadDynamicBannerText };
