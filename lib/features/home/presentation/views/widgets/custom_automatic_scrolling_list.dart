import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/features/home/presentation/views/widgets/carousel_slider_item.dart';
import 'package:nectar_app/main.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

Timer? timer;

class CustomAutomaticScrollingList extends StatefulWidget {
  const CustomAutomaticScrollingList({
    super.key,
    required this.height,
  });

  final double height;

  @override
  State<CustomAutomaticScrollingList> createState() =>
      _CustomAutomaticScrollingListState();
}

class _CustomAutomaticScrollingListState
    extends State<CustomAutomaticScrollingList> {
  PageController pageController = PageController();
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: widget.height * 0.2,
          child: PageView.builder(
            controller: pageController,
            itemCount: 3,
            itemBuilder: (context, indx) => const CarouselSliderItem(),
          ),
        ),
        Positioned(
          left: 180,
          bottom: 20,
          child: SmoothPageIndicator(
            controller: pageController,
            count: 3,
            effect: const ExpandingDotsEffect(
              activeDotColor: commonColor,
              dotColor: greyColor,
              dotHeight: 10,
              dotWidth: 10,
            ),
          ),
        ),
      ],
    );
  }

  void startTimer() {
    if (selectedIndx == 0) {
      timer = Timer.periodic(const Duration(seconds: 3), (timer) {
        pageController.page == 2
            ? pageController.animateTo(0,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut)
            : pageController.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut);
      });
    }
  }
}
