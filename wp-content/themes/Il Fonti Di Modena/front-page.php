<?php get_header(); ?>
      <section class="home-slider owl-carousel">
        <div class="slider-item">
          <img src="<?php bloginfo('template_url') ?>/assets/images/bg_1.jpg" alt="" style="position:absolute; z-index:0;">
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
          <img src="<?php bloginfo('template_url') ?>/assets/images/bg_2.jpg" alt="" style="position:absolute; z-index:0;">
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
          <img src="<?php bloginfo('template_url') ?>/assets/images/bg_3.jpg" alt="" style="position:absolute; z-index:0;">
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
              <br>
              <span class="subheading">Nuestro Menu</span>
              <h2>Descubra nuestros platos</h2>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12 dish-menu">

              <div class="nav nav-pills justify-content-center ftco-animate" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                <a class="nav-link py-3 px-4 active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true"><span class="flaticon-meat"></span>Principales</a>
                <a class="nav-link py-3 px-4" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false"><span class="flaticon-cutlery"></span>Postres</a>
                <a class="nav-link py-3 px-4" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false"><span class="flaticon-cheers"></span>Bebestibles</a>
              </div>

              <div class="tab-content py-5" id="v-pills-tabContent">
                <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="menus d-flex ftco-animate">
                        <div class="menu-img" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/dish-3.jpg);"></div>
                        <div class="text d-flex">
                          <div class="one-half">
                            <h3>Grilled Beef with potatoes</h3>
                            <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                          </div>
                          <div class="one-forth">
                            <span class="price">$29</span>
                          </div>
                        </div>
                      </div>
                      <div class="menus d-flex ftco-animate">
                        <div class="menu-img" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/dish-4.jpg);"></div>
                        <div class="text d-flex">
                          <div class="one-half">
                            <h3>Fruit Vanilla Ice Cream</h3>
                            <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                          </div>
                          <div class="one-forth">
                            <span class="price">$29</span>
                          </div>
                        </div>
                      </div>
                      <div class="menus d-flex ftco-animate">
                        <div class="menu-img" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/dish-5.jpg);"></div>
                        <div class="text d-flex">
                          <div class="one-half">
                            <h3>Asian Hoisin Pork</h3>
                            <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                          </div>
                          <div class="one-forth">
                            <span class="price">$29</span>
                          </div>
                        </div>
                      </div>
                      <div class="menus d-flex ftco-animate">
                        <div class="menu-img" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/dish-6.jpg);"></div>
                        <div class="text d-flex">
                          <div class="one-half">
                            <h3>Spicy Fried Rice &amp; Bacon</h3>
                            <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                          </div>
                          <div class="one-forth">
                            <span class="price">$29</span>
                          </div>
                        </div>
                      </div>
                      <div class="menus d-flex ftco-animate">
                        <div class="menu-img" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/dish-7.jpg);"></div>
                        <div class="text d-flex">
                          <div class="one-half">
                            <h3>Mango Chili Chutney</h3>
                            <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                          </div>
                          <div class="one-forth">
                            <span class="price">$29</span>
                          </div>
                        </div>
                      </div>
                    </div>

                    <div class="col-lg-6">
                      <div class="menus d-flex ftco-animate">
                        <div class="menu-img" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/dish-8.jpg);"></div>
                        <div class="text d-flex">
                          <div class="one-half">
                            <h3>Savory Watercress Chinese Pancakes</h3>
                            <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                          </div>
                          <div class="one-forth">
                            <span class="price">$29</span>
                          </div>
                        </div>
                      </div>
                      <div class="menus d-flex ftco-animate">
                        <div class="menu-img" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/dish-9.jpg);"></div>
                        <div class="text d-flex">
                          <div class="one-half">
                            <h3>Soup With Vegetables And Meat</h3>
                            <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                          </div>
                          <div class="one-forth">
                            <span class="price">$29</span>
                          </div>
                        </div>
                      </div>
                      <div class="menus d-flex ftco-animate">
                        <div class="menu-img" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/dish-10.jpg);"></div>
                        <div class="text d-flex">
                          <div class="one-half">
                            <h3>Udon Noodles With Vegetables</h3>
                            <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                          </div>
                          <div class="one-forth">
                            <span class="price">$29</span>
                          </div>
                        </div>
                      </div>
                      <div class="menus d-flex ftco-animate">
                        <div class="menu-img" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/dish-11.jpg);"></div>
                        <div class="text d-flex">
                          <div class="one-half">
                            <h3>Baked Lobster With A Garnish</h3>
                            <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                          </div>
                          <div class="one-forth">
                            <span class="price">$29</span>
                          </div>
                        </div>
                      </div>
                      <div class="menus d-flex ftco-animate">
                        <div class="menu-img" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/dish-11.jpg);"></div>
                        <div class="text d-flex">
                          <div class="one-half">
                            <h3>Octopus with Vegetables</h3>
                            <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                          </div>
                          <div class="one-forth">
                            <span class="price">$29</span>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div><!-- END -->

                <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="menus d-flex ftco-animate">
                        <div class="menu-img" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/dessert-1.jpg);"></div>
                        <div class="text d-flex">
                          <div class="one-half">
                            <h3>Grilled Beef with potatoes</h3>
                            <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                          </div>
                          <div class="one-forth">
                            <span class="price">$29</span>
                          </div>
                        </div>
                      </div>
                      <div class="menus d-flex ftco-animate">
                        <div class="menu-img" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/dessert-2.jpg);"></div>
                        <div class="text d-flex">
                          <div class="one-half">
                            <h3>Grilled Beef with potatoes</h3>
                            <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                          </div>
                          <div class="one-forth">
                            <span class="price">$29</span>
                          </div>
                        </div>
                      </div>
                      <div class="menus d-flex ftco-animate">
                        <div class="menu-img" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/dessert-3.jpg);"></div>
                        <div class="text d-flex">
                          <div class="one-half">
                            <h3>Grilled Beef with potatoes</h3>
                            <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                          </div>
                          <div class="one-forth">
                            <span class="price">$29</span>
                          </div>
                        </div>
                      </div>
                      <div class="menus d-flex ftco-animate">
                        <div class="menu-img" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/dessert-4.jpg);"></div>
                        <div class="text d-flex">
                          <div class="one-half">
                            <h3>Grilled Beef with potatoes</h3>
                            <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                          </div>
                          <div class="one-forth">
                            <span class="price">$29</span>
                          </div>
                        </div>
                      </div>
                      <div class="menus d-flex ftco-animate">
                        <div class="menu-img" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/dessert-5.jpg);"></div>
                        <div class="text d-flex">
                          <div class="one-half">
                            <h3>Grilled Beef with potatoes</h3>
                            <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                          </div>
                          <div class="one-forth">
                            <span class="price">$29</span>
                          </div>
                        </div>
                      </div>
                    </div>

                    <div class="col-lg-6">
                      <div class="menus d-flex ftco-animate">
                        <div class="menu-img" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/dessert-6.jpg);"></div>
                        <div class="text d-flex">
                          <div class="one-half">
                            <h3>Tiramisu</h3>
                            <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                          </div>
                          <div class="one-forth">
                            <span class="price">$29</span>
                          </div>
                        </div>
                      </div>
                      <div class="menus d-flex ftco-animate">
                        <div class="menu-img" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/dessert-7.jpg);"></div>
                        <div class="text d-flex">
                          <div class="one-half">
                            <h3>Chocolate Cream</h3>
                            <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                          </div>
                          <div class="one-forth">
                            <span class="price">$29</span>
                          </div>
                        </div>
                      </div>
                      <div class="menus d-flex ftco-animate">
                        <div class="menu-img" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/dessert-8.jpg);"></div>
                        <div class="text d-flex">
                          <div class="one-half">
                            <h3>Pizza Pie</h3>
                            <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                          </div>
                          <div class="one-forth">
                            <span class="price">$29</span>
                          </div>
                        </div>
                      </div>
                      <div class="menus d-flex ftco-animate">
                        <div class="menu-img" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/dessert-9.jpg);"></div>
                        <div class="text d-flex">
                          <div class="one-half">
                            <h3>Sicilian Ricotta</h3>
                            <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                          </div>
                          <div class="one-forth">
                            <span class="price">$29</span>
                          </div>
                        </div>
                      </div>
                      <div class="menus d-flex ftco-animate">
                        <div class="menu-img" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/dessert-10.jpg);"></div>
                        <div class="text d-flex">
                          <div class="one-half">
                            <h3>Mango FLoat</h3>
                            <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                          </div>
                          <div class="one-forth">
                            <span class="price">$29</span>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div><!-- END -->

                <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="menus d-flex ftco-animate">
                        <div class="menu-img" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/drink-1.jpg);"></div>
                        <div class="text d-flex">
                          <div class="one-half">
                            <h3>Lemon Juice</h3>
                            <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                          </div>
                          <div class="one-forth">
                            <span class="price">$29</span>
                          </div>
                        </div>
                      </div>
                      <div class="menus d-flex ftco-animate">
                        <div class="menu-img" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/drink-2.jpg);"></div>
                        <div class="text d-flex">
                          <div class="one-half">
                            <h3>Guava Juice</h3>
                            <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                          </div>
                          <div class="one-forth">
                            <span class="price">$29</span>
                          </div>
                        </div>
                      </div>
                      <div class="menus d-flex ftco-animate">
                        <div class="menu-img" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/drink-3.jpg);"></div>
                        <div class="text d-flex">
                          <div class="one-half">
                            <h3>Sprite</h3>
                            <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                          </div>
                          <div class="one-forth">
                            <span class="price">$29</span>
                          </div>
                        </div>
                      </div>
                      <div class="menus d-flex ftco-animate">
                        <div class="menu-img" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/drink-4.jpg);"></div>
                        <div class="text d-flex">
                          <div class="one-half">
                            <h3>Cola</h3>
                            <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                          </div>
                          <div class="one-forth">
                            <span class="price">$29</span>
                          </div>
                        </div>
                      </div>
                      <div class="menus d-flex ftco-animate">
                        <div class="menu-img" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/drink-5.jpg);"></div>
                        <div class="text d-flex">
                          <div class="one-half">
                            <h3>Wine</h3>
                            <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                          </div>
                          <div class="one-forth">
                            <span class="price">$29</span>
                          </div>
                        </div>
                      </div>
                    </div>

                    <div class="col-lg-6">
                      <div class="menus d-flex ftco-animate">
                        <div class="menu-img" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/drink-6.jpg);"></div>
                        <div class="text d-flex">
                          <div class="one-half">
                            <h3>Beer</h3>
                            <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                          </div>
                          <div class="one-forth">
                            <span class="price">$29</span>
                          </div>
                        </div>
                      </div>
                      <div class="menus d-flex ftco-animate">
                        <div class="menu-img" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/drink-7.jpg);"></div>
                        <div class="text d-flex">
                          <div class="one-half">
                            <h3>Mango Juice</h3>
                            <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                          </div>
                          <div class="one-forth">
                            <span class="price">$29</span>
                          </div>
                        </div>
                      </div>
                      <div class="menus d-flex ftco-animate">
                        <div class="menu-img" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/drink-8.jpg);"></div>
                        <div class="text d-flex">
                          <div class="one-half">
                            <h3>Apple Juice</h3>
                            <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                          </div>
                          <div class="one-forth">
                            <span class="price">$29</span>
                          </div>
                        </div>
                      </div>
                      <div class="menus d-flex ftco-animate">
                        <div class="menu-img" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/drink-9.jpg);"></div>
                        <div class="text d-flex">
                          <div class="one-half">
                            <h3>Strawberry Juice</h3>
                            <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                          </div>
                          <div class="one-forth">
                            <span class="price">$29</span>
                          </div>
                        </div>
                      </div>
                      <div class="menus d-flex ftco-animate">
                        <div class="menu-img" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/drink-10.jpg);"></div>
                        <div class="text d-flex">
                          <div class="one-half">
                            <h3>Orange Juice</h3>
                            <p><span>Meat</span>, <span>Potatoes</span>, <span>Rice</span>, <span>Tomatoe</span></p>
                          </div>
                          <div class="one-forth">
                            <span class="price">$29</span>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      <section class="ftco-section parallax-img" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/bg_3.jpg);" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
          <div class="row justify-content-center mb-5 pb-5">
            <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
              <h2>Our Specialties</h2>
            </div>
          </div>
        </div>
      </section>
      <section class="ftco-section bg-light">
        <div class="container special-dish">
          <div class="row d-flex no-gutters">
            <div class="col-lg-6">
              <div class="block-3 d-md-flex ftco-animate">
                <div class="image order-last" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/dish-3.jpg);"></div>
                <div class="text text-center order-first">
                  <h2 class="heading">Beef Steak</h2>
                  <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts</p>
                  <span class="price">from $10.00</span>
                </div>
              </div>
              <div class="block-3 d-md-flex ftco-animate">
                <div class="image order-first" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/dish-4.jpg);"></div>
                <div class="text text-center order-first">
                  <h2 class="heading">Beef Ribs Steak</h2>
                  <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts</p>
                  <span class="price">from $10.00</span>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="block-3 d-md-flex ftco-animate">
                <div class="image order-last" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/dish-5.jpg);"></div>
                <div class="text text-center order-first">
                  <h2 class="heading">Chopsuey</h2>
                  <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts</p>
                  <span class="price">from $10.00</span>
                </div>
              </div>
              <div class="block-3 d-md-flex ftco-animate">
                <div class="image order-first" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/dish-6.jpg);"></div>
                <div class="text text-center order-first">
                  <h2 class="heading">Roasted Chieken</h2>
                  <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts</p>
                  <span class="price">from $10.00</span>
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
            <div class="col-md-4 ftco-animate img" style="background-image: url(<?php bloginfo('template_url') ?>/assets/images/bg_1.jpg);"></div>
            <div class="col-md-8 ftco-animate makereservation p-5 bg-light">
              <form action="#">
                <div class="row">
                  <div class="col-md-6">
                    <div class="form-group">
                      <label for="">Nombre</label>
                      <input type="text" class="form-control" placeholder="Su Nombre">
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label for="">Email</label>
                      <input type="text" class="form-control" placeholder="Su Email">
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label for="">Teléfono</label>
                      <input type="text" class="form-control" placeholder="Teléfono">
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label for="">Celular</label>
                      <input type="text" class="form-control" id="book_date" placeholder="Celular">
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label for="">Fecha</label>
                      <input type="text" class="form-control" id="book_time" placeholder="Fecha">
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label for="">Personas</label>
                      <div class="select-wrap one-third">
                        <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                        <select name="" id="" class="form-control">
                          <option value="">Cantidad de personas</option>
                          <option value="">1</option>
                          <option value="">2</option>
                          <option value="">3</option>
                          <option value="">4+</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-12 mt-3">
                    <div class="form-group">
                      <input type="submit" value="Reservar" class="btn btn-primary py-3 px-5">
                    </div>
                  </div>
                </div>
              </form>
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
