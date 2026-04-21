import 'books.dart';
import 'users.dart';
//import 'library.dart';
import 'update_library.dart';

void main() {
  Book book1 = Book(
    id: 1,
    title: "Paradocical sajid",
    author: "Arif Ajad",
    isAvailable: true,
  );
  Book book2 = Book(
    id: 2,
    title: "Paradocical sajid-2",
    author: "Arif Ajad",
    isAvailable: true,
  );
  Book book3 = Book(
    id: 3,
    title: "Paradocical sajid-3",
    author: "Arif Ajad",
    isAvailable: true,
  );
  Book book4 = Book(
    id: 4,
    title: "Paradocical sajid-4",
    author: "Arif Ajad",
    isAvailable: true,
  );
  User user1 = User(id: 1, name: "Rahim");
  User user2 = User(id: 2, name: "Karim");
  // Library library = Library();
  // library.books.addAll([book1, book2, book3, book4]);
  // library.users.addAll([user1, user2]);
  // print("Books:");
  // library.showAvailableBooks();
  // library.borrowBook(2, 3);
  // print("");
  // library.showAvailableBooks();
  Library library = Library();
  library.users.addAll([user1,user2]);
  library.books.addAll([book1,book2,book3,book4]);
  library.brrowBooks(2, 1);
  library.brrowBooks(2, 2);
  user2.showBooks();
  library.returnBooks(2, 1);
  user2.showBooks();
 }
