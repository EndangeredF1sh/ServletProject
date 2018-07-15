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

$(function () {
    $("#savebtn").on('click',function () {
        var old_password = $("#yuan");
        var new_password = $("#xin");
        var repeat_password = $("#chong");
        var old_hash = ($.md5(old_password.val()));
        var new_hash = ($.md5(new_password.val()));
        if(new_password.val() != repeat_password.val()){
            alert("两次密码输入不符！");
            old_password.val("");
            new_password.val("");
            repeat_password.val("");
            return;
        }
        if(old_hash === new_hash){
            alert("旧密码和新密码不能相同！");
            old_password.val("");
            new_password.val("");
            repeat_password.val("");
            return;
        }
        var json = {
            EID:EID,
            old:old_hash,
            new:new_hash
        };
        $.ajax({
            type:"POST",
            async:false,
            url:"../../changePasswordServlet",
            data:json,
            success:function(data){
                var res = JSON.parse(data);
                var status = res.success;
                if(status == '1'){
                    alert('修改密码成功！');
                    window.location.href = "index.jsp?employee_id=" + EID;
                }
                else {
                    alert("原密码输入错误，请重新修改密码！");
                    old_password.val("");
                    new_password.val("");
                    repeat_password.val("");
                }
            }
        })
    })
});