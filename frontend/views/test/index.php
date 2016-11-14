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
    <link rel="stylesheet" type="text/css" href="css/index.css"/>
    <script src="js/jquery-1.7.2.js"></script>
    <script src=" https://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
    <script src="layer/layer.js"></script>
    <title>活动页面</title>
</head>
<body>
<div class="all" style="position: relative">
    <div class="banner">
        <img src="<?php echo '../../backend/web/'.$imgUrl;?>"/>
    </div>
    <div class="content">
        <div class="text">
            <?php foreach ($text as $v){?>
                <?php echo "<p>".$v['name']."</p>";?>
<!--            <p>背吧最爱你的人弄丢了，根根新河只为你付出全部都可以，脑海是你全部都是你。</p>-->
<!--            <p>为你付出我全心，放弃所有都可以。如果全世界都可以放弃撒等哈啊说的话；啊等哈溜达l阿沙老师扩大带上啊说了</p>-->
            <?php }?>
        </div>
        <div class="img">

                <a href="<?php if($gz == 1){echo Url::toRoute('test/page2');}else{echo Url::toRoute('test/gz');} ?>"><img src="img/da.png"/></a>



        </div>

    </div>

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

