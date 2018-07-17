$("#ssbtn").on('click',function() {
    $("#chaa4").nextAll().remove();
    var json = {
        ID: $("#wz1").val(),
        new_position:$("#wz2").val(),
        new_department:$("#wz3").val()
    };
    $.ajax({
        type: "POST",
        async: false,
        url: "../../dpChangeServlet",
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
                $("#insss").append("<a href='#' class='list-group-item'><span style='margin:0px 45px;'>" + EID + "</span><span style='margin:0px 45px;'>" + last_name + first_name + "</span><span style='margin:0px 45px;'>" + post_dest + "</span><span style='margin:0px 45px;'>" + dept_dest + "</span><span style='margin:0px 45px;'>" + start_date + "</span></a>");
            }
            $("#chaa4").nextAll().on('click', function () {
                var that = this;
                if ($("#change").attr('class') == "change1") {
                    $("#change").removeClass();
                    $("#change").addClass("change2");
                }



                $("#quxiao").on('click',function () {
                    $("#change").removeClass();
                    $("#change").addClass("change1");
                });


                $("#queding").on('click', function () {
                    var jjson = {
                        EID: $(that).find("span").first().text(),
                        Enew_position: $("#wz4").val(),
                        Enew_department: $("#wz5").val()
                    };
                    str1=$("#wz4").val();
                    str2=$("#wz5").val();
                    $.ajax({
                        type: "POST",
                        url: "../../dpChangeResultServlet",
                        async: false,
                        data: jjson,
                        success: function (data) {
                            var j = JSON.parse(data);

                            if (j.success ===1) {
                                $(that).find("span").first().next().next().text(str1);
                                $(that).find("span").first().next().next().next().text(str2);
                       $("#change").removeClass();
                                $("#change").addClass("change1");
                                alert("转正成功！");
                            }
                            else {
                                alert("操作失败！");
                            }

                        }
                    });
                });
            });
        }
    });
});


