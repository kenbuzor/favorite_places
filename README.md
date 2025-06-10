# Favorite Places

![flutter and Sqlite](https://img.shields.io/badge/Flutter-SQLite-yellow?logo=flutter) ![Android and iOS](https://img.shields.io/badge/Android-iOS-black?logo=Android) ![Custom Badge](https://img.shields.io/badge/Map-Google-teal?logo=googlemaps) ![License](https://img.shields.io/github/license/kenbuzor/favorite_places)

## Overview

This application is used to keep an inventory of the details of your favorite places. It is built using flutter and dart. Eventhough the data isn't stored on a remote server but locally, the primary aim of the project is to show how to implement native device features like opening your phone camera from within the application to take pictures of a place, and also tap into the permission feature of your device.

## Requirements (tools and plugins/dependencies)

- **Flutter and Dart** must be installed. Click [here](https://docs.flutter.dev/get-started/install) to download
- **Uuid** - In this project, we used the uuid package to automatically generate a unique id for a place
- **Location** - This is one of the plugins or dependencies needed for handling getting location on Android and iOS.
- **Image picker** - This dependency is required for tapping into the device camera. Can be used to select images on your device or take new pictures with the camera
- **Http** - This plugin is used for handling network requests. It is used in this project to access the google maps api
- **Google Maps Flutter** - It's a plugin for integrating google maps in your flutter application
- **Path** and **Path Provider** - The path plugin is used to manipulate path, while path_provider is for getting commonly used locations on the host platform filesystem such as temp and app data directories
- **Sqflite** - It is a flutter plugin for SQLite, a self-contained database engine
- **Flutter Riverpod** - A plugin for data-binding and managing app-wide state.
- **Flutter Dotenv** - This is used for managing the .env file that holds sensitive data
- **Google Fonts** - A dependency for integrating and managing google fonts in your application

**Note** - You should have a google maps account to enable you use the various maps apis. Click [here](https://developers.google.com/maps/get-started) to learn more. You will be asked for your payment card details but will be given some free credits for a certain period.

## How to install and use via the terminal

1. Open your terminal and navigate to your desired directory where the project should live.

2. Clone the repository using this command `git clone https://github.com/kenbuzor/favorite_places.git` This command will create a directory called favorite_places

3. Navigate to the favorite_places directory `cd favorite_places`

4. Run the following command to install all necessary dependencies `flutter pub get`

5. Open the project on any code editor of your choice (I use vscode)

6. After following the instructions in creating a google map api, you should now have an api key bespoke to you.

7. Create a `.env` file in the root folder of the project and write in it a key-value for the api key in this format `MapAPI=paste_your_api_key_here` and save

8. You can now test the app on an emulator/simulator or on a real device.

   - [How to run a flutter app on android emulator or real android phone](https://docs.flutter.dev/get-started/install/macos/mobile-android)

   - [Test a flutter app on iOS simulator or on a real iPhone](https://docs.flutter.dev/get-started/install/macos/mobile-ios)

## Conclusion

This project will help you understand how to integrate and utilize the google maps api in your flutter application, and also get a basic understanding of how to tap into native device features, like accessing the your phone camera from within your flutter application.

Explore and create memories by keeping an inventory of your favorite places.
