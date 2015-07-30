$(function(){

console.log('script.js loaded')
$('.favorite').click (function(e) {
    e.preventDefault();
    var favorite = $(this)
     $.ajax({
      url: favorite.attr('data'),
      method: 'POST', data: {url:favorite.parent().children().first().children('a').attr('href')}

    }).done(function(data){
       // $('.put-it-here').html(data);
       console.log('its working or na?')
    });


 });

});
