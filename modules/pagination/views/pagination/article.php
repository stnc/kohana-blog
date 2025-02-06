<div class="page">

	<?php if ($first_page !== FALSE): ?>
		<a href="<?php echo HTML::chars($page->url($first_page)) ?>" rel="first">First</a>
	<?php else: ?>
	  First Page
	<?php endif ?>

	<?php if ($previous_page !== FALSE): ?>
		<a href="<?php echo HTML::chars($page->url($previous_page)) ?>" rel="prev">Prev</a>
	<?php else: ?>
		Last Page
	<?php endif ?>

	<?php for ($i = 1; $i <= $total_pages; $i++): ?>
	
		<?php if ($i == $current_page): ?>
			<strong><?php echo $i ?></strong>
		<?php else: ?>
			<a href="<?php  echo $page->url($i) ;?>"><?php echo $i ?></a>
		<?php endif ?>

	<?php endfor ?>

	<?php if ($next_page !== FALSE): ?>
		<a href="<?php echo HTML::chars($page->url($next_page)) ?>" rel="next">Next Page</a>
	<?php else: ?>
		Next Page
	<?php endif ?>

	<?php if ($last_page !== FALSE): ?>
		<a href="<?php echo HTML::chars($page->url($last_page)) ?>" rel="last">Last Page</a>
	<?php else: ?>
		Last Page
	<?php endif ?>

</div><!-- .pagination -->
