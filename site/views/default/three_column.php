<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>
			<?php echo $title?>
		</title>
		<script type="text/javascript" src="<?php echo base_url()?>templates/main_tpl/js/main.js"></script>
		<link rel="stylesheet" type="text/css" href="<?php echo base_url()?>templates/main_tpl/css/layout/three_column.css" />
	</head>
	<body>
		<div class="wrapper">
			<div class="header">
				<?php echo $header?>
			</div>
			<div class="content">
				<div class="column1">
					<?php echo $column1?>
				</div>
				<div class="column2">
					<?php echo $column2?>
				</div>
				<div class="column3">
					<?php echo $column3?>
				</div>
				<div class="side-bar">
					<?php //echo $side_bar?>
					<?php echo Modules::run('chat_bar')?>
				</div>
			</div>
		</div>
	</body>
</html>
