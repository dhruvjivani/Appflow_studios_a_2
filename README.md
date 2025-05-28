# FlexDash - A Responsive Flutter Productivity App

**Developer**: Dhruv Jivani
**Institute**: AppFlow Studios  
**Assignment**: Responsive UI and Navigation in Flutter  
**Course**: Mobile and Web Development

---

## 📱 Overview

FlexDash is a prototype productivity app designed to showcase Flutter’s capabilities in creating responsive layouts and smooth multi-screen navigation. Built as part of an academic assignment, this app dynamically adjusts to different screen sizes and orientations while maintaining consistent theming and styling throughout the user interface.

---

## 🚀 Features

### ✅ Responsive Layouts
- **Portrait Mode**: Displays a vertically arranged dashboard.
- **Landscape Mode**: Transforms into a horizontally arranged layout.
- **Tools Used**:
    - `MediaQuery` for detecting screen size and orientation.
    - `LayoutBuilder` for adapting widget sizes and layouts dynamically.

### ✅ Multi-Screen Navigation
- **Home Screen**: Provides an overview with buttons navigating to the Detail and Settings screens.
- **Detail Screen**: Displays information about selected dashboard items.
- **Settings Screen**: Allows customization like theme toggling.
- **Tools Used**:
    - `Navigator`
    - Named routes for clean and scalable navigation.
    - Built-in back navigation support.

### ✅ Theming & Styling
- Custom `ThemeData` with:
    - Primary and secondary colors.
    - Custom Google Fonts integration.
    - Consistent shadows, paddings, margins, and rounded widgets.
- Visual enhancements through stylized:
    - Buttons
    - Cards/Containers
    - Global text styles

---

## 🛠️ How to Build and Run

1. **Clone the Repository**:
   ```bash
   git clone <repository-url>
   cd flexdash
