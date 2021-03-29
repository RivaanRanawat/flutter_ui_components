# UI Components

A Flutter Package Providing Templates of attractive Login UI's, built with Flutter, ready to be used in your Applications!
No External Packages have been used, so in case, the widgets don't go according to your choice, you can copy-paste the file by checking out the repository on GitHub!

###### Last Update: Added LoginScreen1

## Login Screens

### Login Screen 1
![alt text](https://github.com/RivaanRanawat/flutter_ui_components/blob/master/assets/images/loginScreen1.jpeg?raw=true)

#### Usage
```
LoginScreen1(
    avatarImage: "path/to/your/image.png",
    emailController: _emailController,
    passwordController: _passwordController,
    navigatePage: () {
        // Works when user clicks the sign up button
    },
    onAnotherAccountClick: () {
        // Works when user clicks Another Account Button
    },
    onLoginClick: () {
        // Works when user clicks the Log in Button
    },
)
```

### Login Screen 2
![alt text](https://github.com/RivaanRanawat/flutter_ui_components/blob/master/assets/images/loginScreen2.jpeg?raw=true)

#### Usage
```
LoginScreen2(
    emailController: _emailController,
    passwordController: _passwordController,
    googleLogin: () {
        // Works when user clicks Google Sign In Button
    },
    navigatePage: () {
        // Works when user clicks the sign up button
    },
    onLoginClick: () {
        // Works when user clicks the Log in Button
    },
)
```

### Login Screen 3
![alt text](https://github.com/RivaanRanawat/flutter_ui_components/blob/master/assets/images/loginScreen3.jpeg?raw=true)

#### Usage
```
LoginScreen3(
    emailController: _emailController,
    passwordController: _passwordController,
    navigatePage: () {
        Works when user clicks the sign up button
    },
    onLoginClick: () {
        // Works when user clicks the Log in Button
    },
),
```

## Contribution
Feel Free to Contribute by sending in PR's.
