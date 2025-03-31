# 📌 TDD vs. DDD

## 🟢 1. Test-Driven Development (TDD)
TDD is a **development approach** where tests are written **before** the actual code.  
It ensures that the code meets the required functionality and remains maintainable.

### ✅ Key Principles:
1. **Write a failing test** (Red)
2. **Write just enough code to pass the test** (Green)
3. **Refactor the code** (Refactor)
4. **Repeat the process**

### 🔹 Benefits:
- Ensures test coverage
- Improves code quality and design
- Helps catch bugs early

### 🔹 Example:
```dart
// 1️⃣ Write a failing test
test('should return the sum of two numbers', () {
  final result = add(2, 3);
  expect(result, 5);  // This will fail initially
});

// 2️⃣ Implement only what's needed
int add(int a, int b) => a + b;
