import 'dart:ui';

class CategoryModel {
  String categoryName;
  String iconPath;
  Color boxColor;

  CategoryModel(
      {required this.categoryName,
      required this.iconPath,
      required this.boxColor});

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];


    categories.add(CategoryModel(
        categoryName: 'Salad',
        iconPath: 'assets/icons/plate.svg',
        boxColor: Color(0XFF92A3FD)));


    categories.add(CategoryModel(
        categoryName: 'Cake',
        iconPath: 'assets/icons/pancakes.svg',
        boxColor: Color(0XFFC58BF2)));

    categories.add(CategoryModel(
        categoryName: 'Pie',
        iconPath: 'assets/icons/pie.svg',
        boxColor: Color(0XFF92A3FD)));

    categories.add(CategoryModel(
        categoryName: 'Smoothies',
        iconPath: 'assets/icons/orange-snacks.svg',
        boxColor: Color(0XFFC58BF2)));



    return categories;
  }
}
