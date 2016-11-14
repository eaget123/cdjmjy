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
    <link rel="stylesheet" type="text/css" href="css/ph.css"/>
    <script src=" https://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
    <script src="layer/layer.js"></script>
    <title>学校排行榜</title>
</head>
<body>
<div class="ph">
    <ul>
        <?php foreach ($school as $k=>$v){?>
            <?php if($k == 0){?>
                <li>
                    <div class="aa" style="position: relative;">
                        <img src="img/fxph.png"/>
                        No.1
                    </div>
                    <div class="bb">
                        <img src="<?php echo '../../backend/web/'.$v['head_url'];?>"/>

                    </div>
                    <div class="cc">
                        <?php echo $v['name']?>

                    </div>
                    <div class="dd">

                        <?php if($total == 0){echo "0%";}else{echo round($v['total'] / $total * 100).'%';}?>

                    </div>
                    <div class="ee">
                        <a href="<?php echo Url::toRoute(['test/page3','id'=>$v['id']]);?>"><img src="img/xiao.png"/></a>

                    </div>

                </li>
            <?php }else if($k == 1){?>
                <li>
                    <div class="aa" style="position: relative; color: #ffa800;">
                        No.2
                    </div>
                    <div class="bb">
                        <img src="<?php echo '../../backend/web/'.$v['head_url'];?>"/>

                    </div>
                    <div class="cc">
                        <?php echo $v['name']?>

                    </div>
                    <div class="dd" style="color: #ffa800;">
                        <?php if($total == 0){echo "0%";}else{echo round($v['total'] / $total * 100).'%';}?>

                    </div>
                    <div class="ee">
                        <a href="<?php echo Url::toRoute(['test/page3','id'=>$v['id']]);?>"><img src="img/xiao.png"/></a>

                    </div>
                </li>
            <?php }else if($k == 2){?>
                <li>
                    <div class="aa" style="position: relative; color: #ff002a">

                        No.3
                    </div>
                    <div class="bb">
                        <img src="<?php echo '../../backend/web/'.$v['head_url'];?>"/>

                    </div>
                    <div class="cc">
                        <?php echo $v['name']?>

                    </div>
                    <div class="dd" style="color: #ff002a">
                        <?php if($total == 0){echo "0%";}else{echo round($v['total'] / $total * 100).'%';}?>

                    </div>
                    <div class="ee">
                        <a href="<?php echo Url::toRoute(['test/page3','id'=>$v['id']]);?>"><img src="img/xiao.png"/></a>

                    </div>
                </li>
            <?php }else{?>
                <li>
                    <div class="aa" style="position: relative; color: #E0E0E0;">

                        No.<?php echo $k+1;?>
                    </div>
                    <div class="bb">
                        <img src="<?php echo '../../backend/web/'.$v['head_url'];?>"/>

                    </div>
                    <div class="cc">
                        <?php echo $v['name']?>

                    </div>
                    <div class="dd" style="color: #E0E0E0;">
                        <?php if($total == 0){echo "0%";}else{echo round($v['total'] / $total * 100).'%';}?>

                    </div>
                    <div class="ee">
                        <a href="<?php echo Url::toRoute(['test/page3','id'=>$v['id']]);?>"><img src="img/xiao.png"/></a>

                    </div>
                </li>
            <?php }?>
        <?php }?>

    </ul>

</div>
<script>
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
            },
            cancel: function () {
                // 用户取消分享后执行的回调函数
            }
        });

    });
</script>
</body>
</html>

