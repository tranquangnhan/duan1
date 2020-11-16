$(document).ready(function(){
    var heroSlider = $('#owl-1');
        heroSlider.owlCarousel({
        animateIn: 'fadeIn',
        animateOut: 'fadeOut',
        center: true,
        items:1,
        loop: true,
        mouseDrag: false,
        autoplay: true,
        autoplayTimeout: 10000
    });
    var slide1 = $('#owl-2');
    slide1.owlCarousel({
      loop:true,
      margin:30,
      items: 1,
      nav:true,
      center:true,
    });
    var slide_chonghe = $('#owl-chonghe');
        slide_chonghe.owlCarousel({
          loop:true,
          margin:10,
          nav:true,
          responsive:{
              0:{
                  items:1
              },
              600:{
                  items:3
              },
              1000:{
                  items:10
              }
          }
      });
    $(window).scroll(function(){ 
      if ($(this).scrollTop() > 50) { 
          $('#l-menu-fixed').show();  
      } else { 
          $('#l-menu-fixed').hide();
      } 
    }); 
    $(window).scroll(function(){ 
      if ($(this).scrollTop() > 100) { 
          $('.l-bt-fixed-to-top').fadeIn();  
      } else { 
          $('.l-bt-fixed-to-top').fadeOut();
      } 
    }); 
    $('#bt-to-top').click(function(){ 
      $("html, body").animate({ 
        scrollTop: 0 }, 500)
      return false; 
    }); 
    $("#li-khuhoi").click(function(){
      $("#trove").css("display", "block");
    });
    $("#li-motchieu").click(function(){
      $("#trove").css({"display" : "none"});
      $( "this" ).removeClass( "background-main-color" );
    });
    $("#id-nhieudiemden").click(function(){
      $( "this" ).removeClass( "background-main-color" );
    });
    $(window).scroll(function(){ 
      if ($(this).scrollTop() > 2000) { 
        $(".l-canh-phai").addClass("l-position-absolute-top-1900");
        $(".l-canh-trai").addClass("l-position-absolute-top-1900");
      } else { 
        $(".l-canh-phai").removeClass("l-position-absolute-top-1900");
        $(".l-canh-trai").removeClass("l-position-absolute-top-1900");
      } 
    });
});
//  đổi màu khi chọn ghế
$(".l-ghe-thuonggia").click(function () {
  clicked = true;
  if (clicked) {
    $(this).toggleClass('l-ghe-active');
    $(this).removeClass('l-div-hover');
    clicked = true;
  } else {
    $(this).removeClass('l-ghe-active');
    $(this).toggleClass('l-div-hover');
    clicked = false;
  }
});
$(".l-ghe-phothong").click(function () {
  clicked = true;
  if (clicked) {
    $(this).toggleClass('l-ghe-active');
    $(this).removeClass('l-div-hover');
    clicked = true;
  } else {
    $(this).removeClass('l-ghe-active');
    $(this).toggleClass('l-div-hover');
    clicked = false;
  }
});

// animation logo trang tổng hợp vé
$( ".l-box-logo" ).mouseenter(function() {
  console.log('1');
}).mouseleave(function() {
  console.log('2');
});