class AppUrl{
  static const String baseUrl = 'https://www.maheshwari.org/api/successstory/list?PageNumber=';
  static const String page_1 = 'https://www.maheshwari.org/api/successstory/list?PageNumber=1';

  static int pageNumber = 1;
  
  void nextPageUrl(){
    if(pageNumber<13) {pageNumber++;}
  }
  String getPageUrl(){
    return baseUrl+pageNumber.toString();
  }
  void previousPageUrl(){
    if(pageNumber>1) {pageNumber--;}
  }
}