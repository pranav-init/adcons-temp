class Category {
  String imageLocation;
  String imageDescription;

  Category(String imageLocation, String imageDescription) {
    this.imageLocation = imageLocation;
    this.imageDescription = imageDescription;
  }
}

List<Category> getCategoryData() {
  List<Category> categoryLis = [];
  categoryLis
      .add(new Category("assets/images/choose_Furniture.jpg", "Furniture"));
  categoryLis
      .add(new Category("assets/images/choose_Electronics.jpg", "Electronics"));
  categoryLis.add(
      new Category("assets/images/choose_Commercial Services.jpg", "Services"));
  categoryLis.add(new Category("assets/images/choose_FMCG.jpg", "Goods"));
  categoryLis.add(
      new Category("assets/images/choose_Commercial Services.jpg", "Services"));
  categoryLis.add(new Category("assets/images/choose_Arts.jpg", "Arts"));
  categoryLis.add(new Category("assets/images/choose_NGO.jpg", "NGOs"));

  return categoryLis;
}
