$(function(){

console.log('script.js loaded')
$('.favorite').click (function(e) {
    e.preventDefault();
    var favorite = $(this)
    var userId = favorite.find("span.favorite_user_id").text()

     $.ajax({
      url: favorite.attr('data'),
      method: 'POST',
      data: {
        user_id: userId,
        url: favorite.parent().children().first().children('a').attr('href')
      }

    }).done(function(data){
       // $('.put-it-here').html(data);
       alert("Added to favorites");
    });


 });

});
