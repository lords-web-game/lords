<?php
	include_once('init.php');
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
	<meta content="text/html; charset=UTF-8" http-equiv="Content-Type" />
	<title>THE LORDS</title>
	<link id="site_icon" rel="icon" href="design/images/icon_lords.ico" type="image/x-icon" />
	<script type="text/javascript" src="general_js/mootools.js?<?php echo $SITE_conf['revision']; ?>"></script>
	<script type="text/javascript" src="general_js/mootools-more.js?<?php echo $SITE_conf['revision']; ?>"></script>
	<script type="text/javascript" src="general_js/fx.js?<?php echo $SITE_conf['revision']; ?>"></script>
	<script type="text/javascript" src="site/js_libs/winds.js?<?php echo $SITE_conf['revision']; ?>"></script>
	<script type="text/javascript" src="site/js_libs/i18n_text_getters_pregame.js?<?php echo $SITE_conf['revision']; ?>"></script>
	<script type="text/javascript" src="site/js_libs/static_libs.js?<?php echo $SITE_conf['revision']; ?>"></script>
	<script type="text/javascript" src="site/js_libs/cmd_helper.js?<?php echo $SITE_conf['revision']; ?>"></script>
	<script type="text/javascript" src="general_js/jquery-3.2.1.min.js?<?php echo $SITE_conf['revision']; ?>"></script>
	<script>
		jQuery.noConflict();
	</script>
        <?php //if (getSeason()=='winter') echo '<script type="text/javascript" src="general_js/snowstorm.js?'.$SITE_conf['revision'].'"></script>';?>
        <link rel="stylesheet" type="text/css" href="design/css/pregame/reset.css?<?php echo $SITE_conf['revision']; ?>" />
	<link rel="stylesheet" type="text/css" href="design/css/pregame/main.css?<?php echo $SITE_conf['revision']; ?>" />
	<script>
		var load_frame = '<?php echo $load_frame; ?>';
		var site_domen = '<?php echo $SITE_conf['domen']; ?>';
		var my_user_id = '<?php echo $_SESSION['user_id']; ?>';
		USER_LANGUAGE = <?= LangUtils::getCurrentLangNumber($_SESSION['lang']); ?>;
	</script>
	<style>
		#map {
			border:6px outset black;
			padding:50px;
			margin:20px;
		}
		#log_form,#logged_form {
			border:6px outset black;
			padding:50px;
			margin:20px;
		}
		#login_error{
			color:red;
			display:none;
		}
		.mask {
			opacity:0.5;
			background-color:black;
		}
	</style>
</head>
<body>
	<div id="wind">
		<div id="panor">
				<div class="rel" id="rel">

    			</div><!--.rel-->
    	</div><!--#panor-->
	</div><!--#wind-->
	<script type="text/javascript" src="general_js/ws/build/ws.bundle.js?<?php echo $SITE_conf['revision']; ?>"></script>
	<script>
		window.WSClient.joinChannel('base');
	</script>
</body>
