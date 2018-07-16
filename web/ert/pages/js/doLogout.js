$("#logoutbtn").on('click',function () {
    $.ajax({
        type:"GET",
        url:"../../login",
        success:function () {
            window.location.href = "../../index.jsp";
        }
    })
});