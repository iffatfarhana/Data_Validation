<?php  if (count($errors) > 0) : ?>
    <div class="alert alert-info text-center">
		<?php foreach ($errors as $error) : ?>
			<strong><?php echo $error ?></<strong>
		<?php endforeach ?>
    </div>
<?php  endif ?>