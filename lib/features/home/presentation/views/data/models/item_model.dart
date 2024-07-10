import 'package:nectar_app/core/utils/app_images.dart';

class ItemModel {
  final String imgPath;
  final String name;
  final String description;
  final String price;

  ItemModel({
    required this.imgPath,
    required this.name,
    required this.description,
    required this.price,
  });
}

List<ItemModel> exclusiveItems = [
  ItemModel(
    imgPath: AppImages.banana,
    name: 'Organic banana',
    description: '1k, Priceg',
    price: r'4.99$',
  ),
  ItemModel(
    imgPath: AppImages.apple,
    name: 'Organic banana',
    description: '1k, Priceg',
    price: r'4.99$',
  ),
  ItemModel(
    imgPath: AppImages.banana,
    name: 'Organic banana',
    description: '1k, Priceg',
    price: r'4.99$',
  ),
  ItemModel(
    imgPath: AppImages.apple,
    name: 'Organic banana',
    description: '1k, Priceg',
    price: r'4.99$',
  ),
  ItemModel(
    imgPath: AppImages.banana,
    name: 'Organic banana',
    description: '1k, Priceg',
    price: r'4.99$',
  ),
  ItemModel(
    imgPath: AppImages.apple,
    name: 'Organic banana',
    description: '1k, Priceg',
    price: r'4.99$',
  ),
];
