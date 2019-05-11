
document.addEventListener('turbolinks:load',function() {
  var mySwiper = new Swiper('.swiper-container', {
    pagination: {
      el:'.swiper-pagination',
      clickable: true,
  },
    navigation:{
      nextEl:'.swiper-button-next',
      prevEl:'.swiper-button-prev',
    },
    loop: true,
    speed: 300,
    slideToClickedSlide:true,
    centeredSlides:true,
  });
}, false);