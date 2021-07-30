class CusHomeList {
  String cusCompName; //customer's company's name
  String cusCompCat; //ad category

  CusHomeList(String advName, String cusCat) {
    this.cusCompName = cusCompName;
    this.cusCompCat = cusCompCat;
  }
}

List<CusHomeList> getCusHomeData() {
  List<CusHomeList> lis = [];
  CusHomeList obj1 = new CusHomeList('Bajaj', 'Automobiles');
  CusHomeList obj2 = new CusHomeList('MRF', 'Everyday Utilities');
  CusHomeList obj3 = new CusHomeList('Swiggy', 'Food and Beverages');
  CusHomeList obj4 = new CusHomeList('Mutthoot', 'Finance');
  CusHomeList obj5 = new CusHomeList('Manappuram', 'Finance');
  CusHomeList obj6 = new CusHomeList('Lux', 'Electronics');
  CusHomeList obj7 = new CusHomeList('Dell', 'Electronics');
  CusHomeList obj8 = new CusHomeList('Yamaha', 'Electronics');
  CusHomeList obj9 = new CusHomeList('Domex', 'Everyday Utilities');
  CusHomeList obj10 = new CusHomeList('Good Day', 'Food and Beverages');

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
