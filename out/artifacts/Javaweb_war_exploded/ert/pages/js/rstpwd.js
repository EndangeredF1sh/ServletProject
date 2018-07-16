$("[data-toggle='tab']").on('click',function(){
    $(".active").removeClass("active");

});

$("#cxbtn").on('click',function() {
    $("#cha2").nextAll().remove();
    var json = {
        ID: $("#we1").val(),
        old_position:$("#we2").val(),
        old_department:$("#we3").val(),
        new_position:$("#we4").val(),
        new_department:$("#we5").val()
    };
    $.ajax({
        type: "POST",
        async: false,
        url: "../../changeQueryServlet",
        data: json,
        success: function (data) {
            var json = JSON.parse(data);
            for (var i = 0; i < json.length; i++) {
                var EID = json[i].ch_employee_id;
                var inJSON = json[i].info;
                var date = inJSON.ch_date;
                var dept_dest = inJSON.ch_dept_destination;
                var dept_source = inJSON.ch_dept_source;
                var last_name = inJSON.last_name;
                var first_name = inJSON.first_name;
                var pos_source = inJSON.ch_pos_source;
                var pos_dest = inJSON.ch_pos_destination;
                $.ajax({
                    type:"GET",
                    async:false,
                    url:"../../DeptWeightServlet",
                    success:function (data) {
                        var weight_before = 0;
                        var weight_after = 0;
                        var json = JSON.parse(data);
                        for(var i=0;i<json.length;i++){
                            if(json[i].name == dept_source){
                                var inJSON = json[i].info;
                                weight_before = inJSON.weight;
                            }
                        }
                        for(var i=0;i<json.length;i++){
                            if(json[i].name == dept_dest){
                                var inJSON = json[i].info;
                                weight_after = inJSON.weight;
                            }
                        }
                        if(weight_before < weight_after){
                            {$("#cha").append("<li class='list-group-item list-group-item-success'><span style='margin:0px 45px;'>" + EID + "<span/><span style='margin:0px 45px;'>" + last_name + first_name + "<span/><span style='margin:0px 45px;'>" + pos_source + "<span/><span style='margin:0px 45px;'>" + pos_dest + "<span/><span style='margin:0px 45px;'>" + dept_source + "<span/><span style='margin:0px 45px;'>" + dept_dest + "<span/><span style='margin:0px 45px;'>" + date + "<span/></li>");}
                        }
                        else if(weight_before > weight_after){
                            {$("#cha").append("<li class='list-group-item list-group-item-danger'><span style='margin:0px 45px;'>" + EID + "<span/><span style='margin:0px 45px;'>" + last_name + first_name + "<span/><span style='margin:0px 45px;'>" + pos_source + "<span/><span style='margin:0px 45px;'>" + pos_dest + "<span/><span style='margin:0px 45px;'>" + dept_source + "<span/><span style='margin:0px 45px;'>" + dept_dest + "<span/><span style='margin:0px 45px;'>" + date + "<span/></li>");}
                        }
                        else{
                            {$("#cha").append("<li class='list-group-item list-group-item-info'><span style='margin:0px 45px;'>" + EID + "<span/><span style='margin:0px 45px;'>" + last_name + first_name + "<span/><span style='margin:0px 45px;'>" + pos_source + "<span/><span style='margin:0px 45px;'>" + pos_dest + "<span/><span style='margin:0px 45px;'>" + dept_source + "<span/><span style='margin:0px 45px;'>" + dept_dest + "<span/><span style='margin:0px 45px;'>" + date + "<span/></li>");}
                        }
                    }
                });
            }
        }
    });
});





//////////////////////////////////////////////////////////////////转正调动
// $("# >ul >li >form >button").on('click',function(){
//     $("#qq").nextAll().remove();
//     var json = {
//         ID: $("#ww1").val(),
//         new_position: $("#ww2").val(),
//         new_department: $("#ww3").val()
//     };
//     $.ajax({
//         type:"POST",
//         async:false,
//         url:"../../changeQueryServlet",////////改
//         data:json,
//         success:function(data){
//             var json = JSON.parse(data);
//             for(var i=0;i<json.length;i++){
//                 var EID = json[i].ch_employee_id;
//                 var inJSON = json[i].info;
//                 var date = inJSON.ch_date;
//                 var dept_dest = inJSON.ch_dept_destination;
//                 var last_name = inJSON.last_name;
//                 var first_name = inJSON.first_name;
//                 var pos_dest = inJSON.ch_pos_destination;
//                 $("#cha").append("<li class='list-group-item list-group-item-primary'><span style='margin:0px 45px;'>"+EID+"<span/><span style='margin:0px 45px;'>"+last_name+first_name+"<span/><span style='margin:0px 45px;'>"+pos_dest+"<span/><span style='margin:0px 45px;'>"+dept_dest+"<span/><span style='margin:0px 45px;'>"+date+"<span/></li>");       }
//         }
//     })
// });
//
