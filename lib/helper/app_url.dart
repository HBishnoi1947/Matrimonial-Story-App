class AppUrl{
  static const String baseUrl = 'https://www.maheshwari.org/api/successstory/list?PageNumber=';
  static const String page_1 = 'https://www.maheshwari.org/api/successstory/list?PageNumber=1';

  static int pageNumber = 1;
  
  String nextPage(){
    pageNumber++;
    return baseUrl+pageNumber.toString();
  }
  String previousPage(){
    pageNumber--;
    return baseUrl+pageNumber.toString();
  }
}