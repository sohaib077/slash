import 'package:slash/features/home/data/models/data_model.dart';

abstract class DummyData {
  static const List<DataModel> bestSellers = [
    DataModel(
      id: 1,
      name: "Stitch Keychain",
      image: "assets/images/best_seller_1.png",
      price: 29.99,
    ),
    DataModel(
      id: 2,
      name: "Baby Girl Dress",
      image: "assets/images/best_seller_2.png",
      price: 49.99,
    ),
    DataModel(
      id: 3,
      name: "Infant Hair Clips",
      image: "assets/images/best_seller_3.png",
      price: 19.99,
    ),
    DataModel(
      id: 4,
      name: "Best Seller 4",
      image: "assets/images/best_seller_1.png",
      price: 39.99,
    ),
    DataModel(
      id: 5,
      name: "Best Seller 1",
      image: "assets/images/best_seller_2.png",
      price: 24.99,
    ),
  ];

  static const List<DataModel> newArrival = [
    DataModel(
      id: 1,
      name: "Printed bag",
      image: "assets/images/new_arrival_1.png",
      price: 34.99,
    ),
    DataModel(
      id: 2,
      name: "Notebook",
      image: "assets/images/new_arrival_2.png",
      price: 54.99,
    ),
    DataModel(
      id: 3,
      name: "Woolen Scarf",
      image: "assets/images/new_arrival_3.png",
      price: 21.99,
    ),
    DataModel(
      id: 4,
      name: "New Arrival 4",
      image: "assets/images/new_arrival_1.png",
      price: 42.99,
    ),
    DataModel(
      id: 5,
      name: "New Arrival 5",
      image: "assets/images/new_arrival_2.png",
      price: 29.49,
    ),
  ];

  static const List<DataModel> recommendedForYou = [
    DataModel(
      id: 1,
      name: "Leather Jacket",
      image: "assets/images/recommended_1.png",
      price: 27.99,
    ),
    DataModel(
      id: 2,
      name: "Dog Medal",
      image: "assets/images/recommended_2.png",
      price: 47.99,
    ),
    DataModel(
      id: 3,
      name: "Leather Bracelet",
      image: "assets/images/recommended_3.png",
      price: 18.99,
    ),
    DataModel(
      id: 4,
      name: "Recommended 4",
      image: "assets/images/recommended_1.png",
      price: 36.99,
    ),
    DataModel(
      id: 5,
      name: "Recommended 5",
      image: "assets/images/recommended_2.png",
      price: 25.99,
    ),
  ];
}
