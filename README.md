# 🚀 Flutter Template Project

A **production-ready Flutter boilerplate** that provides a smooth, scalable foundation for your next Flutter app.  
It includes a splash screen, authentication flow, centralized theme management, offline storage with Hive, and beautiful animations — all built with **GetX**, **Hive**, and **flutter_animate**.

---

## ✨ Features

| Category | Description |
|-----------|-------------|
| 🧠 **State Management** | Built using GetX (Controller, Binding, Navigation) |
| 💾 **Local Storage** | Integrated with Hive for offline persistence |
| 💫 **Animations** | Smooth UI transitions with `flutter_animate` |
| 🌗 **Theming** | Centralized Light & Dark themes with extensive style sets |
| 🧰 **Folder Structure** | Scalable clean architecture with modular structure |
| 🧩 **Preconfigured Builds** | Gradle wrapper and release signing configuration |
| 🔐 **Security** | Excludes keys and credentials in `.gitignore` |
| 📝 **Docs Included** | README, LICENSE, CHANGELOG, Build instructions |
| ⚙️ **Template Reuse Ready** | Easily clone, rename, and initialize new projects with one setup |

---

## 📁 Project Structure

```text
lib/core/theme/
lib/core/constants/
lib/data/
lib/routes/
lib/screens/
lib/splash/
lib/auth/
lib/utils/
lib/main.dart
```

## ⚙️ Dependencies Used

| Package | Purpose |
|----------|----------|
| `get` | State management & navigation |
| `hive` & `hive_flutter` | Offline local storage |
| `flutter_animate` | Animations |
| `path_provider` | File directory handling |
| `flutter_lints` | Code quality checks |

---

## 🧠 How to Use this Template to Create Your Own Project

Follow these steps carefully to **create your own client project** from this template.  
After completing all steps, your new project will look like a clean, original Flutter project — **no further manual cleanup or edits required**.

---

### 🪄 Step 1. Clone the Template Repository

#### 🔹 macOS / Linux

```bash
git clone https://github.com/yourusername/flutter_template_project.git
cd flutter_template_project
```

### 🪄 Step 2. Copy and Rename the Project

Choose a new project name, for example: awesome_client_app

# 🔹 macOS / Linux

```bash
cp -r flutter_template_project awesome_client_app
cd awesome_client_app
```
# 🔹 Windows (CMD)

```cmd
xcopy flutter_template_project awesome_client_app /E /I /H
cd awesome_client_app
```

### 🪄 Step 3. Replace the Old Project Name Everywhere

We’ll replace all instances of flutter_template_project and Flutter Template Project
with your new project name (awesome_client_app, Awesome Client App, etc.)

# 🔹 macOS / Linux

```bash
find . -type f -exec sed -i '' 's/flutter_template_project/awesome_client_app/g' {} +
find . -type f -exec sed -i '' 's/Flutter Template Project/Awesome Client App/g' {} +
```
# 🔹 Windows (PowerShell)
```PowerShell
Get-ChildItem -Recurse -Include *.dart,*.yaml,*.gradle,*.xml,*.md |
ForEach-Object {
  (Get-Content $_.FullName) -replace 'flutter_template_project', 'awesome_client_app' `
  -replace 'Flutter Template Project', 'Awesome Client App' | Set-Content $_.FullName
}
```

### 🪄 Step 4. Rename the App Package (Bundle ID)

This updates the app’s package ID (com.example.fluttertemplate) to your desired one (com.client.awesomeapp).

# 🔹 macOS / Linux
```bash
flutter pub add rename_app
dart run rename_app:main all="Awesome Client App" --bundleId com.client.awesomeapp

```

# 🔹 Windows (CMD)
```cmd
flutter pub add rename_app
dart run rename_app:main all="Awesome Client App" --bundleId com.client.awesomeapp
```

# 🪄 Step 5. Rename LICENSE Owner

Open LICENSE file and replace:
```r
Copyright (c) 2025
```

with:
```scss
Copyright (c) 2025 [Your Company or Client Name]
```

### 🪄 Step 6. Clean and Re-Initialize Git
# 🔹 macOS / Linux
```bash
rm -rf .git
git init
git add .
git commit -m "Initial commit"
```

# 🔹 Windows (CMD)
```cmd
rmdir .git /s /q
git init
git add .
git commit -m "Initial commit - Awesome Client App"
```

### 🪄 Step 7. Fetch Dependencies
```cmd
flutter clean
flutter pub get
```

### 🪄 Step 8. Run the Project
```cmd
flutter run
```

### 🪄 Step 9. Configure Release Signing (Optional)

You can use the included signing setup (android/app/key.properties).

To generate a new keystore:
```bash
keytool -genkey -v -keystore app/my-release-key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias mykey
```

Update key.properties with your credentials:
```properties
storePassword=myStorePassword
keyPassword=myKeyPassword
keyAlias=mykey
storeFile=../app/my-release-key.jks
```

Then build:
```
flutter build appbundle --release
```

### 🧩 Reuse Summary

✅ Template to Client App Workflow

Step	Action	Command
1	Clone Template	git clone ...
2	Copy Folder	cp / xcopy
3	Rename Strings	sed / PowerShell
4	Change Package	dart run rename_app
5	Update License	Edit LICENSE
6	Reset Git	git init
7	Get Packages	flutter pub get
8	Run App	flutter run

After Step 8, your app will look and behave exactly like a freshly created Flutter project,
but with all the benefits of the template’s complete setup.

### 📦 Build Commands
Build Type	Command
Debug	flutter run
Release APK	flutter build apk --release
Release AAB	flutter build appbundle --release
iOS Archive	flutter build ios --release
### 🧱 Tech Stack Summary

Framework: Flutter 3.x

State Management: GetX

Local Storage: Hive

Animation: flutter_animate

Architecture: Clean + Modular

Theme: Centralized Light/Dark

Build Tools: Gradle 8.6, Android SDK 34

Supported Platforms: Android, iOS, Web, Desktop (optional)

🪪 License

This project is licensed under the MIT License
.
You can freely modify and distribute this template for your projects.

### 🧑‍💻 Author

Template Maintained By: @devduniya

GitHub: https://github.com/devduniya