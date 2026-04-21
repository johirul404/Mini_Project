import'users.dart';
import'books.dart';
abstract class LibraryServices{
  void brrowBooks(int userId, int bookId);
  void returnBooks(int userId, int bookId);
}
class Library extends LibraryServices{
  List<User> users = [];
  List<Book> books = [];
  User? isUser(int userId){
    for(var user in users){
      if(userId == user.id) return user;
    }
    return null;
  }
  Book? isBook(int bookId){
    for(var book in books){
      if(bookId == book.id) return book;
    }
    return null;
  }
  @override
  void brrowBooks(int userId, int bookId) {
    User? user = isUser(userId);
    Book? book = isBook(bookId);
    if(user == null){
      print("User not found!");
      return;
    }
    if(book == null){
      print("Book not found!");
      return;
    }
    if(!book.isAvailable){
      print("${book.title} is not available");
    }
    user.user_books.add(book);
    book.isAvailable = false;
    print("Congratulations! ${book.title} has been issued to ${user.name}");

  }
  @override
  void returnBooks(int userId, int bookId) {
    User? user = isUser(userId);
    Book? book = isBook(bookId);
    if(user == null){
      print("User not found!");
      return;
    }
    if(book == null){
      print("Book not found!");
      return;
    }
    if(!user.user_books.contains(book)){
      print("${user.name} did not borrow the book");
    }
    user.user_books.remove(book);
    book.isAvailable = true;
    print("Book ${book.title} successfully returned by ${user.name}");
  }

}