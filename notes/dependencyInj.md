# 🛠 Dependency Injection (DI) - Summary

## 📌 What is Dependency Injection?
Dependency Injection (DI) is a design pattern that **provides dependencies from outside a class**, rather than creating them inside the class itself.

---

## 🎯 Why Use Dependency Injection?
✅ **Loosely Coupled Code** → Classes depend on **abstractions**, not concrete implementations.  
✅ **Easier Testing** → You can inject **mock services** for unit tests.  
✅ **More Maintainable & Scalable** → Easier to switch or update dependencies.  
✅ **Better Reusability** → Components become **interchangeable** and reusable.

---

## 🔍 Example: Login System

### ❌ Without Dependency Injection (Hardcoded Dependency)
```dart
class LoginPage {
  final AuthService authService = AuthService(); // ❌ Hardcoded

  void login(String username, String password) {
    authService.authenticate(username, password);
  }
}
```
🔴 Problem:
LoginPage is tightly coupled to AuthService.

Difficult to change AuthService (e.g., switch to FirebaseAuth or MockAuth).

✅ With Dependency Injection (Better Approach)
dart
Copy
Edit
class LoginPage {
  final AuthService authService;  // ✅ Declare a variable

  LoginPage(this.authService);  // ✅ Inject dependency

  void login(String username, String password) {
    authService.authenticate(username, password);
  }
}
🔵 Using Dependency Injection:
dart
Copy
Edit
void main() {
  AuthService authService = FirebaseAuthService(); // 🔹 Can be replaced easily
  LoginPage loginPage = LoginPage(authService);  

  loginPage.login("user@example.com", "password123");  
}
🚀 Key Benefits of DI:
Flexible & Modular → Easy to replace dependencies.

Testable Code → Can inject mock services for unit tests.

Better Maintenance → No need to modify LoginPage to switch authentication methods.

🎭 Example: Switching to a Different Auth Service
dart
Copy
Edit
void main() {
  AuthService localAuth = LocalAuthService(); // 🔹 Just change the service!
  LoginPage loginPage = LoginPage(localAuth);

  loginPage.login("user@example.com", "password123");
}
🏆 Final Thoughts
Dependency Injection reduces coupling, improves testability, and makes code more reusable.
It’s widely used in Flutter (Provider, GetIt, Riverpod), Angular, Spring Boot, .NET, and more!
