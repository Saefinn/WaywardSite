
var fadeOutSpeed = 300;
var fadeInSpeed = 350;
var delay = 350;
var animateSpeed = 200;

$(document).ready(function(){
  //$("#crew").hide();
  $(".pop-out").hide();
  $(".page-body").fadeIn(350);
  
  
});

function closeWindow(){
  $(".pop-out").fadeOut(fadeOutSpeed);  
}


$("#saefinn-link").click(function(){
  $("#saefinn").fadeIn(fadeInSpeed);
  
});

$("#xhayu-link").click(function(){
  $("#xhayu").fadeIn(fadeInSpeed);
});

$("#vhaso-link").click(function(){
  $("#vhaso").fadeIn(fadeInSpeed);
});