# Moniepoint test assesment
# Real Estate App

A modern real estate application built with Flutter for browsing properties in Saint Petersburg.

## Features

### Map View
- Interactive dark-themed map interface
- Property markers with building icons
- Property clustering for better visualization
- Custom map style with street names in both Latin and Cyrillic
- Search functionality with location input
- Layer toggle functionality
- List view toggle option

### Property Listings
- Dual categorization: Buy (1034 listings) and Rent (2212 listings)
- Property cards with high-quality images
- Detailed property information including address (e.g., Gladkova St., 25)
- Bottom navigation bar with essential functions
- User profile integration
- Favorites system
- Messaging capability

### UI/UX
- Clean, modern interface with consistent styling
- Location-based personalization ("Hi, Marina")
- Responsive design supporting various screen sizes
- Custom navigation and tab bars
- Debug mode indicator for development

## Technical Stack

### Frontend
- Flutter SDK
- Custom markers and map styling
- Image caching for better performance

### Design
- Custom theme with orange (#FFA500) accent color
- Dark mode support for map view
- Material Design principles
- Custom icons and navigation elements


- Location-based state handling
- Property listing state management

## Setup Instructions

1. Ensure Flutter is installed and configured
2. Clone the repository
4. Run `flutter pub get` to install dependencies
5. Run `flutter run` to start the application

## Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter

  cupertino_icons: ^1.0.8
  flutter_svg: ^2.0.10+1
  google_fonts: ^6.2.1
  animate_do: ^3.3.3
  flutter_floating_bottom_bar: ^1.2.1+1
  
dev_dependencies:
  flutter_test:
    sdk: flutter

  flutter_lints: ^4.0.0
```

## Project Structure

```
lib/
├── view/
│   ├── home.dart
│   └── location.dart
└── colors.dart
└── custom_bottom_nav.dart
└── main.dart
```

## Contributing

[Add contribution guidelines]

## License

[Add license information]
