function personChart(){
    var j;
    var lab = [];
    $.ajax({
        type:"GET",
        async:false,
        url: '../../personDistributionServlet',
        success:function (data) {
            j = JSON.parse(data);
            for(var i=0;i < j.length;i++){
                lab.push(j[i].name);
            }
        }
    });
// 路径配置
    require.config({
        paths: {
            echarts: 'http://echarts.baidu.com/build/dist'
        }
    });
// 使用
    require(
        [
            'echarts',
            'echarts/chart/pie' // 使用柱状图就加载bar模块，按需加载
        ],
        function (ec) {
            // 基于准备好的dom，初始化echarts图表
            var myChart = ec.init(document.getElementById('main'));
            $('#chartbtn').on('shown.bs.tab', function (ec) {
                var option = {
                    title : {
                        text: '人员分布',
                        textStyle:{
                            fontSize:30
                        },
                        x:'center'
                    },
                    tooltip : {
                        trigger: 'item',
                        formatter: "{a} <br/>{b} : {c} ({d}%)",
                        fontSize: 30
                    },
                    legend: {
                        x : 'left',
                        y : 'top',
                        orient: 'vertical',
                        itemHeight:18,
                        textStyle:{
                            fontSize:18
                        },
                        data:lab
                    },
                    toolbox: {
                        show : true,
                        feature : {
                            mark : {show: true},
                            dataView : {show: true, readOnly: false},
                            magicType : {
                                show: true,
                                type: ['pie', 'funnel']
                            },
                            restore : {show: true},
                            saveAsImage : {show: true}
                        }
                    },
                    calculable : true,
                    series : [
                        {
                            name:'人员分布',
                            type:'pie',
                            radius : ['10%', '60%'],
                            center : ['50%', '50%'],
                            roseType : 'area',
                            width: '40%',       // for funnel
                            max: 40,            // for funnel
                            itemStyle : {
                                normal : {
                                    label : {
                                        show : true,
                                        textStyle:{
                                            fontSize:18
                                        }
                                    },
                                    labelLine : {
                                        show : true,
                                        length:60
                                    }
                                },
                                emphasis : {
                                    label : {
                                        show : true
                                    },
                                    labelLine : {
                                        show : true
                                    }
                                }
                            },
                            data:j
                        }
                    ]
                };

                // 为echarts对象加载数据
                myChart.resize();
                myChart.setOption(option);
                myChart.setTheme( 'infographic');
            });
        }
    );
}
function salaryChart(){
    var j;
    var lab = [];
    $.ajax({
        type:"GET",
        async:false,
        url: '../../salaryProfileServlet',
        success:function (data) {
            j = JSON.parse(data);
            for(var i=0;i < j.length;i++){
                lab.push(j[i].name);
            }
        }
    });
// 路径配置
    require.config({
        paths: {
            echarts: 'http://echarts.baidu.com/build/dist'
        }
    });
// 使用
    require(
        [
            'echarts',
            'echarts/chart/pie' // 使用柱状图就加载bar模块，按需加载
        ],
        function (ec) {
            // 基于准备好的dom，初始化echarts图表
            var myChart = ec.init(document.getElementById('chart1'));
            $('#chart1btn').on('shown.bs.tab', function (ec) {
                var option = {
                    title : {
                        text: '工资概况',
                        textStyle:{
                            fontSize:30
                        },
                        x:'center'
                    },
                    tooltip : {
                        trigger: 'item',
                        formatter: "{a} <br/>{b} : {c} ({d}%)",
                        fontSize: 30
                    },
                    legend: {
                        x : 'left',
                        y : 'top',
                        orient: 'vertical',
                        itemHeight:18,
                        textStyle:{
                            fontSize:18
                        },
                        data:lab
                    },
                    toolbox: {
                        show : true,
                        feature : {
                            mark : {show: true},
                            dataView : {show: true, readOnly: false},
                            magicType : {
                                show: true,
                                type: ['pie', 'funnel']
                            },
                            restore : {show: true},
                            saveAsImage : {show: true}
                        }
                    },
                    calculable : true,
                    series : [
                        {
                            name:'工资概况',
                            type:'pie',
                            radius : ['10%', '60%'],
                            center : ['50%', '50%'],
                            roseType : 'area',
                            width: '40%',       // for funnel
                            max: 40,            // for funnel
                            itemStyle : {
                                normal : {
                                    label : {
                                        show : true,
                                        textStyle:{
                                            fontSize:18
                                        }
                                    },
                                    labelLine : {
                                        show : true,
                                        length:60
                                    }
                                },
                                emphasis : {
                                    label : {
                                        show : true
                                    },
                                    labelLine : {
                                        show : true
                                    }
                                }
                            },
                            data:j
                        }
                    ]
                };

                // 为echarts对象加载数据
                myChart.resize();
                myChart.setOption(option);
                myChart.setTheme( 'infographic');
            });
        }
    );
}
function seasonChart(){
    var lab = [];
    $.ajax({
        type:"GET",
        async:false,
        url: '../../seasonChartServlet',
        success:function (data) {
            var datas = data.toString();
            lab = datas.split('-');
        }
    });
// 路径配置
    require.config({
        paths: {
            echarts: 'http://echarts.baidu.com/build/dist'
        }
    });
// 使用
    require(
        [
            'echarts',
            'echarts/chart/bar' // 使用柱状图就加载bar模块，按需加载
        ],
        function (ec) {
            // 基于准备好的dom，初始化echarts图表
            var myChart = ec.init(document.getElementById('chart2'));
            $('#jitubtn').on('shown.bs.tab', function (ec) {
                var option = {
                    title:{
                        show:true,
                        text:"本季度人事报表",
                        x:"center"
                    },
                    tooltip: {
                        show: true
                    },
                    legend: {
                        data:['人数'],
                        textStyle:{
                            fontSize:20
                        },
                        itemHeight:20,
                        x:"right"
                    },
                    xAxis : [
                        {
                            type : 'category',
                            data : ["入职人数","离职人数","调动人数"]
                        }
                    ],
                    yAxis : [
                        {
                            type : 'value'
                        }
                    ],
                    series : [
                        {
                            "name":"人数",
                            "type":"bar",
                            "data":lab
                        }
                    ]
                };


                // 为echarts对象加载数据
                myChart.resize();
                myChart.setOption(option);
                myChart.setTheme('infographic');
            });
        }
    );
}
function monthChart(){
    var lab = [];
    $.ajax({
        type:"GET",
        async:false,
        url: '../../monthChartServlet',
        success:function (data) {
            var datas = data.toString();
            lab = datas.split('-');
        }
    });
// 路径配置
    require.config({
        paths: {
            echarts: 'http://echarts.baidu.com/build/dist'
        }
    });
// 使用
    require(
        [
            'echarts',
            'echarts/chart/bar' // 使用柱状图就加载bar模块，按需加载
        ],
        function (ec) {
            // 基于准备好的dom，初始化echarts图表
            var myChart = ec.init(document.getElementById('chart3'));
            $('#yuetubtn').on('shown.bs.tab', function (ec) {
                var option = {
                    title:{
                        show:true,
                        text:"本月度人事报表",
                        x:"center"

                    },
                    tooltip: {
                        show: true
                    },
                    legend: {
                        data:['人数'],
                        textStyle:{
                            fontSize:20
                        },
                        itemHeight:20,
                        x:"right"
                    },
                    xAxis : [
                        {
                            type : 'category',
                            data : ["入职人数","离职人数","调动人数"]
                        }
                    ],
                    yAxis : [
                        {
                            type : 'value'
                        }
                    ],
                    series : [
                        {
                            "name":"人数",
                            "type":"bar",
                            "data":lab
                        }
                    ]
                };


                // 为echarts对象加载数据
                myChart.resize();
                myChart.setOption(option);
                myChart.setTheme('infographic');
            });
        }
    );
}
function yearChart(){
    var lab = [];
    $.ajax({
        type:"GET",
        async:false,
        url: '../../yearChartServlet',
        success:function (data) {
            var datas = data.toString();
            lab = datas.split('-');
        }
    });
// 路径配置
    require.config({
        paths: {
            echarts: 'http://echarts.baidu.com/build/dist'
        }
    });
// 使用
    require(
        [
            'echarts',
            'echarts/chart/bar' // 使用柱状图就加载bar模块，按需加载
        ],
        function (ec) {
            // 基于准备好的dom，初始化echarts图表
            var myChart = ec.init(document.getElementById('chart4'));
            $('#niantubtn').on('shown.bs.tab', function (ec) {
                var option = {
                    title:{
                        show:true,
                        text:"本年度人事报表",
                        x:"center"
                    },
                    tooltip: {
                        show: true
                    },
                    legend: {
                        data:['人数'],
                        textStyle:{
                            fontSize:20
                        },
                        itemHeight:20,
                        x:"right"
                    },
                    xAxis : [
                        {
                            type : 'category',
                            data : ["入职人数","离职人数","调动人数"]
                        }
                    ],
                    yAxis : [
                        {
                            type : 'value'
                        }
                    ],
                    series : [
                        {
                            "name":"人数",
                            "type":"bar",
                            "data":lab
                        }
                    ]
                };


                // 为echarts对象加载数据
                myChart.resize();
                myChart.setOption(option);
                myChart.setTheme('infographic');
            });
        }
    );
}
personChart();
salaryChart();
seasonChart();
monthChart();
yearChart();