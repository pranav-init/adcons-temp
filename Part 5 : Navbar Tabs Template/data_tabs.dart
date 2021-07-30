class TabList {
  String advName;
  String adCat;
  String adLink;

  TabList(this.advName, this.adCat, [this.adLink = 'null']);
}

List<TabList> getTabList() {
  List<TabList> tlis = [];

  tlis.add(new TabList('Avdertiser 1', 'Electronics'));
  tlis.add(new TabList('Avdertiser 2', 'Services'));
  tlis.add(new TabList('Avdertiser 3', 'Electronics'));
  tlis.add(new TabList('Avdertiser 4', 'Services'));
  tlis.add(new TabList('Avdertiser 5', 'FMCG'));
  tlis.add(new TabList('Avdertiser 6', 'Automobile'));

  return tlis;
}
