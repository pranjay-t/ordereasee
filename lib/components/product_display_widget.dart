import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:orderease/Theme/theme.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDisplayWidget extends StatefulWidget {
  const ProductDisplayWidget({super.key});

  @override
  State<ProductDisplayWidget> createState() => _ProductDisplayWidgetState();
}

class _ProductDisplayWidgetState extends State<ProductDisplayWidget> {
  int activePage = 0;
  final productImages = [
      'assets/images/ice_cubes_1.png',
      'assets/images/ice_cubes_2.png'
    ];
  @override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 400,
              child: LayoutBuilder(builder: (context, constraints) {
                return Stack(
                  children: [
                    CarouselSlider.builder(
                      itemCount: productImages.length,
                      itemBuilder: (context, index, realIndex) {
                        final image = productImages[index];
                        return Image.asset(
                          image,
                        );
                      },
                      options: CarouselOptions(
                          height: constraints.maxHeight,
                          aspectRatio:
                              constraints.maxWidth / constraints.maxHeight,
                          enableInfiniteScroll: false,
                          viewportFraction: 1.1,
                          enlargeCenterPage: false,
                          onPageChanged: (index, reason) {
                            setState(() {
                              activePage = index;
                            });
                          }),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: AnimatedSmoothIndicator(
                        activeIndex: activePage,
                        count: productImages.length,
                        effect: ExpandingDotsEffect(
                          dotWidth: 10,
                          dotHeight: 10,
                        ),
                      ),
                    )
                  ],
                );
              }),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Ice Cubes (1kg)',
              style: crystalIceTheme.textTheme.headlineSmall,
            ),
            Text(
              '₹200',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                // fontFamily: '',
              ),
            ),
          ],
        );
  }
}