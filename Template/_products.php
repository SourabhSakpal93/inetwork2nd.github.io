<!--Products-->
<?php
$item_id = $_GET['item_id'] ?? 1;
foreach ($product->getData() as $item) :
if ($item['item_id'] == $item_id) :
?>

<section id="product" class="py-3">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <img src="<?php echo $item['item_image'] ??"./assets/products/iphone/Apple iPhone 11 (128GB) - Green.jpg" ?>" alt="product" class="img-fluid">
                <div class="form-row pt-4 font-size-16 font-baloo">
                    <div class="col">
                        <button type="submit" class="btn btn-danger form-control font-rubik">Proceed to Buy</button>
                    </div>

                    <div class="col">
                        <?php
                        if (in_array($item['item_id'], $Cart->getCartId($product->getData('cart')) ?? [])){
                            echo '<button type="submit" disabled class="btn btn-success font-size-16 form-control">In the Cart</button>';
                        }else{
                            echo '<button type="submit" name="top_sale_submit" class="btn btn-warning font-size-16 form-control">Add to Cart</button>';
                        }
                        ?>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 py-5">
                <h5 class="font-rubik font-size-20"><?php echo $item['item_name'] ?? "Unknown"; ?></h5>
                <small class="font-rubik"><?php echo $item['item_brand'] ?? "Brand"; ?></small>
                <div class="d-flex">
                    <div class="rating text-warning font-size-12">
                        <span><i class="fas fa-star"></i></span>
                        <span><i class="fas fa-star"></i></span>
                        <span><i class="fas fa-star"></i></span>
                        <span><i class="fas fa-star"></i></span>
                        <span><i class="far fa-star"></i></span>
                    </div>
                    <a href="#" class="px-2 font-rubik font-size-14">68,302 Ratings|1000+ answered questions</a>
                </div>
                <hr class="m-0">
                <!--Product price-->
                <table class="my-3">
                    <tr class="font-rale font-size-14">
                        <td class="font-rubik">M.R.P:</td>
                        <td class="font-baloo">₹<strike> 49,900</strike></td>
                    </tr>
                    <tr class="font-rale font-size-14">
                        <td class="font-rubik font-size-14 ">Price:</td>
                        <td class="font-baloo font-size-20  text-danger">₹<span><?php echo $item['item_price'] ?? 0; ?></span> <small class="text-dark font-size-12">&nbsp;&nbsp; Inclusive of all taxes</small></td>
                    </tr>
                    <tr class="font-rale font-size-14">
                        <td class="font-rubik font-size-14 ">You Save:</td>
                        <td class="font-baloo"><span class=" font-size-16  text-danger">₹2,000 (4%)</span></td>
                    </tr>
                </table>
                <!--Product price-->

                <!--Policy-->
                <div id="policy">
                    <div class="d-flex">
                        <div class="return text-center mr-5">
                            <div class="font-size-20 my-2 color-second">
                                <span class="fas fa-retweet border p-3 rounded-pill"></span>
                            </div>
                            <a href="#" class="font-rale font-size-12">10 Days <br> Replacement</a>
                        </div>
                        <div class="return text-center mr-5">
                            <div class="font-size-20 my-2 color-second">
                                <span class="fas fa-truck  border p-3 rounded-pill"></span>
                            </div>
                            <a href="#" class="font-rale font-size-12">Fastest <br>Deliverd</a>
                        </div>
                        <div class="return text-center mr-5">
                            <div class="font-size-20 my-2 color-second">
                                <span class="fas fa-check-double border p-3 rounded-pill"></span>
                            </div>
                            <a href="#" class="font-rale font-size-12">1 Year <br>Warranty</a>
                        </div>
                    </div>
                </div>

                <!--Policy-->
                <hr>

                <!--order details-->
                <div id="order-details" class="font-rubik d-flex flex-column text-dark">
                    <small>Delivery by: Apr 1 - Sep 24</small>
                    <small>Public Support  : <a href="https://www.apple.com/in/supplier-responsibility/">supplier responsibility</a></small>
                    <small><i class="fas fa-map-marker-alt color-primary"></i>&nbsp;&nbsp; Deliver to Customer - 411038</small>
                </div>
                <!--order details-->
                <div class="row">
                    <div class="col-6">
                        <!--Color-->
                        <div class="color my-3">
                            <div class="d-flex justify-content-between">
                                <h6 class="font-rubik">Color</h6>
                                <div class="p-2 color-purple-bg rounded-circle"><button class="btn font-size-14"></button></div>
                                <div class="p-2 color-yellow-bg rounded-circle"><button class="btn font-size-14"></button></div>
                                <div class="p-2 color-white-bg rounded-circle"><button class="btn font-size-14"></button></div>
                            </div>
                        </div>
                        <!--Color-->
                    </div>
                    <!-- product qty section -->
                    <div class="col-6">
                        <!-- product qty section -->
                        <div class="qty d-flex">
                            <h6 class="font-rubik">Qty</h6>
                            <div class="px-4 d-flex font-rale">
                                <button class="qty-up border bg-light" data-id="pro1"><i class="fas fa-angle-up"></i></button>
                                <input type="text" data-id="pro1" class="qty_input border px-2 w-50 bg-light font-rubik" disabled value="1" placeholder="1">
                                <button data-id="pro1" class="qty-down border bg-light"><i class="fas fa-angle-down"></i></button>
                            </div>
                        </div>
                        <!-- product qty section -->
                    </div>
                </div>

                <!--Size of storage-->
                <div class="size my-3">
                    <h6 class="font-baloo">Size :</h6>
                    <div class="d-flex justify-content-between w-75">
                        <div class="font-rubik border p-2">
                            <button class="btn p-0 font-size-14">64GB ROM</button>
                        </div>
                        <div class="font-rubik border p-2">
                            <button class="btn p-0 font-size-14">128GB ROM</button>
                        </div>
                        <div class="font-rubik border p-2">
                            <button class="btn p-0 font-size-14">512GB ROM</button>
                        </div>
                    </div>
                </div>
                <!--Size of storage-->

            </div>
            <hr>

            <div class="col-12">
                <h4 class="font-rubik">Product Description</h4>
                <hr>
                <p class="font-rale font-size-14">6.1-inch (15.4 cm diagonal) Liquid Retina HD LCD display Water and dust resistant (2 meters for up to 30 minutes, IP68) Dual-camera system with 12MP Ultra Wide and Wide cameras; Night mode, Portrait mode, and 4K video up to 60fps
                    12MP TrueDepth front camera with Portrait mode, 4K video, and Slo-Mo Face ID for secure authentication A13 Bionic chip with third-generation Neural Engine Fast-charge capable Wireless charging iOS 15 packs new features to do
                    more with iPhone than ever before iOS 14 with redesigned widgets on the Home screen, all-new App Library, App Clips, and more</p>
                <p class="font-rale font-size-14"> The iPhone 11 is a successor to the iPhone XR and the name represents a reset in Apple's naming strategy to emphasise that this is the "default" iPhone for everyone. Powered by Apple's own A13 Bionic chip, the iPhone 11 trio are
                    the fastest smartphones you can buy today, with the closest competition at the time of filing this review being last year's iPhone lineup. Perhaps the biggest improvements are in the camera department, achieved by both software
                    and hardware changes. On the rear, you get Wide and Ultra Wide 12-megapixel cameras that produce excellent image quality in nearly all situations. Night Mode makes Apple competitive in low-light photography, and then some,
                    which means the iPhone can finally compete favourably with offerings from Google, Samsung, and Huawei when it comes to night-time shots.

                </p>
                <div class="container text-center">
                    <img src="./assets/products/iphone/iphone 11/iphone11wallpaper-1st.jpg" alt="Responsive image">
                    <h6>
                        <p class="font-rubik font-size-20">Dual 12MP Ultra Wide and Wide cameras Wide: ƒ/1.8 aperture Ultra Wide: ƒ/2.4 aperture and 120° field of view 2x optical zoom out Digital zoom up to 5x Portrait mode with advanced bokeh and Depth Control Portrait Lighting with six effects
                            (Natural, Studio, Contour, Stage, Stage Mono, High-Key Mono) Optical image stabilisation (Wide) Five‑element lens (Ultra Wide); six‑element lens (Wide) Brighter True Tone flash with Slow Sync Panorama (up to 63MP) Sapphire crystal
                            lens cover 100% Focus Pixels (Wide) Night mode (Wide) Deep Fusion (Wide) Next-generation Smart HDR for photos Wide colour capture for photos and Live Photos Advanced red‑eye correction Auto image stabilisation Burst mode Photo geotagging
                            Image formats captured: HEIF and JPEG</p>
                    </h6>
                    <img src="./assets/products/iphone/iphone 11/iphone 11 2nd.jpg" alt="Responsive image2">
                    <br><br><br>

                </div>


</section>
<!--Products-->
<?php
endif;
endforeach;
?>