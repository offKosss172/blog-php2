<?php
$sql = "SELECT * FROM `posts`";
	
if($result = $conn->query($sql)):
	foreach($result as $row):
		$categorySQL = "SELECT * FROM categories WHERE id=" . $row['category_id'];
		$categoryResult = $conn->query($categorySQL);
		$category = $categoryResult->fetch_assoc();
		
?>

<div class="col-md-4">
    <div class="blog-entry ftco-animate">
		<a href="#" class="img img-2" style="background-image: url(<?php echo $row['preview'];  ?>);"></a>
		<div class="text text-2 pt-2 mt-3">
		    <span class="category mb-3 d-block"><a href="#"><?php echo $category['title'] ?></a></span>
	        <h3 class="mb-4"><a href="#"><?php echo $row['title'];  ?></a></h3>
	        <p class="mb-4"><?php echo $row['description'];  ?></p>
			<div class="author mb-4 d-flex align-items-center">
	            		<a href="#" class="img" style="background-image: url(/assets/images/person_2.jpg);"></a>
	            		<div class="ml-3 info">
	            			<span>Written by</span>
	            			<h3><a href="#">Dave Lewis</a>, <span>Nov. 28, 2018</span></h3>
	            		</div>
	            	</div>
	<div class="meta-wrap align-items-center">
	    <div class="half order-md-last">
		    <p class="meta">
		        <span><i class="icon-heart"></i>3</span>
		        <span><i class="icon-eye"></i>100</span>
		        <span><i class="icon-comment"></i>5</span>
		    </p>
	    </div>
	        <div class="half">
		        <p><a href="#" class="btn py-2">Continue Reading <span class="ion-ios-arrow-forward"></span></a></p>
	        </div>
	    </div>
	</div>
	</div>
</div>

<?php 
	endforeach;
endif;

?>


