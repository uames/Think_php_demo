$(document).ready(function () {
    $('#prev').click(function() {
        var slideContW = $('#big-show li').width();
        $('#big-show').animate({marginLeft:-slideContW+'px'},200,function(){
            $('#big-show li').eq(0).appendTo($('#big-show'));
            $('#big-show').css({marginLeft:'0'});
        });
    });

    $('#next').click(function(){
        var len = $('#big-show li').length;
        var slideContW = $('#big-show li').width();
        $('#big-show').animate({marginLeft:slideContW+"px"},200,function(){
            $('#big-show li').eq(len-1).prependTo($('#big-show'));
            $('#big-show').css({marginLeft:'0'});
        });
    });

    $(".show-first li").click(function(){
        $(".detail-show, .prev, .next, #close-btn").show();

    })

    /*if($('.detail-show').css("display") == "block"){
        $('html').not(".detail-show").click(function(){
            console.log('1');
            $(".detail-show").hide();;
        });
    }*/
    /*$('html').not(".show-lists").click(function(){
        $(".detail-show").hide();;
    });*/

    $("#close-btn").click(function(){
         $(".detail-show, .prev, .next, #close-btn").hide();
    })
});