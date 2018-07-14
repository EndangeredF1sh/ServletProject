function getQueryVariable(variable)
{
    var query = window.location.search.substring(1);
    var vars = query.split("&");
    for (var i=0;i<vars.length;i++) {
        var pair = vars[i].split("=");
        if(pair[0] == variable){return pair[1];}
    }
    return(false);
}
var EID = getQueryVariable("employee_id");
$(function () {
    $("#checkbtn").on('click',function () {
        var id = EID;
        var username = $("#username").val();
        // var gender = $("input[name='radio'][checked]").val();
        var gender = $('input:radio:checked').val();
        if(gender == '1'){
            gender = "男";
        }
        else{
            gender = '女';
        }
        var birthday = $("#year").val() + "-" + $("#month").val() + "-" + $("#day").val();
        var phone_number = $("#userphone").val();
        var email = $("#useremail").val();
        var education_level = $("#usereducationLevel").find("option:selected").text();
        var address = $("#useraddress").val();
        var json ={
            id:id,
            last_name:username.substring(0,1),
            first_name:username.substring(1),
            gender:gender,
            birthday:birthday,
            phone_number:phone_number,
            email:email,
            education_level:education_level,
            address:address
        };
        $.ajax({
            type:"POST",
            async:false,
            url:"../../changePersonalInfoServlet",
            data:json,
            success:function (data) {
                alert("修改成功");
            }
        })
    })
});

$(function () {
    $("#infobtn").on('click',function () {
        refreshInfo();
    })
});