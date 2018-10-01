<?php get_header(); ?>
      <section class="home-slider owl-carousel">
        <div class="slider-item">
          <img src="<?php bloginfo('template_url') ?>/assets/images/sitio/il_fonti_di_modena.jpg" alt="" style="position:absolute; z-index:0;">
          <div class="overlay"></div>
          <div class="container">
            <div class="row slider-text align-items-center justify-content-center text-center">
              <div class="col-md-10 col-sm-12 ftco-animate" style="position:absolute; z-index:1">
                <h1 class="mb-3">Reserve y disfrute de una maravillosa velada junto a nosotros</h1>
              </div>
            </div>
          </div>
        </div>

        <div class="slider-item">
          <img src="<?php bloginfo('template_url') ?>/assets/images/sitio/mesas.jpg" alt="" style="position:absolute; z-index:0;">
          <div class="overlay"></div>
          <div class="container">
            <div class="row slider-text align-items-center justify-content-center text-center">
              <div class="col-md-10 col-sm-12 ftco-animate" style="position:absolute; z-index:1">
                <h1 class="mb-3">Il Fonti Di Modena - Comida deliciosa</h1>
              </div>
            </div>
          </div>
        </div>

        <div class="slider-item">
          <img src="<?php bloginfo('template_url') ?>/assets/images/sitio/cena.jpeg" alt="" style="position:absolute; z-index:0;">
          <div class="overlay"></div>
          <div class="container">
            <div class="row slider-text align-items-center justify-content-center text-center">
              <div class="col-md-10 col-sm-12 ftco-animate" style="position:absolute; z-index:1">
                <h1 class="mb-3">Nuestros platos son hechos con los mejores y mas frescos ingredientes</h1>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- END slider -->

      <section class="ftco-section bg-light">
        <div class="container">
          <div class="row justify-content-center mb-5 pb-5">
            <div class="col-md-7 text-center heading-section ftco-animate">
              <h2>Descubra nuestros platos</h2>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12 dish-menu">
              <div class="tab-content py-5" id="v-pills-tabContent">
                <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                  <div class="row">

                      <?php
                        $arg = array(
                          'post_type'		 => 'menu',
                          'posts_per_page' => 40
                        );

                        $get_arg = new WP_Query( $arg );

                        while ( $get_arg->have_posts() ) {
                          $get_arg->the_post();
                        ?>
                            <div class="col-lg-6">
                              <div class="menus d-flex ftco-animate">
                                <div class="menu-img"><?php the_post_thumbnail('full', array('class' => 'menu-img')); ?></div>
                                <div class="text d-flex">
                                  <div class="one-half">
                                    <h3><?php the_title() ?></h3>
                                    <p><?php the_content() ?></p>
                                  </div>
                                </div>
                              </div>
                            </div>
                        <?php } wp_reset_postdata();?>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      <section class="ftco-section parallax-img" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/platos/bg_3.jpg);" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
          <div class="row justify-content-center mb-5 pb-5">
            <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
              <h2>Nuestras especialidades</h2>
            </div>
          </div>
        </div>
      </section>
      <section class="ftco-section bg-light">
        <div class="container special-dish">
          <div class="row d-flex no-gutters">
            <div class="col-lg-6">
              <div class="block-3 d-md-flex ftco-animate">
                <div class="image order-last" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/platos/pizza.jpg);"></div>
                <div class="text text-center order-first">
                  <h2 class="heading">Pizzas</h2>
                  <p>Tenemos las mejores pizzas para deleitar tu paladar, hechas con los mas frescos ingredientes.</p>
                  <span class="price">Desde $5300</span>
                </div>
              </div>
              <div class="block-3 d-md-flex ftco-animate">
                <div class="image order-first" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/platos/insalatta_andree.jpg);"></div>
                <div class="text text-center order-first">
                  <h2 class="heading">Ensaladas</h2>
                  <p>Disfruta de nuestra variedad de ensaladas llenas de color y frescura.</p>
                  <span class="price">Desde $6200</span>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="block-3 d-md-flex ftco-animate">
                <div class="image order-last" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/platos/latte.jpg);"></div>
                <div class="text text-center order-first">
                  <h2 class="heading">Cafetería</h2>
                  <p>Deleita tus sentidos con nuestros cafés de grano en sus distintas variedades.</p>
                  <span class="price">Desde $1200</span>
                </div>
              </div>
              <div class="block-3 d-md-flex ftco-animate">
                <div class="image order-first" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/platos/tiramisu.jpg);"></div>
                <div class="text text-center order-first">
                  <h2 class="heading">Postres</h2>
                  <p>Encuentra una gran variedad de postres hechos durante el día/p>
                  <span class="price">Desde $2500</span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <br>
      <br>
      <hr>
      <section class="ftco-section">
        <div class="container">
          <div class="row no-gutters justify-content-center mb-5 pb-5">
            <div class="col-md-7 text-center heading-section ftco-animate">
              <h2>Realice su reservación</h2>
            </div>
          </div>
          <div class="row d-flex">
            <div class="col-md-4 ftco-animate img" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/sitio/oliva.jpg);"></div>
            <div class="col-md-8 ftco-animate makereservation p-3 bg-light">
              <?php echo do_shortcode('[booking]') ?>
            </div>
          </div>
        </div>
      </section>

      <section class="instagram">
        <div class="container-fluid">
          <div class="row no-gutters justify-content-center pb-5">
            <div class="col-md-7 text-center heading-section ftco-animate">
              <h2><span>Instagram</span></h2>
            </div>
          </div>
          <div class="row no-gutters">
            <div class="col-sm-12 col-md ftco-animate">
              <a href="images/insta-1.jpg" class="insta-img image-popup" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/insta-1.jpg);">
                <div class="icon d-flex justify-content-center">
                  <span class="icon-instagram align-self-center"></span>
                </div>
              </a>
            </div>
            <div class="col-sm-12 col-md ftco-animate">
              <a href="images/insta-2.jpg" class="insta-img image-popup" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/insta-2.jpg);">
                <div class="icon d-flex justify-content-center">
                  <span class="icon-instagram align-self-center"></span>
                </div>
              </a>
            </div>
            <div class="col-sm-12 col-md ftco-animate">
              <a href="images/insta-3.jpg" class="insta-img image-popup" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/insta-3.jpg);">
                <div class="icon d-flex justify-content-center">
                  <span class="icon-instagram align-self-center"></span>
                </div>
              </a>
            </div>
            <div class="col-sm-12 col-md ftco-animate">
              <a href="images/insta-4.jpg" class="insta-img image-popup" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/insta-4.jpg);">
                <div class="icon d-flex justify-content-center">
                  <span class="icon-instagram align-self-center"></span>
                </div>
              </a>
            </div>
            <div class="col-sm-12 col-md ftco-animate">
              <a href="images/insta-5.jpg" class="insta-img image-popup" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/insta-5.jpg);">
                <div class="icon d-flex justify-content-center">
                  <span class="icon-instagram align-self-center"></span>
                </div>
              </a>
            </div>
          </div>
        </div>
      </section>
<?php get_footer(); ?>
