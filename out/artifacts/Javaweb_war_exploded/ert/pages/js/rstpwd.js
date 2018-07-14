$(function(){
	$(".form-control.input-sm-10").on('click',function(){
		$(this).parent().parent().append("<div id='new' style='float: left;margin:10px 20px;'><div class='col-9' style='display:inline-block;'><input type='text' class='form-control input-sm-10' placeholder='输入文字搜索'></div><a style='text-decoration:none;display:inline-block;position:relative;right:25px;' class='glyphicon glyphicon-plus'></a></div>");
	});


	$(".btn.btn-warning").on('click',function(){
		$("#new").hide();
	});


	///////////////////////重置查询







	//////////////修改密码////////////////////ajax给值
	$(".btn.btn-xs.btn-green").on('click',function(){
		if($("#yuan").val() != '0')
		{
	alert("错误");
		}
		if($("#xin").val() != $("#chong").val()){
			alert("两次输入不符");
		}
		else
			alert("成功修改");

	});

});
$("[data-toggle='tab']").on('click',function(){
    $(".active").removeClass("active");

});

