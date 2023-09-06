import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PhotoCarousel extends StatefulWidget {
  final List<String> imageUrls;

  PhotoCarousel({required this.imageUrls});

  @override
  _PhotoCarouselState createState() => _PhotoCarouselState();
}

class _PhotoCarouselState extends State<PhotoCarousel> {
  int currentIndex = 0;

  Widget buildIndicator() => Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: Colors.white,
    ),
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    child: AnimatedSmoothIndicator(
      effect: const ColorTransitionEffect(
        activeDotColor: Colors.black,
        dotColor: Colors.grey,
        dotHeight: 7,
        dotWidth: 7,
      ),
      activeIndex: currentIndex,
      count: widget.imageUrls.length,
    ),
  );

  Widget buildImage(String urlImage, int index) => Image.network(
    urlImage,
    fit: BoxFit.fill,
  );

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        children: [
          CarouselSlider.builder(
            options: CarouselOptions(
              height: 257,
              disableCenter: true,
              aspectRatio: 2,
              viewportFraction: 1,
              enlargeFactor: 1,
              onPageChanged: (index, reason) =>
                  setState(() => currentIndex = index),
            ),
            itemCount: widget.imageUrls.length,
            itemBuilder: (context, index, realIndex) {
              final urlImage = widget.imageUrls[index];
              return buildImage(urlImage, index);
            },
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Center(child: buildIndicator()),
          ),
        ],
      ),
    );
  }
}
