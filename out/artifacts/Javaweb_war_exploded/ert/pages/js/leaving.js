$("#lizhi >ul >li >form >button").on('click',function() {
    $("#chaa3").nextAll().remove();
    var json = {
        ID: $("#wl1").val(),
        new_position:$("#wl2").val(),
        new_department:$("#wl3").val()
    };
    $.ajax({
        type: "POST",
        async: false,
        url: "../../leaveDepartmentServlet",
        data: json,
        success: function (data) {
            var json = JSON.parse(data);
            for (var i = 0; i < json.length; i++) {
                var EID = json[i].id;
                var inJSON = json[i].info;
                var post_dest = inJSON.position_name;
                var dept_dest = inJSON.department_name;
                var last_name = inJSON.last_name;
                var first_name = inJSON.first_name;
                var start_date = inJSON.hire_date;
                $("#inss").append("<a href='#' class='list-group-item'><span style='margin:0px 45px;'>" + EID + "</span><span style='margin:0px 45px;'>" + last_name + first_name  + "</span><span style='margin:0px 45px;'>" + post_dest  + "</span><span style='margin:0px 45px;'>" + dept_dest + "</span><span style='margin:0px 45px;'>" + start_date + "</span></a>");
            }
            $("#chaa3").nextAll().on('click',function(){
                var that = this;
                $.ajax({
                    type:"GET",
                    url:"../../leaveDepartmentServlet",
                    async:false,
                    data:{
                        EID:$(this).find("span").first().text()
                    },
                    success:function (data) {
                        var j = JSON.parse(data);
                        if(j.success === 1){
                            that.remove();
                            alert("离职成功！");
                        }
                        else{
                            alert("操作失败！");
                        }
                    }
                })
            });
        }
    });
});