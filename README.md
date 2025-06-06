# 📷 Unsplash Image Gallery

A Flutter application that fetches and displays images from [Unsplash API](https://unsplash.com/developers).  
Users can search for images using keywords, view them in a responsive grid, and tap to preview full screen.

---

## 🧱 Features

- 🔍 Search for images using real queries (e.g., "nature", "technology", "people").
- 🖼️ Grid layout with responsive design.
- 🔄 Infinite scroll with automatic pagination.
- 📷 Full screen preview with pinch-to-zoom support.
- 🚀 Optimized with image caching (`cached_network_image`).

---

## 🚀 Getting Started

### ✅ Prerequisites

- [Flutter](https://flutter.dev/docs/get-started/install)
- [Unsplash API Key](https://unsplash.com/developers)

### 📦 Dependencies

```yaml
dependencies:
  flutter_bloc: ^8.1.3
  equatable: ^2.0.5
  dio: ^5.3.2
  cached_network_image: ^3.3.1

  ---

  🛠 Setup
  Clone the repository:
git clone https://github.com/YOUR_USERNAME/unsplash_gallery.git
cd unsplash_gallery

Replace the API key in:

lib/repositories/image_repository.dart

final String _accessKey = 'YOUR_UNSPLASH_ACCESS_KEY';

🔐 You can register and get the API key here: https://unsplash.com/developers

Run the app: 

flutter pub get
flutter run

---
📂 Project Structure
lib/
├── models/                # Image model
├── repositories/          # API logic
├── cubits/                # State management
├── screens/               # UI Screens
│   └── gallery_screen.dart
│   └── full_screen_image.dart
└── main.dart
---



