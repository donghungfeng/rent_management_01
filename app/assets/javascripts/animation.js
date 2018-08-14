$(document).ready(function(){
  var navi = $('.sticky-top').offset();
  var na = navi.top;
  
//   $(window).load(function() {
//     $('body').removeClass('loading');
//     $('#preload').delay(1000).fadeOut('fast');
// });
    var sticky = function(){
      var scroll = $(window).scrollTop();
      if(scroll > na){
       $('.sticky-top').css({'position':'fixed', 'top':'0'});
      }
      else{
        $('.sticky-top').css({'position':'static', 'top':'50px'});
      }
    }
    $(window).scroll(function(){
      sticky();
    });
  });
