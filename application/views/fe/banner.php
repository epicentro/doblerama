                <div class="slider-container rev_slider_wrapper" style="height: 500px;">
                    <div id="revolutionSlider" class="slider rev_slider" data-plugin-revolution-slider data-plugin-options='{"delay": 9000, "gridwidth": 800, "gridheight": 500}'>
                        <ul>

                            <?php
                               if($banners!="0"){
                                   foreach ($banners as $b){
                                    ?>    
                                    <li data-transition="fade">
                                        <img src="<?php echo base_url()."img_banners/".$b->imagen; ?>"
                                            alt=""
                                            data-bgposition="center center"
                                            data-bgfit="cover"
                                            data-bgrepeat="no-repeat"
                                            class="rev-slidebg">

                                        <div class="tp-caption main-label"
                                            data-x="center" data-hoffset="0"
                                            data-y="center" data-voffset="-45"
                                            data-start="1500"
                                            data-whitespace="nowrap"
                                            data-transform_in="y:[100%];s:500;"
                                            data-transform_out="opacity:0;s:500;"
                                            style="z-index: 5"
                                            data-mask_in="x:0px;y:0px;"><?php echo $b->nombre; ?></div>

                                        <div class="tp-caption bottom-label"
                                            data-x="center" data-hoffset="0"
                                            data-y="center" data-voffset="5"
                                            data-start="2000"
                                            style="z-index: 5"
                                            data-transform_in="y:[100%];opacity:0;s:500;">Caracteristicas</div>
                                    </li>
                                       
                                       
                                       
                                    <?php   
                                   }//endFor
                               }//endIF
                            ?>                        

<!-- 
                            <li data-transition="fade">
                                <img src="video/landing.jpg"
                                    alt=""
                                    data-bgposition="center center"
                                    data-bgfit="cover"
                                    data-bgrepeat="no-repeat"
                                    class="rev-slidebg">

                                <div class="rs-background-video-layer"
                                    data-forcerewind="on"
                                    data-volume="mute"
                                    data-videowidth="100%"
                                    data-videoheight="100%"
                                    data-videomp4="video/landing.mp4"
                                    data-videopreload="preload"
                                    data-videoloop="none"
                                    data-forceCover="1"
                                    data-aspectratio="16:9"
                                    data-autoplay="true"
                                    data-autoplayonlyfirsttime="false"
                                    data-nextslideatend="true"
                                ></div>
                                <div class="tp-caption main-label"
                                    data-x="center" data-hoffset="0"
                                    data-y="center" data-voffset="-45"
                                    data-start="1500"
                                    data-whitespace="nowrap"
                                    data-transform_in="y:[100%];s:500;"
                                    data-transform_out="opacity:0;s:500;"
                                    style="z-index: 5"
                                    data-mask_in="x:0px;y:0px;">Servicio</div>

                                <div class="tp-caption bottom-label"
                                    data-x="center" data-hoffset="0"
                                    data-y="center" data-voffset="5"
                                    data-start="2000"
                                    style="z-index: 5"
                                    data-transform_in="y:[100%];opacity:0;s:500;">Caracteristicas</div>
                                <div class="tp-dottedoverlay tp-opacity-overlay"></div>

                            </li> -->
                        </ul>
                    </div>
                </div>

