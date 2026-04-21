import 'books.dart';
class User {
  User({required this.id,required this.name});
  int id;
  String name;
  List<Book> user_books = [];
  void showBooks(){
    for(var book in user_books){
      print(book.title);
    }
  }
}