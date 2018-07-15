$("[data-toggle='tab']").on('click',function(){
    $(".active").removeClass("active");

});

$("#chaxundiaodong >ul >li >form >button").on('click',function(){
    var json = {
        ID: $("#we1").val(),
        old_position: $("#we2").val(),
        old_department: $("#we3").val(),
        new_position: $("#we4").val(),
        new_department: $("#we5").val()
	};
    alert(JSON.stringify(json));
    $.ajax({
        type:"POST",
        async:false,
        url:"../../changeQueryServlet",
        data:json,
        success:function(data){
            alert(data);
        }
    })
});