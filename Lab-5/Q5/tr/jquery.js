$(document).ready(function(){
    $("button").click(function(){
        $("#d1, #d2,#d31,#d32").animate({left: '+=250px',}, 2000, function(){
            $("#d1, #d2,#d31,#d32").animate({top: '+=250px'}, 2000);
            $("#d1, #d2,#d31,#d32").stop();
        });
    });
});