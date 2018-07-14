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
//-------------------------------------------------
function refreshInfo(){
    var EID = getQueryVariable("employee_id");
    var json;
    $.ajax({
        type: "POST",
        async:false,
        url: '../../management',
        data:{
            EID: EID
        },
        success:function(data){
            if(JSON.parse(data).redirect == "1"){
                window.location.href = "../../";
            }
            json = JSON.parse(data);
            json = json[0].info;
            $("#userName").text("用戶 :"+json.last_name+json.first_name);
            $("#userDepart").text("部门："+json.department_name);
            $("#userPost").text("职位："+json.position_name);
            $("#emaill").attr("href","mailto:"+json.email);
            $("#userID").text("账户ID : "+EID);
            $("#UserID").text("账户ID : "+EID);
            $("#username").val(json.last_name+json.first_name);
            $("#Username").text("姓名 : "+json.last_name+json.first_name);
            $("#usersex").text("性别 : "+json.gender);
            $("#Usersex").text("性别 : "+json.gender);
            $("#Userbirthday").text("出生日期 : "+json.birthday);
            $("#userphone").val(json.phone_number);
            $("#Userphone").text("电话号码 : "+json.phone_number);
            $("#useremail").val(json.email);
            $("#Useremail").text("email : "+json.email);
            $("#userposition").text("岗位 : "+json.position_name);
            $("#Userposition").text("岗位 : "+json.position_name);
            $("#userdepartment").text("部门 : "+json.department_name);
            $("#Userdepartment").text("部门 : "+json.department_name);
            $("#usereducation_level").val(json.education_level);
            $("#Usereducation_level").text("教育程度 : "+json.education_level);
            $("#useraddress").val(json.address);
            $("#Useraddress").text("家庭地址 : "+json.address);
            $("#userhire_date").text("入职时间 : "+json.hire_date);
            $("#Userhire_date").text("入职时间 : "+json.hire_date);
            $("#usersalary").text("薪水 : "+json.salary);
            $("#Usersalary").text("薪水 : "+json.salary);
            $("#useremail").attr("href",json.email);
            $("#Usermail").attr("href",json.email);
        }
    });
    var result = json.birthday.split('-');

    if(json.gender=='男')
    {
        $("#nan").attr("checked","checked");
        $("#genderlogo").attr("class","fa fa-mars");
    }
    else
    {$("#nv").attr("checked","checked");
        $("#genderlogo").attr("class","fa fa-venus");
    }
    var x = document.getElementById("usereducationLevel");
    if(json.education_level=="高中生"){
        x.options[0].selected = true;
    }
    else if(json.education_level=="大专") {
        x.options[1].selected = true;
    }
    else if(json.education_level=="本科"){
        x.options[2].selected = true;
    }
    else if(json.education_level=="研究生"){
        x.options[3].selected = true;
    }
    else if(json.education_level=="博士"){
        x.options[4].selected = true;
    }
// ---------------------------
    $(document).ready(function(){
        var date=new Date();//创建日期对象
        var year=date.getFullYear();//获取当前年份
        for(var i=year-100;i<=year;i++){//在id为year的selector附加option选项
            if(i==result[0])
            {$("#year").append("<option value=\""+i+"\" selected=\"selected\">"+i+"</option>");}
            else
            {$("#year").append("<option value=\""+i+"\">"+i+"</option>");
                //append函数附加html到元素结尾处}
            }
        }
        for(var i=1;i<=12;i++){
            if(i==result[1])
            {$("#month").append("<option value=\""+i+"\" selected=\"selected\">"+i+"</option>");}
            else
            {$("#month").append("<option value=\""+i+"\">"+i+"</option>");}//为Id为month的selector附加option选项
        }
        getDays($("#month").val(),$("#year").val());//执行函数getDays()
    });
    function getDaysInMonth(month,year){//年月对应的日数算法
        var days;
        if (month==1 || month==3 || month==5 || month==7 || month==8 || month==10 || month==12) {
            days=31;//固定31
        }else if (month==4 || month==6 || month==9 || month==11){
            days=30;//固定30
        }else{
            if ((year%4 == 0 && year%100 != 0) || (year%400 == 0)) {     //排除百年，每四年一闰；每四百年一闰；
                days=29; //闰年29
            }else {
                days=28; //平年28
            }
        }
        return days;//返回该年月的日数
    }
    function getDays(){
        var year = $("#year").val();//year selector onchange="getDays()"动态获取用户选择的year值
        var month = $("#month").val();//month selector onchange="getDays()"动态获取用户选择的month值
        var days = getDaysInMonth(month,year);//调用算法函数计算对应年月的日数
        $("#day").empty();//调用empty()函数清空day selector options，然后再append函数往day selector添加options
        for(var i=1;i<=days;i++){
            if(i==result[2])
            {$("#day").append("<option value=\""+i+"\" selected=\"selected\">"+i+"</option>");}
            else
            {$("#day").append("<option value=\""+i+"\">"+i+"</option>");}
        }
    }
}
refreshInfo();