<!-- start revolution slider 5.0 -->
<section class="rev_slider_wrapper">
  <div class="rev_slider un-material-slider">
    <ul>

    <?php
       if($banners!="0"){
            $c=1;
            
            foreach ($banners as $b){
              
                ?>    
                <li data-transition="fade" data-slotamount="default" data-easein="Power4.easeInOut" data-easeout="Power4.easeInOut" data-masterspeed="2000" data-thumb="<?php echo base_url()."img_banners/".$b->imagen; ?>" data-rotate="0" data-fstransition="fade" data-fsmasterspeed="1500" data-fsslotamount="7" data-saveperformance="off" data-title="Material" data-description=""> <img src="<?php echo base_url()."img_banners/".$b->imagen; ?>" alt="" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="10" class="rev-slidebg" data-no-retina> 
                  
                  <!-- LAYER NR. 1 -->
                  <div class="tp-caption rev-heading text-extrabold dark-text tp-resizeme"
                data-x="center"
                data-y="center" data-voffset="-50" 
                data-fontsize="['80','60','60','35']"
                data-lineheight="['80','60','60','40']"
                data-width="none"
                data-height="none"
                data-whitespace="nowrap"
                data-transform_idle="o:1;"
                data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:600;e:Power4.easeInOut;" 
                data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
                data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;" 
                data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" 
                data-start="800" 
                data-splitin="none" 
                data-splitout="none" 
                data-responsive_offset="on"
                style="z-index: 5; white-space: nowrap; text-transform:uppercase;"></div>
                  
                  <!-- LAYER NR. 2 -->
                  <div class="tp-caption tp-resizeme rev-subheading  dark-text text-center"
                data-x="center"
                data-y="center" data-voffset="30"
                data-fontsize="['22','22','22','16']"
                data-lineheight="['30','30','30','26']"
                data-whitespace="nowrap"
                data-transform_idle="o:1;"
                data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:600;e:Power4.easeInOut;" 
                data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
                data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;" 
                data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" 
                data-start="1000" 
                data-splitin="none" 
                data-splitout="none" 
                data-responsive_offset="on"
                style="z-index: 6; white-space: nowrap;"></div>
                  
                  <!-- LAYER NR. 3 -->
                  <div class="tp-caption tp-resizeme rev-btn"
                data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
                data-y="['middle','middle','middle','middle']" data-voffset="['130','130','130','130']" 
                data-width="none"
                data-height="none"
                data-whitespace="nowrap"
                data-transform_idle="o:1;"
                data-style_hover="cursor:default;"
                data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:600;e:Power4.easeInOut;" 
                data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
                data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;" 
                data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" 
                data-start="1200" 
                data-splitin="none" 
                data-splitout="none" 
                data-responsive_offset="on"
                style="z-index: 7; white-space: nowrap;"> <a href="#" class="btn waves-effect waves-light">Ver Más</a> </div>
                </li>
                <!-- slide 1 end --> 
                <?php

            }
        }
        ?>    

      

      
    </ul>
  </div>
</section>
<!-- end of slider wrapper -->


