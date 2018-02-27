@extends("frontend.master")
@section("content")
<?php 
use App\ProjectModel;
use App\CategoryProductModel;
use Illuminate\Support\Facades\DB;
$setting=getSettingSystem();
$telephone=$setting['telephone']['field_value'];
$email_to=$setting['email_to']['field_value'];
$facebook_url=$setting['facebook_url']['field_value'];
$twitter_url=$setting['twitter_url']['field_value'];
$google_plus=$setting['google_plus']['field_value'];
$youtube_url=$setting['youtube_url']['field_value'];
$instagram_url=$setting['instagram_url']['field_value'];
$pinterest_url=$setting['pinterest_url']['field_value'];   
$company=$setting['contacted_person']['field_value'];
?>
<div class="container">
	<div class="col-lg-12">
		<?php 
		$data_slideshow=getBanner("slideshow");
		if(count($data_slideshow) > 0){
			$items=$data_slideshow["items"];
			if(count($items) > 0){
				?>
				<div class="slideshow">
					<script type="text/javascript" language="javascript">        
						$(document).ready(function(){
							$(".slick-slideshow").slick({
								dots: false,
								autoplay:true,
								arrows:false,
								adaptiveHeight:true,
								slidesToShow: 1,
								slidesToScroll: 1,        
							});  
						});     
					</script>
					<div class="slick-slideshow">    
						<?php 
						foreach ($items as $key => $value) {
							$alt=$value["alt"];
							$featuredImg=asset('upload/'.$value["image"]);
							?>
							<div><img src="<?php echo $featuredImg; ?>" alt="<?php echo $alt; ?>" /></div>
							<?php 
						}
						?>              
					</div>
				</div>
				<?php
			}  
		}
		?>
	</div>
</div>
@endsection()               