
# Explanation Of Comments

### main_cushome.dart
MAINCUSHOME01 - searchFlag is a variable similar to sea in your code ( that is used to show the cancel icon when we start typing something in the searchbox ).<br/><br/>
MAINCUSHOME02 - Button to be linked to the select categories page<br/><br/>
MAINCUSHOME03 - Text to be replaced with the username from Firebase<br/><br/>
MAINCUSHOME04 - Sort functions<br/><br/>
MAINCUSHOME05 - Search function<br/><br/>
MAINCUSHOME06 - In the press attribute, add a function to redirect to the options ( TV, Instagram, YouTube ) screen<br/><br/>
MAINCUSHOME10 - See data_cushome.dart and you'll understand. It has a class CusHomeList comprising of two members -  customer's company's name and ad category. Here, we define the getCusHomeData() method to populate the list with CusHomeList objects and return List<CusHomeList>.<br/><br/>
So when the getCusHomeData() function is called from main_cushome.dart, it accesses data from data_cushome.dart of the List<CusHomeList> type and we use that list in the screen.<br/><br/>

### main_cus_navbar.dart
CUSNAV01 - Add some function here to retrieve the name of the user.<br/><br/>
CUSNAV02 - In each of those children, to add a function to redirect to respective screens, go to the selectedItem widget at the end of the file.


