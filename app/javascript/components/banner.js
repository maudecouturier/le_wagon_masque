import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  if (document.getElementById('banner-typed-text')) {
    new Typed('#banner-typed-text', {
      strings: ["All you need <br> is a new costume"],
      typeSpeed: 100,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
