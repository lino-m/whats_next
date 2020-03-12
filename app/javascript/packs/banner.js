import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  if (window.location.pathname == '/') {
    new Typed('#banner-typed-text', {
      strings: ["Create your own Goals ", "Get inspired by our community ", "Make your dreams finally come true! " ],
      typeSpeed: 70,
      loop: true
    });
  };
}

export { loadDynamicBannerText };
