
# Blueprint: Fitness App

## Overview

This document outlines the structure, design, and features of a Flutter-based fitness application. The app consists of three main screens: a home screen, a user profile screen, and a messages screen. The goal is to create a visually appealing and intuitive user experience for fitness enthusiasts.

## Project Structure

The project follows a standard Flutter structure, with all custom screens located in the `lib/mispantallas/` directory.

- `lib/main.dart`: The main entry point of the application, responsible for theme definition and route configuration.
- `lib/mispantallas/splash.dart`: A splash screen displayed on app launch.
- `lib/mispantallas/inicio.dart`: The home screen of the app.
- `lib/mispantallas/pantalla2.dart`: The user profile screen.
- `lib/mispantallas/pantalla3.dart`: The messages screen for communicating with trainers and partners.

## Style and Design

The application uses a modern and energetic design system built around a specific color palette and typography.

### Color Palette

- **Primary Brand Color**: `#e63946` (a vibrant red)
- **Secondary Brand Color**: `#457b9d` (a calm blue)
- **Accent Color**: `#a8dadc` (a light cyan)
- **Background Color**: `#f1faee` (a very light green)
- **Dark Text/UI Color**: `#1d3557` (a dark blue)

### Typography

- **Font**: `Roboto` from `google_fonts`.
- **Headlines**: Bold weight, larger font sizes.
- **Body Text**: Regular weight, standard font sizes.

## Features

### Implemented Features

- **Splash Screen**: A professional splash screen is displayed on app launch to improve the initial loading experience.
- **Three-Screen Layout**: Home, Profile, and Messages screens.
- **Routing and Navigation**: A `BottomNavigationBar` provides easy navigation between the main screens.
- **Centralized Theming**: A consistent and modern Material 3 theme is defined in `main.dart` and used across all screens.
    - Use of `ColorScheme.fromSeed` for a cohesive color palette.
    - Custom `google_fonts` typography.
    - Styled components like `AppBar`, `ElevatedButton`, and `Card`.
- **Dynamic Content**: Images are loaded from network URLs, and lists are populated dynamically.
- **Profile Picture on Home Screen**: The user's profile picture is displayed on the home screen.
- **Personalized User Information**: The user's full name and group are displayed on the profile screen.

### Current Plan: Add User Name and Group

**Status: [COMPLETED]**

**Goal**: Display the user's full name and group on the profile screen.

**Steps**:

1.  **[COMPLETED]** Modified `lib/mispantallas/pantalla2.dart`.
2.  **[COMPLETED]** Replaced the placeholder title with a `Text` widget for the user's full name, "Alexander Cancino Fernandez".
3.  **[COMPLETED]** Added another `Text` widget below the name to display the group, "6-i".

### Previous Plan: Add Profile Picture

**Status: [COMPLETED]**

**Goal**: Add a user profile picture to the home screen for a more personalized feel.

**Steps**:

1.  **[COMPLETED]** Refactored the header of the `Inicio.dart` screen to a `Row` layout.
2.  **[COMPLETED]** Added a `CircleAvatar` widget to display the profile picture.
3.  **[COMPLETED]** Used a `NetworkImage` to load the user-provided image URL.

### Previous Plan: Compilation Error Fix

**Status: [COMPLETED]**

**Goal**: Resolve the compilation errors that were preventing the app from running.

**Steps**:

1.  **[COMPLETED]** Corrected import paths for `inicio.dart` in `main.dart` and `splash.dart`.
2.  **[COMPLETED]** Removed the redundant `'/'` route from the `routes` map in `main.dart` to resolve the conflict with the `home` property.
3.  **[COMPLETED]** Removed the `const` keyword from `Inicio()` constructors in `main.dart` and `splash.dart` to prevent strict constant evaluation errors.
4.  **[COMPLETED]** Executed `flutter clean` and `flutter pub get` to clear any stale build cache and ensure all dependencies were correctly resolved.

### Previous Plan: Splash Screen Implementation

**Status: [COMPLETED]**

**Goal**: Add a professional splash screen to improve the initial loading experience of the app.

**Steps**:

1.  **[COMPLETED]** Added the `animated_splash_screen` package to `pubspec.yaml`.
2.  **[COMPLETED]** Created a new file `lib/mispantallas/splash.dart` for the splash screen widget.
3.  **[COMPLETED]** Designed the splash screen to feature the app's logo and name.
4.  **[COMPLETED]** Updated `main.dart` to show the splash screen on startup, which then navigates to the home screen.

### Previous Plan: Theming and Refinement

**Status: [COMPLETED]**

**Goal**: Elevate the visual design by implementing a centralized, modern, and professional theme.

**Steps**:

1.  **[COMPLETED]** Replaced placeholder image URLs with final images.
2.  **[COMPLETED]** Created `blueprint.md` to document the application.
3.  **[COMPLETED]** Implemented a centralized `ThemeData` in `main.dart` using `google_fonts`.
4.  **[COMPLETED]** Refactored all screens (`Inicio.dart`, `pantalla2.dart`, `pantalla3.dart`) to use the new theme, removing hardcoded styles.
