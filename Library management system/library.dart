import 'books.dart';
import 'users.dart';
class Library {
  List<Book> books = [];
  List<User> users = [];

  void showAvailableBooks(){
    for(var book in books){
      if(book.isAvailable){
        print("Book: ${book.title} is available");
      }
    }
  }
  void borrowBook(int userId, int bookId){
    bool user_check = false;
    bool booK_check = false;
    for(var user in users){
      if(user.id == userId){
        user_check = true;
        for(var book in books){
          if(book.id == bookId){
            booK_check = true;
            if(book.isAvailable){
              user.user_books.add(book);
              book.isAvailable = false;
              print("Congratulations you have got the book");
              return;
            }else{
              print("${book.title} is not available");
              return;
            }
          }
        }
      }
    }
    if(user_check == false){
      print("User not found!");
    }
    if(booK_check == false){
      print("Book id not found!");
    }
  }

}