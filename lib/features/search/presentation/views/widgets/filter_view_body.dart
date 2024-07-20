import 'package:flutter/material.dart';
import 'package:nectar_app/constants.dart';
import 'package:nectar_app/core/utils/styles.dart';
import 'package:nectar_app/core/widgets/custom_button.dart';

class FilterViewBody extends StatelessWidget {
  const FilterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: filterViewBodyBoxDecorationMethod(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            child: const Expanded(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    CustomFilteringChosenSection(
                      category: ' Categories',
                      label1: 'Eggs',
                      label2: 'Noodies & Pasta',
                      label3: 'Chips & Crisps',
                      label4: 'Fast Food',
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    CustomFilteringChosenSection(
                      category: ' Brand',
                      label1: 'Indiviual Collection',
                      label2: 'Cocola',
                      label3: 'Ifad',
                      label4: 'Kazi Farmas',
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: CustomButton(
              descriptionButtonTxt: 'Apply Filter',
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  BoxDecoration filterViewBodyBoxDecorationMethod() {
    return const BoxDecoration(
      color: Color.fromARGB(67, 158, 158, 158),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
    );
  }
}

class CustomFilteringChosenSection extends StatelessWidget {
  final String category;
  final String label1;
  final String label2;
  final String label3;
  final String label4;
  const CustomFilteringChosenSection({
    super.key,
    required this.category,
    required this.label1,
    required this.label2,
    required this.label3,
    required this.label4,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          category,
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        CustomChosenFilteringItem(
          label: label1,
        ),
        CustomChosenFilteringItem(
          label: label2,
        ),
        CustomChosenFilteringItem(
          label: label3,
        ),
        CustomChosenFilteringItem(
          label: label4,
        ),
      ],
    );
  }
}

class CustomChosenFilteringItem extends StatefulWidget {
  final String label;
  const CustomChosenFilteringItem({super.key, required this.label});

  @override
  State<CustomChosenFilteringItem> createState() =>
      _CustomChosenFilteringItemState();
}

class _CustomChosenFilteringItemState extends State<CustomChosenFilteringItem> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            setState(() {
              isClicked = !isClicked;
            });
          },
          icon: !isClicked
              ? const Icon(
                  Icons.check_box_outline_blank,
                  size: 25,
                )
              : const Icon(
                  Icons.check_box_rounded,
                  size: 25,
                  color: commonColor,
                ),
        ),
        Text(
          widget.label,
          style: Styles.textStyle16.copyWith(
            color: isClicked ? commonColor : Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
