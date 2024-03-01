# Single Feature Flutter Project with TDD Clean Architecture and MockAPI.IO 

This project is for my learning purpose. I will be learning and implementing Clean Code Principles in this Flutter Project according to Robert C Martin.

## Introduction

In software development, the quality of code plays a crucial role in the success of a project. While code might function even when poorly written, it can bring a development organization to its knees. Clean Architecture offers a solution to this problem. It's an investment in time, energy, and mental health that pays off in the long run.

## Components of Clean Architecture

### Domain Layer

1. **Entities**: Blueprints of objects passed around in the application.

2. **Repositories**: Define the contract between the data layer and domain layer. In languages like Java, these are interfaces, while in Dart, we mimic interface functionalities with abstract classes.

3. **Use Cases**: Represent the business logic of the application. They depend on repositories and focus on specific functionalities, following the Single Responsibility Principle (SRP). They are the only entities in the domain layer that we will be testing.

### Data Layer

1. **Models**: Extended or child versions of entities, providing additional features like serialization and copy functions. Testable.

2. **Repositories**: Implement domain repositories and interact with data sources to retrieve data. CRUD operations are handled here.

3. **Data Sources**: Query databases, APIs, and local storage.

### Presentation Layer

1. **Bloc/Cubit**: Manages the state of the UI and business logic, depending on use cases to execute business operations. Emits states to UI, decoupling it from business logic.

2. **View**: User Interface.

## Test-Driven Development (TDD)

TDD involves writing tests before implementing functionality. This ensures that code behaves as expected and emits fewer bugs.

## Dependency Injection

Bloc depends on use cases, use cases depend on repositories, and repositories depend on data sources. Dependency Injection ensures loosely coupled architecture, aligning with the SOLID principles.

## SOLID Principles

1. **Single Responsibility Principle (SRP)**: Every module should focus on one thing at a time, promoting clean architecture and improving maintainability.

2. **Open-Closed Principle (OCP)**: Classes should be open for extension but closed for modification.

3. **Liskov's Substitution Principle (LSP)**: Objects of a parent class should be replaceable with objects of a subclass without breaking the application.

4. **Interface Segregation Principle (ISP)**: Clients should not be forced to depend on interfaces they do not use, advocating for cohesive interfaces.

5. **Dependency Inversion Principle (DIP)**: High-level modules should not depend on low-level modules. Both should depend on abstractions, promoting loose coupling and abstraction management.

---

This README provides an overview of Clean Architecture, its components, and how it aligns with the SOLID principles. By adhering to Clean Architecture principles, developers can build robust, maintainable, and scalable software systems.
