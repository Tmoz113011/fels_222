$(function() {
  $(window).scroll(function() {
    if($('body').scrollTop() > 150) {
      $('.img-reponsive').addClass('animated fadeInLeft');
      $('.about').addClass('animated fadeInRight');
    }

    if($('body').scrollTop() > 450) {
      $('.cat-tilte').addClass('animated fadeInDown');
      $('.cat-jumpotron').addClass('animated zoomInUp');
    }
  });
});
