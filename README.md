# UI Components

A Flutter Package Providing Templates of attractive Login UI's, built with Flutter, ready to be used in your Applications!
No External Packages have been used, so in case, the widgets don't go according to your chooice, you can copy-paste the file by checking out the repository on GitHub!

###### Last Update: Added LoginScreen1

## Login Screens

### Login Screen 1
![alt text](https://github.com/RivaanRanawat/flutter_ui_components/blob/master/assets/images/loginScreen1.jpeg?raw=true)

#### Usage
```
UIComponents(
    screenType: Screens.LoginScreenType1,
    avatarImage: _avatarImage_,
    emailController: _emailController,
    passwordController: _passwordController,
    navigatePage: () {
        // Works when user clicks the sign up button
    },
    googleSignIn: () {
        // Works when user clicks Google Sign In Button
    },
    onLoginClick: () {
        // Works when user clicks the Log in Button
    },
);
```

### Login Screen 2
![alt text](https://github.com/RivaanRanawat/flutter_ui_components/blob/master/assets/images/loginScreen2.jpeg?raw=true)

#### Usage
```
UIComponents(
    screenType: Screens.LoginScreenType2,
    emailController: _emailController,
    passwordController: _passwordController,
    navigatePage: () {
        // Works when user clicks the sign up button
    },
    googleSignIn: () {
        // Works when user clicks Google Sign in Button
    },
    onLoginClick: () {
        // Works when user clicks the Log in Button
    },
);
```

## Contribution
Feel Free to Contribute by sending in PR's.
