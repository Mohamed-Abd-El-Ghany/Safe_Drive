# Safe Drive

Safe Drive integrates with a Raspberry Pi device via Firebase to receive real-time notifications, while also providing features such as biometric authentication, location tracking, and phone verification.

---

## Features

### Core Features:
- **Biometric Authentication**: Secure login using fingerprint or face recognition.
- **Phone Verification**: OTP-based phone number verification for user authentication.
- **Location Tracking**: Access real-time location data using the `geolocator` package.
- **Firebase Integration**: Utilizes Firebase for authentication, Firestore for user data storage, and Firebase Storage for image uploads.

### Additional Features:
- **Custom UI Components**: Reusable widgets for a consistent and modern user interface.
- **Responsive Design**: Adapts seamlessly to various screen sizes and orientations.
- **Error Handling**: Displays user-friendly error messages for authentication and network issues.
- **Push Notifications**: Supports Firebase Cloud Messaging for real-time notifications.

---

## How It Works

### Application Flow:
1. **User Registration**:
    - Users sign up with their email, password, phone number, and profile image.
    - Phone number verification is performed using OTP.
2. **Biometric Authentication**:
    - Users can log in securely using biometric data (fingerprint or face recognition).
3. **Location Services**:
    - The app requests location permissions and retrieves the user's current location.
4. **Data Storage**:
    - User data is stored in Firebase Firestore, and profile images are uploaded to Firebase Storage.

### Architecture:
The application follows a **feature-first architecture** for better scalability and maintainability:
1. **Presentation Layer**:
    - Contains UI components (e.g., `VerificationScreen`, `CongratsScreen`).
    - Manages state using `setState` and controllers.
2. **Domain Layer**:
    - Handles business logic, such as OTP verification and user authentication.
3. **Data Layer**:
    - Manages interactions with Firebase services and the `geolocator` package.

---

## Folder Structure

The project is organized into a feature-first folder structure:

lib/
├── app/  
│   ├── app_colors.dart  
│   ├── app_images.dart  
│   ├── app_texts.dart  
├── presentation/  
│   ├── components/  
│   │   ├── custom_elevated_button.dart  
│   │   ├── location_helper.dart  
├── screens/  
│   ├── verification_screen.dart  
│   ├── congrats_screen.dart

---

## Code Highlights

### Firebase Integration:
- Firebase Authentication is used for email/password and phone number verification.
- Firebase Storage is used to upload and retrieve user profile images.
- Example: The `signUser` method in `VerificationScreen` handles user registration and image upload.

### Location Services:
- The `LocationHelper` class uses the `geolocator` package to fetch the user's current location.
- Example: `getCurrentLocation` checks for location permissions and retrieves the user's position.

### OTP Verification:
- The app uses Firebase's `verifyPhoneNumber` method for OTP-based phone verification.
- Example: The `phoneAuth` method in `VerificationScreen` handles OTP sending and verification.

---

## Technologies Used

- **Flutter**: For building the cross-platform mobile application.
- **Dart**: The programming language used for Flutter development.
- **Firebase**: For authentication, Firestore, and storage.
- **Geolocator**: For accessing location data.
- **Modal Progress HUD**: For displaying loading indicators.
- **ScreenUtil**: For responsive UI design.