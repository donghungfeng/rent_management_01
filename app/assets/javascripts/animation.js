$(document).on('turbolinks:load', function() {
  
  var navi = $('.sticky-top').offset();
  var na = navi.top;
  
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
