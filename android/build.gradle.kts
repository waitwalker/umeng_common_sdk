group = "com.umeng.umeng_common_sdk"
version = "1.0"

plugins {
    id("com.android.library")
    id("org.jetbrains.kotlin.android")
}

allprojects {
    repositories {
        google()
        mavenCentral()
        maven { url = uri("https://repo1.maven.org/maven2/") }
    }
}

android {
    namespace = "com.umeng.umeng_common_sdk"
    compileSdk = 36

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_17.toString()
    }

    defaultConfig {
        minSdk = 21
    }

    lint {
        disable += "InvalidPackage"
    }
}

dependencies {
    api("com.umeng.umsdk:common:+")
    api("com.umeng.umsdk:asms:+")
}
