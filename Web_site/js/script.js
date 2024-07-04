$(".menu > li").mouseover(function () {
    $(this).children(".sub").stop().slideDown();
});

$(".menu > li").mouseleave(function () {
    $(this).children(".sub").stop().slideUp();
});

function change_img() {

}