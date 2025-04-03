import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:orderease/Theme/theme.dart';
import 'package:orderease/providers/product_provider.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDisplayWidget extends StatefulWidget {
  const ProductDisplayWidget({super.key});

  @override
  State<ProductDisplayWidget> createState() => _ProductDisplayWidgetState();
}

class _ProductDisplayWidgetState extends State<ProductDisplayWidget> {
  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          height: 400,
          child: LayoutBuilder(builder: (context, constraints) {
            return Stack(
              children: [
                CarouselSlider.builder(
                  itemCount: productProvider.productImages.length,
                  itemBuilder: (context, index, realIndex) {
                    final image = productProvider.productImages[index];
                    return Image.asset(
                      image,
                    );
                  },
                  options: CarouselOptions(
                      height: constraints.maxHeight,
                      aspectRatio: constraints.maxWidth / constraints.maxHeight,
                      enableInfiniteScroll: false,
                      viewportFraction: 1.1,
                      enlargeCenterPage: false,
                      onPageChanged: (index, reason) {
                        productProvider.onPageChanged(index);
                      }),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: AnimatedSmoothIndicator(
                    activeIndex: productProvider.activePage,
                    count: productProvider.productImages.length,
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
          productProvider.productName,
          style: crystalIceTheme.textTheme.headlineSmall,
        ),
        Text('₹${productProvider.productPrice}',
            style: Theme.of(context).textTheme.headlineMedium),
      ],
    );
  }
}
