function colorSelect(dept_before,dept_after) {
    var weight_before = 0;
    var weight_after = 0;
    $.ajax({
        type:"GET",
        async:false,
        url:"../../DeptWeightServlet",
        success:function (data) {
            var json = JSON.parse(data);
            for(var i=0;i<json.length;i++){
                if(json[i].name == dept_before){
                    var inJSON = json[i].info;
                    weight_before = inJSON.weight;
                }
            }
            for(var i=0;i<json.length;i++){
                if(json[i].name == dept_after){
                    var inJSON = json[i].info;
                    weight_after = inJSON.weight;
                }
            }
            var res;
            if(weight_before < weight_after){
                res = '1';
                // alert(res);
                return res;
            }
            else if(weight_before > weight_after){
                res = '-1';
                // alert(res);
                return res;
            }
            else{
                res = '0';
                // alert(res);
                return res;
            }
        }
    })
}