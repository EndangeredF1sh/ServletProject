$("[data-toggle='tab']").on('click',function(){
    $(".active").removeClass("active");

});

$("#chaxundiaodong >ul >li >form >button").on('click',function(){
    var json = {
        name: $("#we1").val(),
        position: $("#we2").val(),
        department: $("#we3").val()
	};
    alert(JSON.stringify(json));
    // $.ajax({
    //     type:"POST",
    //     async:false,
    //     url:"../../changePasswordServlet",
    //     data:json,
    //     success:function(data){
    //     }
    // })
});