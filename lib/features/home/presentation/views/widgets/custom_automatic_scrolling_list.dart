import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/features/home/presentation/views/widgets/carousel_slider_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

Timer? timer;

class CustomAutomaticScrollingList extends StatefulWidget {
  const CustomAutomaticScrollingList({
    super.key,
    required this.height,
    required this.pageController,
  });

  final double height;
  final PageController pageController;

  @override
  State<CustomAutomaticScrollingList> createState() =>
      _CustomAutomaticScrollingListState();
}

class _CustomAutomaticScrollingListState
    extends State<CustomAutomaticScrollingList> {
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
            controller: widget.pageController,
            itemCount: 3,
            itemBuilder: (context, indx) => const CarouselSliderItem(),
          ),
        ),
        Positioned(
          left: 180,
          bottom: 20,
          child: SmoothPageIndicator(
            controller: widget.pageController,
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
    timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      widget.pageController.page == 2
          ? widget.pageController.animateTo(0,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut)
          : widget.pageController.nextPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut);
    });
  }
}
