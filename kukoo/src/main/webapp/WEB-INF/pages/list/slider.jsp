<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="/WEB-INF/pages/base/head.jsp"%> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=basePath %>javascript/bootstrap-3.3.7-dist/css/bootstrap-slider.min.css" />
    <style>
        *{
            margin:0;
            padding:0;
        }
        body{
            padding-top:100px;
            padding-left:500px;
            background-color: #E0E0E0;
        }
        .slider.slider-horizontal .tooltip{
            transform:none;
        }
        .slider.slider-horizontal .tooltip.tooltip-min,
        .slider.slider-horizontal .tooltip.tooltip-max{
            display:none;
        }
        .slider.slider-horizontal .slider-tick-label-container {
            margin-top: 40px;
        }
    </style>
</head>
<body>
    <h1>0</h1>
    <br />
    <br />
    <input id="ex10" type="text" data-slider-handle="custom" />

    <h1>1</h1>
    <br />
    <br />
    <input id="ex2" type="text" class="span2" value="" data-slider-min="10" data-slider-max="1000" data-slider-step="5" data-slider-value="[250,450]" /> 

    <br />
    <h1>2</h1>
    <br />
    <br />
    <input id="ex12b" type="text" /><br />


    <br />
    <h1>3</h1>
    <br />
    <br />
    <input id="ex13" type="text" data-slider-ticks="[0, 100, 200, 300, 400]" data-slider-ticks-snap-bounds="30" data-slider-ticks-labels='["$0", "$100", "$200", "$300", "$400"]' />


    <br />
    <h1>4</h1>
    <br />
    <br />
    <input id="ex14" type="text" data-slider-ticks="[0, 100, 200, 300, 400]" data-slider-ticks-snap-bounds="30" data-slider-ticks-labels='["$0", "$100", "$200", "$300", "$400"]' ticks_positions="[0, 30, 60, 70, 90, 100]" />


    <br />
    <h1>5</h1>
    <br />
    <br />
    <input id="ex17b" type="text" />
</body>

</html>
<script src="js/jquery-2.1.4.min.js"></script>
<script src="lib/bootstrap-slider.min.js"></script>
<script>
    $(function () {
        //0
        $("#ex10").slider({});

        // 1
        $("#ex2").slider({});

        //2
        $("#ex12b").slider({
            id: "slider12b",
            min: 0,
            max: 10,
            range: true,
            value: [3, 7]
        });

        //3
        $("#ex13").slider({
            ticks: [0, 100, 200, 300, 400],
            ticks_labels: ['$0', '$100', '$200', '$300', '$400'],
            ticks_snap_bounds: 30
        });

        //4
        $("#ex14").slider({
            ticks: [0, 100, 200, 300, 400],
            ticks_positions: [0, 30, 60, 70, 90, 100],
            ticks_labels: ['$0', '$100', '$200', '$300', '$400'],
            ticks_snap_bounds: 30
        });

        //5
        $("#ex17b").slider({
            min: 0,
            max: 10,
            value: 0,
            orientation: 'vertical',
            tooltip_position: 'left'
        });
    })
</script>