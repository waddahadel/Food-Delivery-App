# Flutter Food Delivery App

## Overview

Welcome to my **Food Delivery App**, developed using Flutter for cross-platform mobile development. This project was inspired by the growing demand for convenient food delivery solutions, and I set out to create a user-friendly application that connects customers with local restaurants, enabling them to order their favorite meals with ease.

The app features a modern design and seamless user experience, allowing users to browse menus, place orders, track deliveries, and manage their profiles—all in one place. Through this project, I gained valuable insights into Flutter development, mobile app architecture, and integrating APIs for real-time data handling.

## Project Details

### Key Features

The Food Delivery App includes several essential features:

- **User Authentication**: Secure login and registration for users, with options for social media login.
  
- **Restaurant Listings**: A dynamic list of nearby restaurants, complete with ratings, reviews, and menus.

- **Menu Browsing**: Users can browse detailed menus of their selected restaurants, view item descriptions, and add items to their cart.

- **Order Management**: Easy checkout process where users can review their orders, apply discounts, and choose payment methods.

- **Real-Time Order Tracking**: Users can track the status of their orders in real time, receiving updates from preparation to delivery.

- **Profile Management**: Users can manage their profiles, including saved addresses, payment methods, and order history.

- **Push Notifications**: Timely updates on order status, promotions, and new restaurant listings via push notifications.

### Tech Stack

I utilized the following technologies and tools to develop this application:

- **Flutter**: The primary framework for building cross-platform apps.
- **Dart**: The programming language used to develop the app.
- **Firebase**: For authentication, real-time database, and cloud storage.
- **Google Maps API**: For location tracking and displaying restaurant locations.
- **Stripe API**: For secure payment processing.

### App Architecture

The app is structured using the **MVVM (Model-View-ViewModel)** design pattern, which promotes a clear separation of concerns and enhances maintainability. Here’s a brief overview of the architecture:

- **Models**: Classes representing data structures such as User, Restaurant, MenuItem, and Order.
  
- **Views**: Flutter widgets that represent the UI components of the app, utilizing Material Design for a polished look.

- **ViewModels**: Classes that manage the app’s state and business logic, interacting with the models and providing data to the views.

### Example Screens

1. **Home Screen**: Displays a list of nearby restaurants with an option to search.
2. **Restaurant Menu**: Shows the menu items for a selected restaurant with images and prices.
3. **Cart**: Users can view items they wish to order and proceed to checkout.
4. **Order Tracking**: A dedicated screen to track the real-time status of an order.

## Getting Started

### Prerequisites

To get started with the Food Delivery App, ensure you have the following installed:

- Flutter SDK
- Dart SDK
- Android Studio or Visual Studio Code
- Firebase account for authentication and database setup

### Installation

1. Clone this repository:
   ```bash
   git clone <repository-url>
   cd food-delivery-app
