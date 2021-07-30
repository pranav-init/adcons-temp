class AdvHomeList {
  String cusCompName; //customer's company's name
  String cusCompCat; //ad category
  String cusUserName;
  String price;

  AdvHomeList(
      String cusCompName, String cusCompCat, String cusUserName, String price) {
    this.cusCompName = cusCompName;
    this.cusCompCat = cusCompCat;
    this.cusUserName = cusUserName;
    this.price = price;
  }
}

List<AdvHomeList> getAdvHomeData() {
  List<AdvHomeList> lis = [];
  AdvHomeList obj1 = new AdvHomeList('Bajaj', 'Automobiles', 'Ram', '1500');
  AdvHomeList obj2 =
      new AdvHomeList('MRF', 'Everyday Utilities', 'Ram', '1500');
  AdvHomeList obj3 =
      new AdvHomeList('Swiggy', 'Food and Beverages', 'Ram', '1500');
  AdvHomeList obj4 = new AdvHomeList('Mutthoot', 'Finance', 'Ram', '1500');
  AdvHomeList obj5 = new AdvHomeList('Manappuram', 'Finance', 'Ram', '1500');
  AdvHomeList obj6 = new AdvHomeList('Lux', 'Electronics', 'Ram', '1500');
  AdvHomeList obj7 = new AdvHomeList('Dell', 'Electronics', 'Ram', '1500');
  AdvHomeList obj8 = new AdvHomeList('Yamaha', 'Electronics', 'Ram', '1500');
  AdvHomeList obj9 =
      new AdvHomeList('Domex', 'Everyday Utilities', 'Ram', '1500');
  AdvHomeList obj10 =
      new AdvHomeList('Good Day', 'Food and Beverages', 'Ram', '1500');

  lis.add(obj1);
  lis.add(obj2);
  lis.add(obj3);
  lis.add(obj4);
  lis.add(obj5);
  lis.add(obj6);
  lis.add(obj7);
  lis.add(obj8);
  lis.add(obj9);
  lis.add(obj10);

  return lis;
}
