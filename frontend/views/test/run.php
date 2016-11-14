<?php
use yii\helpers\Url;
require_once "jsdk/jssdk.php";
$appid = "wx62b58fd5e1f122df";
$secret = "125d993cee5e458f4987759e7f90434d";
$jssdk = new JSSDK($appid, $secret);
$signPackage = $jssdk->GetSignPackage();
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/run.css"/>
    <script src="js/jquery-1.7.2.js"></script>
    <script src="layer/layer.js"></script>
    <script src=" https://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
    <title>点击小脚吖</title>
</head>
<body>
<div class="run">
    <div class="top">
<!--        <img src="img/qi1.png"/>-->

    </div>
    <div class="cen">
        <input type="hidden" id="top_e" value="<?php echo $total / 400000;?>">
        已跑<span id="total_e"><?php echo $total;?></span>米
    </div>
    <div class="bo1">

    </div>
    <div class="bo2">
<!--        <a href="--><?php //echo Url::toRoute(['test/page4','id'=>$school_id]);?><!--"><img src="img/da.png"/></a>-->
        <img src="img/da.png" onclick="run_deal(<?php echo $school_id;?>)"/>

    </div>
    <div id="aa_e" style="display: none; position: absolute; top: 0%; width: 100%; height: 100%; background: url('img/fx.png') ;background-size: 100% 100%">

        <span id="jifen" style="position: absolute; top: 40%; left: 40%; color: white; z-index: 88; opacity: 1; font-family: '微软雅黑' ; font-weight: 800"></span>
    </div>

</div>
<script>
    var top_e=  Math.floor(55-(55-16)*$('#top_e').val());
    $(".cen").css('top',top_e+'%');
    function aa(){
        $("#aa_e").css('display','block');

    }
    function run_deal(id){
        $.ajax({
            cache: true,
            type: "POST",
            dataType: "json",
            url:"<?php echo Url::toRoute(['test/page4']);?>",
            data:{id:id,open_id:<?php echo "'".$open_id."'";?>},// 你的formid
            async: false,
            success: function(data) {
                if(data.err == '-1'){
                    layer.msg('您今天已经跑了三次！明天再来跑吧');
                }else if(data.err == '-3'){
                    layer.msg('活动已结束');
                }else{
                    var total = $("#total_e").text();

                    var a = parseInt(total)+parseInt(data.msg);

                    $("#total_e").text(a);
                    layer.msg("恭喜您跑了"+data.msg+"米");

                    if(data.err == '-2')
                    {
                        $("#jifen").text("恭喜你一共跑了"+data.total+"米");
                        setTimeout("aa()",0);
                    }



                }
            }
        });
    }
    wx.config({
        debug: false,
        appId: '<?php echo $signPackage["appId"];?>',
        timestamp: <?php echo $signPackage["timestamp"];?>,
        nonceStr: '<?php echo $signPackage["nonceStr"];?>',
        signature: '<?php echo $signPackage["signature"];?>',
        jsApiList: [
            'onMenuShareTimeline',
            'onMenuShareAppMessage',
            'onMenuShareQQ',
            'onMenuShareWeibo',
            'onMenuShareQZone',
        ]
    });
    wx.ready(function () {
        // 在这里调用 API
        wx.onMenuShareAppMessage({
            title: '关爱留守儿童', // 分享标题
            desc: '点亮“小脚丫”，照亮“光脚儿童的”上学路', // 分享描述
            link: 'http://www.sctanzi.com/chadmin-ok/frontend/web/index.php?r=test%2Findex', // 分享链接
            imgUrl: 'http://www.sctanzi.com/chadmin-ok/frontend/web/img/banne.png', // 分享图标
            type: '', // 分享类型,music、video或link，不填默认为link
            dataUrl: '', // 如果type是music或video，则要提供数据链接，默认为空
            success: function () {
                $("#aa_e").css('display','none');
            },
            cancel: function () {
                // 用户取消分享后执行的回调函数
            }
        });
        wx.onMenuShareTimeline({
            title: '关爱留守儿童', // 分享标题
            link: 'http://www.sctanzi.com/chadmin-ok/frontend/web/index.php?r=test%2Findex', // 分享链接
            imgUrl: 'http://www.sctanzi.com/chadmin-ok/frontend/web/img/banne.png', // 分享图标
            success: function () {
                // 用户确认分享后执行的回调函数
                $("#aa_e").css('display','none');
            },
            cancel: function () {
                // 用户取消分享后执行的回调函数
            }
        });

    });

</script>
</body>
</html>

