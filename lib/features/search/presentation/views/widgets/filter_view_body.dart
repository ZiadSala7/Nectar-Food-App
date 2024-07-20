import 'package:flutter/material.dart';
import 'package:nectar_app/core/widgets/custom_button.dart';

import 'filtering_chosen_section.dart';
import 'filtering_decoration_method.dart';

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
}
