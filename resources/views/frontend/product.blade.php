<?php 
use App\ProductModel;
use App\ProductParamModel;
use App\CategoryParamModel;
use App\CategoryProductModel;
use App\GroupMemberModel;
use Illuminate\Support\Facades\DB;
$setting=getSettingSystem();
if(count($item) > 0){        
	$id=$item["id"];
	$fullname = $item["fullname"];
	$intro=$item["intro"];
	$detail=$item['detail'];
    $technical_detail=$item['technical_detail'];  
    $video_id=$item['video_id'];
	$small_img=get_product_thumbnail($item['image']);
	$large_img=asset('upload/'.$item['image']) ;
	/* begin cập nhật count view */
	$count_view=(int)@$item['count_view'];
	$count_view++;
	$row                =   ProductModel::find((int)@$id); 
	$row->count_view=$count_view;
	$row->save();
	$count_view_text=number_format($count_view,0,",",".");
	/* end cập nhật count view */
	/* begin setting */
	$address=$setting['address']['field_value'];
	$email_to=$setting['email_to']['field_value'];
	$contacted_person=$setting['contacted_person']['field_value'];
	$telephone=$setting['telephone']['field_value'];
	
	$product_width = $setting['product_width']['field_value'];
	$product_height = $setting['product_height']['field_value'];
	/* end setting */    	
	$arrPicture=json_decode($item['child_image']);
	$arrPicture[]=$item['image']; 	
	$dataCategory=CategoryProductModel::find((int)@$item['category_id'])->toArray();   
	$breadcrumb= getBreadCrumbCategoryProduct($dataCategory);	
    ?>    
    
        <div class="breadcrumb-title margin-top-15">
            <?php echo $breadcrumb; ?>
        </div>        	           
            <div class="col-lg-4 no-padding-left">
                <div class="margin-top-15">
                    <div class="pdetail-chipu">
                        <div class="image-detail"><img class="zoom_img" src="<?php echo $small_img; ?>" data-zoom-image="<?php echo $large_img; ?>" /></div>
                    </div>                    
                </div>
                <?php 
                if(count($arrPicture) > 0){
                	?>
                	<div class="margin-top-5">
                		<script type="text/javascript" language="javascript">
                			$(document).ready(function(){
                				$(".prodetail").owlCarousel({
                					autoplay:true,                    
                					loop:true,
                					margin:2,                        
                					nav:true,            
                					mouseDrag: true,
                					touchDrag: true,                                
                					responsiveClass:true,
                					responsive:{
                						0:{
                							items:1
                						},
                						600:{
                							items:1
                						},
                						1000:{
                							items:4
                						}
                					}
                				});
                				var chevron_left='<i class="fa fa-chevron-left"></i>';
                				var chevron_right='<i class="fa fa-chevron-right"></i>';
                				$("div.prodetail div.owl-prev").html(chevron_left);
                				$("div.prodetail div.owl-next").html(chevron_right);
                			});                
                		</script>
                		<div class="owl-carousel prodetail owl-theme">
                			<?php 
                			for($i=0;$i<count($arrPicture);$i++){                                            
                				$small_thumbnail=asset('/upload/'.$product_width.'x'.$product_height.'-'.$arrPicture[$i]);    
                				$large_thumbnail=asset('/upload/'.$arrPicture[$i]);                            
                				?>
                				<div class="pdetail-chipu">									
                					<a href="javascript:void(0)" onclick="changeImage('<?php echo $small_thumbnail; ?>','<?php echo $large_thumbnail; ?>');"><img  src="<?php echo $small_thumbnail; ?>" width="<?php echo (int)$product_width/5; ?>" /></a>									                                        
                				</div>
                				<?php                                    
                			}                           
                			?>        
                		</div>
                	</div>
                	<?php
                }
                ?>                
            </div>
            <div class="col-lg-8 no-padding-left">
                <h1 class="margin-top-15 product-detail-title">
                    <?php echo $title; ?>
                </h1>
                <div class="margin-top-5">
                    <b>Lượt xem:</b>&nbsp;<?php echo $count_view; ?>
                </div>
                <hr class="product-ngang" />
                <div class="margin-top-5 tell-price">
                	<?php 
                	$price=$item['price'];
                	$sale_price=$item['sale_price'];
                	$html_price='';                     
                	if((int)@$sale_price > 0){              
                		$price_on_html ='<span class="pdetail-price-detail-on">'.fnPrice($sale_price).'</span>';
                		$price_off_html='<span class="price-detail-off">Giá cũ: '.fnPrice($price).'</span>' ;                 
                		$html_price='<div class="col-lg-4 no-padding-left">'.$price_on_html.'</div><div class="col-lg-8">'.$price_off_html.'</div><div class="clr"></div>'  ;              
                	}else{
                		$html_price='<span class="pdetail-price-on">'.fnPrice($price).'</span>' ;                  
                	}   	
                	echo $html_price;
                	?>
                </div>                
                <div class="box-product-param">
                	<!-- begin xuất xứ -->
                	<?php 
                    $query=\DB::table('category_param');
                    $query->where('alias','<>','mau')->where('alias','<>','kich-thuoc')->where('parent_id','=',0);
                    $data_pram=$query->select('category_param.id','category_param.fullname','category_param.alias')
                  ->groupBy('category_param.id','category_param.fullname','category_param.alias')
                  ->orderBy('category_param.sort_order', 'asc')
                  ->get()
                  ->toArray();    
                  $data_pram=convertToArray($data_pram);                  
                    if(count($data_pram) > 0){
                        foreach ($data_pram as $prm_key => $parm_value) {
                            $parm_alias=$parm_value['alias'];
                            $parm_fullname=$parm_value['fullname'];
                            $dataParamFather=CategoryParamModel::whereRaw('alias = ?',[$parm_alias])->select('id')->orderBy('sort_order','asc')->get()->toArray();
                            if(count($dataParamFather) > 0){
                                $dataParamChildren=CategoryParamModel::whereRaw('parent_id = ?',[(int)@$dataParamFather[0]['id']])->select('id','alias','fullname','param_value')->orderBy('sort_order','asc')->get()->toArray();
                                $arr_id=array();
                                if(count($dataParamChildren) > 0){
                                    foreach ($dataParamChildren as $prm_child_key => $prm_value){
                                        $arr_id[]=(int)@$prm_value['id'];
                                    }
                                    $dataParam=DB::table('product_param')
                                    ->whereIn('product_param.param_id',$arr_id)
                                    ->where('product_param.product_id',(int)@$id)
                                    ->select('id')
                                    ->get()
                                    ->toArray();
                                    if(count($dataParam) > 0){
                                        ?>
                                        <div class="padding-top-10">
                                            <div class="col-lg-3 no-padding-left"><b><?php echo $parm_fullname; ?></b></div>
                                            <div class="col-lg-9">
                                                <?php 
                                                foreach ($dataParamChildren as $key => $value) {
                                                    $dataParam=ProductParamModel::whereRaw('product_id = ? and param_id = ?',[(int)@$id,(int)@$value['id']])->select('id')->get()->toArray();
                                                    if(count($dataParam) > 0){
                                                        ?><div class="block-text"><?php echo $value['fullname']; ?></div><?php
                                                    }
                                                }
                                                ?>
                                            </div> 
                                            <div class="clr"></div>                 
                                        </div>
                                        <?php
                                    }
                                }
                                ?>                  
                                <?php
                            }
                        }                        
                    }   
                    ?>                
                    <!-- end xuất xứ -->                    	
                </div>   
                <div class="margin-top-15">
                    <a href="javascript:void(0);" data-toggle="modal" data-target="#modal-alert-add-cart"  onclick="addToCart();" class="add-to-cart"><i class="fas fa-shopping-cart"></i><span class="margin-left-15">Mua ngay</span>
                    </a>                    
                </div>                  
                <form name="frm-product-detail"  method="POST" enctype="multipart/form-data">
                    {{ csrf_field() }}                                        
                    <div class="margin-top-5 x-table-cart">
                        <?php 
                        $ssName="vmart";
                        $arrCart=array();
                        if(Session::has($ssName)){
                            $arrCart=Session::get($ssName);    
                            if(count($arrCart)){    
                                ?>
                                <table  class="com_product16" cellpadding="0" cellspacing="0" width="100%">

                                    <tbody>
                                        <?php 
                                        foreach ($arrCart as $cart_key => $cart_value) {
                                            $cart_product_id=$cart_value['product_id'];
                                            $cart_product_code=$cart_value['product_code'];
                                            $cart_product_name=$cart_value['product_name'];
                                            $cart_product_alias=$cart_value['product_alias'];
                                            $cart_product_link               =   route('frontend.index.index',[$cart_product_alias]);    
                                            $cart_product_image=$cart_value['product_image'];
                                            $cart_product_price_text         =   fnPrice($cart_value["product_price"]);
                                            $cart_product_total_price_text   =   fnPrice($cart_value["product_total_price"]);
                                            $cart_product_quantity           =   $cart_value["product_quantity"];
                                            $cart_img=get_product_thumbnail($cart_product_image);                                        
                                            ?>      
                                            <tr pro_id=<?php echo $cart_product_id; ?> >            
                                                <td class="com_product20" ><img src="<?php echo $cart_img; ?>" ></td>

                                                <td align="left" class="com_product22">
                                                    <div><a href="<?php echo $cart_product_link; ?>"><?php echo $cart_product_name; ?></a></div>
                                                    <div><input  type="text" onkeypress="return isNumberKey(event)" onblur='changeTotalPrice(this);' value="<?php echo $cart_product_quantity; ?>" size="4" class="com_product19" name="quantity[<?php echo $cart_product_id; ?>]">      </div>  
                                                </td>
                                                <td align="right" class="com_product23" >
                                                    <div class="tt-pri"><?php echo $cart_product_total_price_text; ?></div>
                                                    <div><a href="javascript:void(0);" onclick="deleteRowCart(this);"><i class="fa fa-trash" aria-hidden="true"></i><span class="margin-left-5">Xóa</span></a></div>
                                                </td>                                            
                                            </tr>                          
                                            <?php
                                        }         
                                        ?>
                                    </tbody>
                                </table>           
                                <?php                                                                   
                            }
                        }                     
                        ?>                
                    </div>    
                    <?php                           
                    if(count(@$error) > 0 || count(@$success) > 0){
                        ?>
                        <div class="alert-system padding-top-5">
                            <?php                                           
                            if(count(@$error) > 0){
                                ?>
                                <ul class="alert-error">
                                    <?php 
                                    foreach (@$error as $key => $value) {
                                        ?>
                                        <li><?php echo $value; ?></li>
                                        <?php
                                    }
                                    ?>                              
                                </ul>
                                <?php
                            }
                            if(count(@$success) > 0){
                                ?>
                                <ul class="alert-success">
                                    <?php 
                                    foreach (@$success as $key => $value) {
                                        ?>
                                        <li><?php echo $value; ?></li>
                                        <?php
                                    }
                                    ?>                              
                                </ul>
                                <?php
                            }
                            ?>  
                            <div class="clr"></div>                                            
                        </div>              
                        <?php
                    }                
                    $style_ttkh='';
                    if(count($arrCart) > 0){
                        $style_ttkh='block';
                    }else{
                        $style_ttkh='none';
                    }                
                    ?>            
                    <div class="alert-system padding-top-5" style="display: none;"></div>    
                    <div class="margin-top-15 tbl-ttkh" style="display: <?php echo $style_ttkh; ?>">
                        <div class="ttkh">Thông tin khách hàng</div>
                        <div class="margin-top-15">
                            <input type="text" class="ttkh-text" name="customer_name" value="" placeholder="Tên người nhận">
                        </div>
                        <div class="margin-top-15">
                            <input type="text" class="ttkh-text" name="customer_phone" value="" placeholder="Số điện thoại">
                        </div>
                        <div class="margin-top-15">
                            <input type="text" class="ttkh-text" name="customer_address" value="" placeholder="Địa chỉ">
                        </div>
                        <div class="margin-top-15">
                            <input type="text" class="ttkh-text" name="customer_email" value="" placeholder="Email">
                        </div>
                        <div class="margin-top-15">
                            <input type="text" class="ttkh-text" name="customer_note" value="" placeholder="Ghi chú: Màu sắc, thời gian giao hàng,...">
                        </div>
                        <div class="margin-top-15">
                            <a href="javascript:void(0);" onclick="checkout();" class="kh-checkout">Thanh toán</a>
                            <a href="<?php echo url('/'); ?>" class="kh-mua-them">Mua thêm</a>
                        </div>
                    </div>                                                                   
                </form>                
    </div>
    <div class="clr"></div>

        <div class="margin-top-15">
            <script type="text/javascript" language="javascript">
                function openCity(evt, cityName) {    
                    var i, tabcontent, tablinks;
                    tabcontent = document.getElementsByClassName("tabcontent");
                    for (i = 0; i < tabcontent.length; i++) {
                        tabcontent[i].style.display = "none";
                    }   
                    tablinks = document.getElementsByClassName("tablinks");
                    for (i = 0; i < tablinks.length; i++) {
                        tablinks[i].className = tablinks[i].className.replace(" active", "");
                    }   
                    document.getElementById(cityName).style.display = "block";
                    evt.currentTarget.className += " active";
                }
                jQuery(document).ready(function(){
                    jQuery("#thong-tin").show();
                    jQuery("div.tab > button.tablinks:first-child").addClass('active');
                });
            </script>       
            <div class="tab">
                <button class="tablinks h-title" onclick="openCity(event, 'thong-tin')">Thông tin</button>
                <button class="tablinks h-title" onclick="openCity(event, 'technical')">Thông số kỹ thuật</button>               
                <button class="tablinks h-title" onclick="openCity(event, 'video')">Video</button>
                              
                <button class="tablinks h-title" onclick="openCity(event, 'comments')">Bình luận</button>                                 
                <div class="clr"></div>           
            </div>
            <div id="thong-tin" class="tabcontent">
               <div class="margin-top-15">
                <?php
                if(!empty($detail)){
                    echo $detail; 
                }                
                ?>                   
               </div>
            </div>
            <div id="technical" class="tabcontent">
                <div class="margin-top-15">
                    <?php
                    if(!empty($technical_detail)){
                        echo $technical_detail; 
                    }                 
                    ?>
                        
                    </div>
            </div>          
            <div id="video" class="tabcontent">
                <div class="margin-top-15">
                    <?php 
                    if(!empty($video_id)){
                        ?>
                        <iframe width="560" height="315" src="https://www.youtube.com/embed/<?php echo $video_id; ?>?rel=0&amp;showinfo=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                        <?php 
                    }
                    ?>
                    
                </div> 
            </div>                
            <div id="comments" class="tabcontent">
                <div class="margin-top-15">Bình luận</div>
            </div>           
        </div>        
        <?php              
        $category_id=$item['category_id'];               
        $dataProduct=DB::table('product')                        
        ->select('product.id','product.alias','product.fullname','product.image','product.intro','product.price','product.sale_price')
        ->where('product.category_id', $category_id)
        ->where('product.id','<>',(int)@$id)
        ->where('product.status',1)       
        ->groupBy('product.id','product.alias','product.fullname','product.image','product.intro','product.price','product.sale_price')
        ->orderBy('product.created_at', 'desc')                
        ->get()
        ->toArray();         
        $dataProduct=convertToArray($dataProduct);     
        if(count($dataProduct) > 0){
        	?>
        	<div class="margin-top-15 product-detail-content">
        		Sản phẩm liên quan
        	</div> 
        	<div class="margin-top-15">
        		<script type="text/javascript" language="javascript">
        			$(document).ready(function(){
        				$(".prodetail").owlCarousel({
        					autoplay:false,                    
        					loop:true,
        					margin:25,                        
        					nav:true,            
        					mouseDrag: false,
        					touchDrag: false,                                
        					responsiveClass:true,
        					responsive:{
        						0:{
        							items:1
        						},
        						600:{
        							items:1
        						},
        						1000:{
        							items:4
        						}
        					}
        				});
        				var chevron_left='<i class="fa fa-chevron-left"></i>';
        				var chevron_right='<i class="fa fa-chevron-right"></i>';
        				$("div.prodetail div.owl-prev").html(chevron_left);
        				$("div.prodetail div.owl-next").html(chevron_right);
        			});                
        		</script>
        		<div class="owl-carousel prodetail owl-theme">
        			<?php 
        			foreach($dataProduct as $key => $value){
        				$pdetail_id=$value['id'];
        				$pdetail_alias=$value['alias'];
        				$pdetail_fullname=$value['fullname'];
        				$fullname_excerpt=substr($pdetail_fullname, 0,100);
        				$pdetail_permalink=route('frontend.index.index',[$pdetail_alias]) ;
        				$pdetail_img =get_product_thumbnail($value['image']) ;	
        				$pdetail_price=$value['price'];
        				$pdetail_sale_price=$value['sale_price'];
        				$html_price='';                     
        				if((int)@$pdetail_sale_price > 0){              
        					$price_on_html ='<span class="price-on">'.fnPrice($pdetail_sale_price).'</span>';
        					$price_off_html='<span class="price-off">'.fnPrice($pdetail_price).'</span>' ;                 
        					$html_price='<div class="sale-price">'.$price_on_html.'</div><div class="old-price">'.$price_off_html.'</div><div class="clr"></div>' ;              
        				}else{
        					$html_price='<span class="price-on">'.fnPrice($pdetail_price).'</span>' ;                  
        				}   	
        				?>
        				<div class="box-product">
                                            <div class="box-product-img">
                                                <center><figure><a href="<?php echo $pdetail_permalink; ?>"><img src="<?php echo $pdetail_img; ?>"></a></figure></center>
                                            </div>
                                            <div class="box-product-intro-title"><a href="<?php echo $pdetail_permalink; ?>"><b><?php echo $pdetail_fullname; ?></b></a></div>
                                            <div class="box-product-price">
                                                <div><center><?php echo $html_price; ?></center></div>
                                            </div>
                                        </div>
        				<?php
        			}
        			?>
        		</div>
        	</div>
        	<?php 
        }                     
}
?>
<script language="javascript" type="text/javascript">
    $('.zoom_img').elevateZoom({
        zoomType: "inner",
        cursor: "crosshair",
        zoomWindowFadeIn: 500,
        zoomWindowFadeOut: 750
    });
    function changeImage(small_thumbnail,large_thumbnail){    
        var image_detail=$(".image-detail");
        var imghtml='<img class="zoom_img" src="'+small_thumbnail+'" data-zoom-image="'+large_thumbnail+'">';        
        $(image_detail).empty();
        $(image_detail).append(imghtml);
        $('.zoom_img').elevateZoom({
            zoomType: "inner",
            cursor: "crosshair",
            zoomWindowFadeIn: 500,
            zoomWindowFadeOut: 750
        });
    }    
    function addToCart(){
        var token = $('form[name="frm-product-detail"] input[name="_token"]').val();
        var quantity = 1;
        var dataItem={
            "id":<?php echo @$item['id']; ?>,            
            "quantity":quantity,
            "_token": token
        };
        $.ajax({
            url: '<?php echo route("frontend.index.addToCart"); ?>',
            type: 'POST',
            data: dataItem,
            async: false,
            success: function (data) {
                var data_cart=data.cart;
                var xtable = document.createElement("TABLE");                
                var xtbody=xtable.createTBody();                
                var i=0;
                $.each( data_cart, function( key, value ) {
                    var cart_product_id=value.product_id;
                    var cart_product_code=value.product_code;
                    var cart_product_name=value.product_name;
                    var cart_product_image=value.product_image;                    
                    var cart_product_quantity=value.product_quantity;
                    var cart_product_price=value.product_price;
                    var cart_product_total_price=value.product_total_price;  
                    var cart_product_total_price_text=    accounting.formatMoney(cart_product_total_price, "", 0, ".",",") + ' đ';
                    var xNewRow   = xtbody.insertRow(i);    
                    var cell_product_image=xNewRow.insertCell(0);
                    var cell_product_name=xNewRow.insertCell(1);
                    var cell_product_total_price=xNewRow.insertCell(2);
                    $(cell_product_image).addClass('com_product20');
                    $(cell_product_name).addClass('com_product22');                    
                    $(cell_product_total_price).addClass('com_product23');
                    $(cell_product_name).attr('align','left');
                    $(cell_product_total_price).attr('align','right');
                    $(xNewRow).attr('pro_id',cart_product_id);                    
                    cell_product_image.innerHTML='<img src="/upload/'+cart_product_image+'" />';
                    cell_product_name.innerHTML='<div>'+cart_product_name+'</div><div><input  type="text" onblur="changeTotalPrice(this);" onkeypress="return isNumberKey(event)" value="'+cart_product_quantity+'" size="4" class="com_product19" name="quantity['+cart_product_id+']">      </div>' ;                    
                    cell_product_total_price.innerHTML= '<div class="tt-pri">'+cart_product_total_price_text+'</div><div><a href="javascript:void(0);" onclick="deleteRowCart(this);"><i class="fa fa-trash" aria-hidden="true"></i><span class="margin-left-5">Xóa</span></a></div>' ;                    
                    i++;
                });
                $(xtable).addClass('com_product16');
                $(xtable).attr('cellpadding','0');
                $(xtable).attr('cellspacing','0');
                $(xtable).attr("width","100%");
                $('.x-table-cart').empty();
                $('.x-table-cart').append(xtable);
                var thong_bao='Sản phẩm đã được thêm vào trong giỏ hàng';                       
                $(".modal-body").empty();              
                $(".modal-body").append(thong_bao);
                $('.tbl-ttkh').show();
            },
            error : function (data){
                
            },
            beforeSend  : function(jqXHR,setting){
                
            },
        });
    }
    function changeTotalPrice(ctrl){
        var xRow=$(ctrl).closest('tr')[0];        
        var product_id=$(xRow).attr('pro_id');        
        var quantity=$(ctrl).val(); 
        if(parseInt(quantity) < 1){
            alert('Số lượng phải lớn hơn 0');                        
        }
        var token = $('form[name="frm-product-detail"] input[name="_token"]').val();        
        var dataItem={
            "id":product_id,            
            "quantity":quantity,
            "_token": token
        };      
        $.ajax({
            url: '<?php echo route("frontend.index.changeTotalPrice"); ?>',
            type: 'POST',
            data: dataItem,
            async: false,
            success: function (data) {                       
                var product_total_price_text = accounting.formatMoney(data.product_total_price, "", 0, ".",",") + ' đ';
                var product_quantity=data.product_quantity;
                var xCellProductName=xRow.cells[1];
                var xCellTotalPrice=xRow.cells[2];
                $(xCellTotalPrice).find('div.tt-pri').empty();
                $(xCellTotalPrice).find('div.tt-pri').append(product_total_price_text);
                $(xCellProductName).find('input[name="quantity['+product_id+']"]').val(product_quantity);
            },
            error : function (data){
                
            },
            beforeSend  : function(jqXHR,setting){
                
            },
        }); 
    }
    function deleteRowCart(ctrl){
        var xac_nhan = 0;
        var msg="Bạn có muốn xóa ?";
        if(window.confirm(msg)){ 
            xac_nhan = 1;
        }
        if(xac_nhan  == 0){
            return 0;
        }
        var xRow=$(ctrl).closest('tr')[0];              
        var xTBody=$(ctrl).closest('tbody')[0];      
        var product_id=$(xRow).attr('pro_id');                
        var token = $('form[name="frm-product-detail"] input[name="_token"]').val();        
        var dataItem={
            "id":product_id,                        
            "_token": token
        };      
        $.ajax({
            url: '<?php echo route("frontend.index.deleteRowCart"); ?>',
            type: 'POST',
            data: dataItem,
            async: false,
            success: function (data) {                       
                var index=xRow.rowIndex;
                xTBody.deleteRow(index);
                console.log(data.product_count);
                if(parseInt(data.product_count)  < 1 ){
                    $('.tbl-ttkh').hide();
                }                
            },
            error : function (data){
                
            },
            beforeSend  : function(jqXHR,setting){
                
            },
        }); 
    }     
    function hideMsgPdetail() {
        $('.alert-system').fadeOut();
    }     
    function checkout(){
        var customer_name = $('form[name="frm-product-detail"] input[name="customer_name"]').val();
        var customer_phone = $('form[name="frm-product-detail"] input[name="customer_phone"]').val();
        var customer_address = $('form[name="frm-product-detail"] input[name="customer_address"]').val();
        var customer_email = $('form[name="frm-product-detail"] input[name="customer_email"]').val();
        var customer_note = $('form[name="frm-product-detail"] input[name="customer_note"]').val();
        var token = $('form[name="frm-product-detail"] input[name="_token"]').val();
        
        var dataItem={
            'customer_name':customer_name,
            'customer_phone':customer_phone,
            'customer_address':customer_address,
            'customer_email':customer_email,
            'customer_note':customer_note,        
            '_token': token
        };
        $.ajax({
            url: '<?php echo route("frontend.index.checkoutQuickly"); ?>',
            type: 'POST',
            data: dataItem,
            async: false,
            success: function (data) {                                      
                if(data.checked==1){
                    alert('Đặt hàng thành công');
                    window.location.assign(data.link_redirect);
                }else{   
                    var data_error=data.error;                                  
                    var ul='<ul class="alert-error">';
                    $.each(data_error,function(index,value){
                        ul+='<li>'+value+'</li>';
                    });                    
                    ul+='</ul>';
                    $('.alert-system').show();
                    $('.alert-system').empty();
                    $('.alert-system').append(ul);
                    setTimeout(hideMsgPdetail,10000);    
                }
            },
            error : function (data){
                
            },
            beforeSend  : function(jqXHR,setting){
                
            },
        }); 
    }
    /*$( document ).ready(function() {
        $('.input-group-btn .btn-number').click(function(e){
            e.preventDefault();

            var fieldName = $(this).attr('data-field');
            var type      = $(this).attr('data-type');
            var input = $("input[name='"+fieldName+"']");
            var currentVal = parseInt(input.val());
            if (!isNaN(currentVal)) {
                if(type == 'minus') {
                    var minValue = parseInt(input.attr('min')); 
                    if(!minValue) minValue = 1;
                    if(currentVal > minValue) {
                        input.val(currentVal - 1).change();
                    } 
                    if(parseInt(input.val()) == minValue) {
                        $(this).attr('disabled', true);
                    }

                } else if(type == 'plus') {
                    var maxValue = parseInt(input.attr('max'));
                    if(!maxValue) maxValue = 9999999999999;
                    if(currentVal < maxValue) {
                        input.val(currentVal + 1).change();
                    }
                    if(parseInt(input.val()) == maxValue) {
                        $(this).attr('disabled', true);
                    }

                }
            } else {
                input.val(0);
            }
        });
        $('.input-number').focusin(function(){
         $(this).data('oldValue', $(this).val());
     });
        $('.input-number').change(function() {

            var minValue =  parseInt($(this).attr('min'));
            var maxValue =  parseInt($(this).attr('max'));
            if(!minValue) minValue = 1;
            if(!maxValue) maxValue = 9999999999999;
            var valueCurrent = parseInt($(this).val());

            var name = $(this).attr('name');
            if(valueCurrent >= minValue) {
                $(".btn-number[data-type='minus'][data-field='"+name+"']").removeAttr('disabled')
            } else {
                alert('Sorry, the minimum value was reached');
                $(this).val($(this).data('oldValue'));
            }
            if(valueCurrent <= maxValue) {
                $(".btn-number[data-type='plus'][data-field='"+name+"']").removeAttr('disabled')
            } else {
                alert('Sorry, the maximum value was reached');
                $(this).val($(this).data('oldValue'));
            }


        });
        $(".input-number").keydown(function (e) {
            // Allow: backspace, delete, tab, escape, enter and .
            if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 190]) !== -1 ||
                 // Allow: Ctrl+A
                 (e.keyCode == 65 && e.ctrlKey === true) || 
                 // Allow: home, end, left, right
                 (e.keyCode >= 35 && e.keyCode <= 39)) {
                     // let it happen, don't do anything
                 return;
             }
            // Ensure that it is a number and stop the keypress
            if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
                e.preventDefault();
            }
        });
    });*/
</script> 