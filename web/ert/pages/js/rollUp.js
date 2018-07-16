$(function () {
    if ($(window).width() >= 700) {//本人的项目是响应式的,但是移动端不显示回到顶部,自己可以去掉
        $(window).scroll(function () {
            if ($(window).scrollTop() <= 200) {
                if ($(".back-top").css("display") != "none") {
                    $(".back-top").slideUp("normal"); //缓慢下降隐藏
                }
            }
            else {
                if ($(".back-top").css("display") == "none") {
                    $(".back-top").slideDown("normal"); //缓慢上升显示
                }
            }
        });
    }
});
$(".back-top").click(function () {
    $('html,body').animate({'scrollTop':0},"slow");//回到顶部
});