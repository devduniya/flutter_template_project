plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

def keystoreProperties = new Properties()
def keystorePropertiesFile = rootProject . file ("key.properties")
if (keystorePropertiesFile.exists()) {
    keystoreProperties.load(new FileInputStream (keystorePropertiesFile))
}

android {
    namespace = "com.example.flutter_template_project"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = flutter.minSdkVersion
        applicationId = "com.example.flutter_template_project"
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    signingConfigs {
        release {
            keyAlias keystoreProperties ['keyAlias']
            keyPassword keystoreProperties ['keyPassword']
            storeFile keystoreProperties ['storeFile'] ? file(keystoreProperties['storeFile']) : null
            storePassword keystoreProperties ['storePassword']
        }
    }

    buildTypes {
        release {
            signingConfig signingConfigs . release
                    minifyEnabled true
            shrinkResources true
            proguardFiles getDefaultProguardFile ('proguard-android-optimize.txt'), 'proguard-rules.pro'
        }
        debug {
            signingConfig signingConfigs . release
        }
    }
}

flutter {
    source = "../.."
}
