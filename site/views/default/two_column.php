<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>
			<?php echo $title?>
		</title>
		<script type="text/javascript" src="<?php echo base_url()?>templates/main_tpl/js/main.js"></script>
		<link rel="stylesheet" type="text/css" href="<?php echo base_url()?>templates/main_tpl/css/layout/two_column.css" />
		<link rel="stylesheet" type="text/css" href="<?php echo base_url()?>templates/main_tpl/css/main.css" />
	</head>
	<body>
		<div class="wrapper">
			<div class="header">
				<?php //echo $header?>
				<?php echo Modules::run('info_bar')?>
			</div>
			<div class="content">
				<div class="content-left">
					<div class="head-line-bar">
						<?php echo $head_line_bar?>
					</div>
					<div class="column">
						<div class="column1">
							<?php echo $column1?>
						</div>
						<div class="column2">
							<?php echo $column1?>
						</div>
					</div>
				</div>
				<div class="side-bar">
					<?php //echo $side_bar?>
					<?php echo Modules::run('chat_bar')?>
				</div>
			</div>
		</div>
	</body>
</html>
