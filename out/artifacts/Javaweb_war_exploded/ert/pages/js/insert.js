var yuyan=1;
var jiating=1;
var jinli=1;
$("#tianjiajinli").on('click',function(){
    $("#jiuzhijinli").append("<div class='form-group'><label class='col-sm-1 control-label'>开始</label><div class='col-sm-5'><input type='text' class='form-control' id='firstname' placeholder='请输入时间'></div><label for='firstname' class='col-sm-1 control-label'>结束</label><div><div class='col-sm-5'><input type='text' class='form-control' placeholder='请输入时间'></div><label for='firstname' class='col-sm-1 control-label'>地址</label><div class='col-sm-11'><input type='text' class='form-control' id='lastname' placeholder='请输入地址'></div></div></div>");
    jinli++;
});
$("#tianjialianxi").on('click',function(){
    $("#jiatingguanxi").append("<div class='form-group'><label class='col-sm-1 control-label'>姓名</label><div class='col-sm-5'><input type='text' class='form-control' id='firstname' placeholder='请输入姓名'></div><label for='firstname' class='col-sm-1 control-label'>关系</label><div><div class='col-sm-5'><input type='text' class='form-control' placeholder='请输入关系'></div><label for='firstname' class='col-sm-1 control-label'>地址</label><div class='col-sm-11'><input type='text' class='form-control' id='lastname' placeholder='请输入公司'></div></div></div>");
    jiating++;
});
$("#tianjiayuyan").on('click',function(){
    $("#yuyannengli").append("<div class='form-group'><label class='col-sm-1 control-label'>语种</label><div class='col-sm-5'><input type='text' class='form-control' id='firstname' placeholder='请输入语种'></div><label for='firstname' class='col-sm-1 control-label'>等级</label><div><div class='col-sm-5'><input type='text' class='form-control' placeholder='请输入等级'></div></div></div>");
    yuyan++;
});

$("#zhuche").on('click',function(){
    alert("添加成功");
    var dian1=$("#dian11");//语言
    var dian2=$("#dian22");//家庭
    var dian3=$("#dian33");//经历

    var json = {
        last_name:$("#q1").val(),
        first_name:$("#q2").val(),
        sex:$('input:radio[name="sex"]:checked').val(),
        department:$("#q3").val(),
        position:$("#q4").val(),
        email:$("#q5").val(),
        phone:$("#q6").val(),
        salary:$("#q7").val(),
        edu:$("#q8").val(),
        address:$("#q9").val(),
        birth:$("#q10").val(),
        yuyanshu:[],
        jiatingshu:[],
        jinlishu:[]
    };
    for(var i=0;i<yuyan;i++)
    {
        var j = {
            yuzhong:$("#dian1 label:first-child").next().firstChild.val(),
            dengji:$("#dian1 label:first-child").next().firstChild.val()
        };
        json.yuyanshu[i] = j;
        dian1=dian1.next();
    }

    for(var i=0;i<jiating;i++)
    {
        var js = {
            xingming:$("#dian2 label:first-child").next().firstChild.val(),
            guanxi:$("#dian1 label:first-child").next().firstChild.val(),
            dizhi:$("#dian1 label:first-child").next().firstChild.val()
        };
        json.jiatingshu[i] = js;
        dian2=dian2.next();
    }
    for(var i=0;i<jinli;i++)
    {
        var jso = {
            kaishi:$("#dian3").children("input")[0].val(),
            jieshu:$("#dian3").children("input")[1].val(),
            gongsi:$("#dian3").children("input")[2].val()
        };
        json.jinlishu[i] = jso;
        dian3=dian3.next();
    }
    alert(JSON.stringify(json));
    console.log(JSON.stringify(json));
});





// var json = {
//     last_name:"张",
//     first_name:"敏",
//     sex:"女",
//     department:"部门",
//     position:"岗位",
//     email:"666",
//     phone:"12345",
//     salary:,
//     edu:$("q8").val(),
//     address:$("q9").val(),
//     birth:$("q10").val(),
// };