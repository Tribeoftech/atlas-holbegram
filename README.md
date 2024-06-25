# atlasholbegram

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.
A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
Holbegram
 Novice
 By: Youssef Belhadj
 Weight: 7
 Migrated to checker v2: 
 Your score will be updated as you progress.
 Manual QA review must be done (request it when you are done with the project)


Hello Holbies welcome to the final Flutter Project. It’s going to be special and I hope that you have fun doing it.

In general, developing a mobile application is a complex and challenging task. There are many frameworks available to develop a mobile application. Android provides a native framework based on Java language and iOS provides a native framework based on Objective-C / Shift language. However, to develop an application supporting both the OS’s, we need to code in two different languages using two different frameworks. To solve this problem there is Flutter – a simple and high-performance framework based on Dart language that provides high performance by rendering the UI directly in the operating system’s canvas rather than through the native framework.

To lighten up your mood get you ready for this amazing project you can start by clicking on this LINK

I know it might be very challenging to do such a project with limited knowledge in flutter but we are Holberton students and WE CAN DO ANYTHING. I believe in you guys

Let’s begin the Journey.

Resources
Read or watch:

Dart - Cheatsheet
FlutterFire Overview
Getting started with Firebase on Flutter
Get Started with Firebase Authentication on Flutter
Cloud Storage on Flutter
Layouts in Flutter
Introduction to widgets
Firebase Storage Load and Display Images | Flutter
Every Flutter Widgets

Every Flutter Widget Explained
Dependencies
Firebase Database Plugin for Flutter
Firebase Auth for Flutter
Cloud Firestore Plugin for Flutter
Cloud Storage for Flutter
Cupertino Icons
Image Picker plugin for Flutter
BottomNavyBar
provider
Uuid
Cached network image
Flutter Pull To Refresh
Requirements
Create your project :

Open you’re command-line tool

flutter create holbegram
cd holbegram
flutter run
Step up your Firebase

For the backend, we are going to use Firebase(Firebase is a Backend-as-a-Service (BaaS) app development platform that provides hosted backend services such as (a real-time database, cloud storage, authentication, crash reporting, machine learning, remote configuration) and hosting for your static files.

Let’s start…

go to https://firebase.google.com/ and create an account then Let’s create a new project in firebase.

Go to Firebase Console and click Add Project and then you have to go through some steps.

First, we are going to build a fire_base app called holbegram:



Second Disable Google Analytics for this project:



Authentication

Click on Enable the Authentication: Enable the Email/Password







Database

Well done! Now you are going to move to the next task which is creating a database.

To do that follow the following steps:

1- Go to Firestore Database then click on Create Database.

2- Choose “start in text mode”



3- choose the location that is close to you.



4- Go to rules:



5- Delete the rules so anyone can read and write to a database:



Finally, press Publish

Adding Firebase to our App

So now let’s add Firebase to our app:

If you want to use Android Follow the Android Support

If you want to work with iOS follow the iOS Support

Adding Android support
Registering the App

In order to add Android support to our Flutter application, select the Android logo from the dashboard. This brings us to the following screen:



The most important thing here is to match up the Android package name that you choose here with the one inside of our application.

The structure consists of at least two segments. A common pattern is to use a domain name, a company name, and the application name:

com.example.holbegram

Once you’ve decided on a name, open android/app/build.gradle in your code editor and update the applicationId to match the Android package name:

Example of File android/app/build.gradle

...
defaultConfig {
    // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
    applicationId 'com.example.holbegram'
    ...
}
...
You can skip the app nickname and debug signing keys at this stage. Select Register app to continue.

Downloading the Config File

The next step is to add the Firebase configuration file into our Flutter project. This is important as it contains the API keys and other critical information for Firebase to use.

Select Download google-services.json from this page:



Next, move the google-services.json file to the android/app directory within the Flutter project.

Adding the Firebase SDK

We’ll now need to update our Gradle configuration to include the Google Services plugin.

Open android/build.gradle in your code editor and modify it to include the following:

Example of File android/build.gradle

buildscript {
  repositories {
    // Check that you have the following line (if not, add it):
    google()  // Google's Maven repository
  }
  dependencies {
    ...
    // Add this line
    classpath 'com.google.gms:google-services:4.3.13'
  }
}

allprojects {
  ...
  repositories {
    // Check that you have the following line (if not, add it):
    google()  // Google's Maven repository
    ...
  }
}
Finally, update the app level file atandroid/app/build.gradle to include the following:

Example of File android/app/build.gradle

apply plugin: 'com.android.application'
// Add this line
apply plugin: 'com.google.gms.google-services'

dependencies {
  // Import the Firebase BoM
 implementation platform('com.google.firebase:firebase-bom:30.2.0')

  // Add the dependencies for any other desired Firebase products
  // https://firebase.google.com/docs/android/setup#available-libraries
}
With this update, we’re essentially applying the Google Services plugin as well as looking at how other Flutter Firebase plugins can be activated such as Analytics.

From here, run your application on an Android device or simulator. If everything has worked correctly, you should get the following message in the dashboard:



Adding iOS support
In order to add Firebase support for iOS, we have to follow a similar set of instructions.

Head back over to the dashboard and select Add app and then iOS icon to be navigated to the setup process.

Registering an App

You Should have Xcode installed in your PC:

Once again, we’ll need to add an “iOS Bundle ID”. It is possible to use the “Android package name” for consistency:



You’ll then need to make sure this matches up by opening the iOS folder up in Xcode



General


Now go back to your firebase and add the iOS Bundle ID

after that Download the configuration file

Downloading the Config File

Drag and Drop the file GoogleService-Info.plist and move this into the root of your Xcode project within Runner:





Be sure to move this file within Xcode to create the proper file references.

Tasks
0. Let’s Begin
mandatory
Now after we set our Firebase we gonna start build our Application, First we are going to create Three screens Login Page Sign up Page and Upload image Page.

  

In your lib folde:

create new folder named screens:
inside the screens folder create 3 files named:
login_screen.dart
signup_screen.dart
upload_image_screen.dart


create new folder named widgets:
inside the widgets folder create 1 file named:
text_field.dart


Initialization App

Install this packages:

firebase_storage : flutter pub add firebase_storage
firebase_auth : flutter pub add firebase_auth
cloud_firestore : flutter pub add cloud_firestore
firebase_database : flutter pub add firebase_database
Change the functionvoid main() to:

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}
Repo:

GitHub repository: atlas-holbegram
Directory: holbegram
File: lib\main.dart ,lib\screens\login_screen.dart, lib\screens\sigup_screen.dart, lib\screens\upload_image_screen.dart, lib\widgets\text_field.dart
0/1 pt
1. Text Widget
mandatory
In the widgets/text_field.dart :

In order to learn how a reusable widget works, we will build this TextField widget .

Create a new StatelessWidget called TextFieldInput with these attributes:

controller: TextEditingController
ispassword: bool
hintText: String
suffixIcon: Widget it cloud be null
keyboardType: TextInputType
After the Widget build

Return TextField():

keyboardType takes keyboardType
controller takes controller
cursorColor takes Color.fromARGB(218, 226, 37, 24)
decoration takes InputDecoration:
hintText takes hintText
border takes OutlineInputBorder:
borderSide: BorderSide
color : transparent
style: none
focusedBorder: OutlineInputBorder
border takes OutlineInputBorder:
borderSide: BorderSide
color : transparent
style: none
enabledBorder: OutlineInputBorder
border takes OutlineInputBorder:
borderSide: BorderSide
color : transparent
style: none
filled : true
contentPadding : EdgeInsets.all(8)
suffixIcon takes suffixIcon
textInputAction : next
obscureText takes ispassword
For Example :

If we put the hintText : Email it’s giong to be like this:



Another Example :

If we put the hintText : Password and ispassword: true it’s giong to be like this:



Repo:

GitHub repository: atlas-holbegram
Directory: holbegram
File: lib\widgets\text_field.dart
0/3 pts
2. Login Page
mandatory
Login Page



You will need this Logo and this Font

After That Create two folders inside the assets :

images
fonts
Put the Logo inside the Images folder and Billabong fonts inside the fonts folder

Inside the pubspec.yaml

add this - assets/images/ under the assets:


add this under the fonts
    - family: Billabong
      fonts:
        - asset: assets/fonts/Billabong.ttf
        - asset: assets/fonts/InstagramSans.ttf


Now Inside login_screen.dart :

Create a new StatefulWidget called LoginScreen that takes these arguments.
emailController : TextEditingController
passwordController: TextEditingController
_passwordVisible : bool default takes true
Dispose only the TextEditingController arguments

initState for the _passwordVisible, before that, you add @override annotation

Returns: Scaffold() Inside the scaffold add a SingleChildScrollView in the body

SingleChildScrollView takes Column:
Horizontally of the Column will be : min
Verticale of the Column will be : center
Inside of the Column :

children[]:

Set the SizedBox of height to 28
Create a Text widget that contains the name of the app Holbegram with the Billabong Font and the font size of 50
The logo will be inside an Image widget (width: 80,height: 60)
Create Padding
Set EdgeInsets.symmetric to horizontal : 20
Child takes a Column
Inside the Children of the Column we are going to call the TextFieldInput that we created. First let’s keep our screen Sized
SizedBox takes height: 28
Email TextFieldInput

* `controller` : `emailController`

* `ispassword` : flase

* `hintText` : `Email`

* `keyboardType` : `TextInputType.emailAddress`
Set the SizedBox of height to 24

Password TextField

TextFieldInput
controller : passwordController
ispassword : !_passwordVisible
hintText : Password
keyboardType : TextInputType.visiblePassword
suffixIcon takes IconButton
alignment : bottomLeft
If the _passwordVisible is ture icon takes visibility or icon takes visibility_off
use setState inside the onPressed: () to change the _passwordVisible when pressed
Set the SizedBox of height to 28

SizedBox

height: 48
width : double.infinity
child : ElevatedButton:

style:
ButtonStyle
backgroundColor :MaterialStateProperty.all(Color.fromARGB(218, 226, 37, 24),)
onPressed leave it empty for the moment
child : Text:
Log in
style:
TextStyle(color: Colors.white) After this.
Set the SizedBox of height to 24

Row

mainAxisAlignment: center
children:
Text : Forgot your login details?
Text : Get help logging in with fontWeight : bold
Flexible:

flex: 0
child: Container()
Set the SizedBox of height to 24

Divider : thickness to 2

Padding:

Set vertical padding to 12

child takes Row:

mainAxisAlignment: center
children:
Text : Don't have an account
TextButton:
onPressed leave it empty for the moment
child takes Text with a String Sign up set fontWeight to bold and color to fromARGB(218, 226, 37, 24)
Set the SizedBox of height to 10
Row:

children:
Create two Flexible widgets with child takes Divider : thickness to 2 between the two widget create a Text with string " OR "
Set the SizedBox of height to 10

Row:

mainAxisSize : min
mainAxisAlignment : center
children:
Takes an Image network with width: 40 height: 40
Image : Image Link
Text : "Sign in with Google"
Repo:

GitHub repository: atlas-holbegram
Directory: holbegram
File: lib\screens\login_screen.dart
0/7 pts
3. Signup Page
mandatory
Signup Page



Inside signup_screen.dart create :

Create a new StatefulWidget called SignUp takes these arguments.
emailController : TextEditingController
usernameController : TextEditingController
passwordController: TextEditingController
passwordConfirmController: TextEditingController
_passwordVisible : bool default takes true
Let’s dispose them like we did in the Login Page and don’t forget initState for the _passwordVisible

Now! we are going to do the Sign Up page. It is very similar to the previous task therefore, I want you to try this on your own.

If you face any difficulties check the previous task or do as any great developer does: Google it!

In the bottom there is a String “Log in”

It’s a TextButton that navigates you to the Log in page

If you want to do it alone it’s a plus too or jump to the next task.

Repo:

GitHub repository: atlas-holbegram
Directory: holbegram
File: lib\screens\sigup_screen.dart
0/7 pts
4. Linking the Pages
mandatory
Inside login_screen.dart:

In the TextButton widget that containsSign Up as a Text

we will change the onPressed to make it navigate to the Sign Up page:

Use Navigator.push:
Assign SignUp() and don’t forget to import it
Inside signup_screen.dart

In the TextButton widget that containLog in as a Text

we will change the onPressed to make it navigate to the Log in page:

Use Navigator.push:
Assign LoginScreen() and don’t forget to import it
Repo:

GitHub repository: atlas-holbegram
Directory: holbegram
File: lib\screens\login_screen.dart, lib\screens\sigup_screen.dart
0/2 pts
5. Let's Create Our Models
mandatory
In the lib folder:

Create a new folder called models that contains two file :
user.dart
posts.dart
In the lib/models/user.dart create a class called Users:

Properties:
uid: String
email: String
username: String
bio: String
photoUrl: String
followers: Listmic>
following: Listmic>
posts: Listmic>
saved: Listmic>
searchKey : String
Create a new instance called fromJson that accepts DocumentSnapshot as parameter

Prototype :
static Userd fromSnap(DocumentSnapshot snap)
Create a variable inside the fromJson called snapshot that is going to take the data from snap

Return every value inside it.

Create a method called toJson() that returns a map representation of the Users

Repo:

GitHub repository: atlas-holbegram
Directory: holbegram
File: lib/models/user.dart, lib/models/posts.dart,
0/4 pts
6. Auth Methods
mandatory
Create a new folder inside the lib called methods:

Inside lib/methods create a new file called auth_methods.dart

Now inside auth_methods.dart:

Start by adding the packages needed :

Cloud_firestore
Firebase_auth

Create a new Class called AuthMethode that’s going to contain our Methods.

Create inside the class two arguments:

_auth that extends from FirebaseAuth
_firestore that extends from FirebaseFirestore
_auth = FirebaseAuth.instance

_firestore = FirebaseFirestore.instance

Create a new instance for Login called login that takes two arguments email: String, password: String. Return a String

Prototype :
Future<String> login({required String email,required String password,})
Check if the email or the password are empty:
Return Please fill all the fields
Use _auth.signInWithEmailAndPassword method from FirebaseAuth
Return success
On success navigate to the home screen
Now go back to the login screen and edit the submit button to call login() while passing the corresponding parameters and use the function’s return value to show a snackbar with the text “Login” on success

Create a new instance for Sign Up called signUpUser that takes these arguments email: String , password: String , username: String , file: Uint8List. Return a String

Prototype :
Future<String> signUpUser({required String email,required String password,required String username,Uint8List? file,})
Check if the email or the password, username are empty:
Return Please fill all the fields
Use _auth.createUserWithEmailAndPassword method from FirebaseAuth
userCredential takes the return of the _auth.createUserWithEmailAndPassword
Now just after using _auth.createUserWithEmailAndPassword put this:

Usertakes userCredential.user;
The arguments that we just passed in to Sign Up put it to our Users Class

After that:

await _firestore.collection("users").doc(user.uid).set(users.toJson());
Return success
Repo:

GitHub repository: atlas-holbegram
Directory: holbegram
File: lib/methods/auth_methods.dart
0/8 pts
7. Upload User Image
mandatory
Let’s put our file in the screens inside a new folder called auth :

Create a new folder inside screens/auth called methods:



Inside methods folder create a new file called user_storage.dart:

Copy and paste the Code into your file

import 'dart:typed_data';
import 'package:uuid/uuid.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';


class StorageMethods {
    final FirebaseStorage _storage = FirebaseStorage.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<String> uploadImageToStorage(
      bool isPost,
    String childName,
    Uint8List file,

  ) async {
    Reference ref =_storage.ref().child(childName).child(_auth.currentUser!.uid);
    if (isPost) {
      String id = const Uuid().v1();
      ref = ref.child(id);
    }
    UploadTask uploadTask = ref.putData(file);
    TaskSnapshot snapshot = await uploadTask;
    String downloadUrl = await snapshot.ref.getDownloadURL();
    return downloadUrl;
  }
}
Inside the upload_image_screen.dart:

Create a StatefulWidget Called AddPicture that accepts three arguments :

final String email
final String password
final String username
And contains a variable called _image

Uint8List? _image
Create two methods:

The first one is Called selectImageFromGallery():

Prototype
void selectImageFromGallery()
Return the value to variable _image
Use imagepicker
the second one is Called selectImageFromCamera():

Prototype
void selectImageFromCamera()
Return the value to variable _image
Use imagepicker
Now

Let’s Create this UI:

The Link To the Icon



Make the camera icon and the gallery icon linking with these functions

Replace the user icon with your image:



Repo:

GitHub repository: atlas-holbegram
Directory: holbegram
File: lib\screens\auth\methods\user_storege.dart, lib\screens\auth\upload_image_screen.dart
0/6 pts
8. Passing Data Between Pages
mandatory
We are going to pass the sign up data to our upload picture page:

Inside signup_screen.dart

In the onPressed where the Text contain Sign up

use the Navigator to move to the AddPicture page and passing :

email
username
password
Inside upload_image_screen.dart:

Use widget when you want to call the data example:

widget.email or assign it to a variable var email = widget.email

Replace John Doe with the username

On the Next button call the method signUpUser that we created in the auth_methods.dart

Passing the correct data to the signUpUser

email takes email
username takes username
password takes password
file takes _image
on success show a snackbar with a success on it
Repo:

GitHub repository: atlas-holbegram
Directory: holbegram
File: lib\screens\auth\signup_screen.dart, lib\screens\auth\upload_image_screen.dart
0/5 pts
9. Providers
mandatory
Create a new method called getUserDetails inside auth_methods.dart that gets the current user details and return Userd.fromSnap within the details

Inside the lib/ create a new folder called providers that contain user_provider.dart file:

Inside user_provider.dart Create a class called UserProvider mixin with the ChangeNotifier

Create privet variables:

_user takes Userd
_authMethode takes AuthMethode()
Create a getter for _user

Create a method called refreshUser prototype:

Future refreshUser():
user takes getUserDetails method from AuthMethode()
_userd takes user
at the end add notifyListeners()
Repo:

GitHub repository: atlas-holbegram
Directory: holbegram
File: lib\methods\auth_methods.dart, lib\providers
0/5 pts
10. Home Page
mandatory
We are going to create the Home page now :



First we are going to create all pages:

Create a new folder inside the screens folder called Pages:

Feed() : feed.dart
Search() : search.dart
AddImage(): add_image.dart
Favorite() : favorite.dart
Profile() : profile_screen.dart
To start with the bottom navigation bar

Install this package:

BottomNavyBar
Inside the widgets folder:

Create a new file called bottom_nav.dart
Create a StatefulWidget called BottomNav
_currentIndex : 0
_pageController assign to PageController
initState():
_pageController : PageController()
dispose()
Return Scaffoldbody PageView
controller : _pageController
children takes all the pages:
Feed()
Search()
AddImage()
Favorite()
Profile()
bottomNavigationBar : BottomNavyBar
selectedIndex : _currentIndex
showElevation : true
itemCornerRadius : 8
curve : Curves.easeInBack
onItemSelected: onPageChanged takes an arguments called index
in setState _currentIndex takes index
items it’s a list of BottomNavyBarItem we are going to create Five of them and every each one has a different Icon , Text:
Inside BottomNavyBarItem:
icon: Icons
title : Text
TextStyle:
fontSize : 25
fontFamily: Billabong
activeColor : red
textAlign: center
inactiveColor: black
Now

Inside home.dart

Create StatefulWidget called Home that returns BottomNav()

Inside feed.dart

Create StatelessWidget called Feed that returns Scaffold():

With an AppBar contains Holbegram with Billabong font and the logo like in the Picture and a Row with two Icons
Body return widget called Posts() that we are going to create later
In the models/post.dart

Create a class called Post
caption : String
uid: String
username : String
likes : List
postId : String
datePublished : DateTime
postUrl : String
profImage : String
Create the instance fromJson like we did in the Users Class

Don’t forget the toJson method

Inside utils/posts.dart:

Create a StatefulWidget Called Posts using the getUser

Use the provider and make necessary changes if required

Return StreamBuilder :
stream : FirebaseFirestore.instance.collection('posts').snapshots()
if snapshot.hasError return Error {snapshot.error}
if snapshot.hasData return ListView.builder
data = snapshot.data.docs
Return SingleChildScrollView
Child : Container:
margin: EdgeInsetsGeometry.lerp(const EdgeInsets.all(8), const EdgeInsets.all(8), 10)
height : 540
decoration: color fromARGB(255, 255, 255, 255), borderRadius circular(25)
child : Column > children > Container > child > row > children
padding EdgeInsets.all(8.0) > child > Container width: 40, height: 40, > decoration BoxDecoration(shape: BoxShape.circle) > image > data['profImage'] fit : cover
Text : username
Spacer
IconButton:
Icon : more_horiz
onPressed : Show snack with Text “Post Deleted”
SizedBox :
child : Text that contain the caption
SizedBox :
height : 10
Container :
width : 350
height : 350
decoration : BorderRadius.circular 25
image : postUrl
fit : cover
Add the missing Icons that appears in the Picture

Return CircularProgressIndicator() if the data still fetching

Repo:

GitHub repository: atlas-holbegram
Directory: holbegram
File: lib\screens\home.dart, lib\screens\pages\feed.dart, lib\screens\pages\search.dart, lib\screens\pages\add_image.dart, lib\screens\pages\favorate.dart, lib\screens\pages\profile_screen.dart, models/post.dart, utils/posts.dart
0/12 pts
11. Posts Storge Methods
mandatory
Inside the Pages folder create a new folder called methods:

Inside the methods create a new file called post_storage.dart:

Create a class called PostStorage:
_firestore takes : FirebaseFirestore.instance
Methods

Create a method Called uploadPost takes caption, uid, username, profImage as a String and image as Uint8List

Method prototype : Future<String> uploadPost(String caption,String uid,String username,String profImage,Uint8List image)
should use uploadImageToStorage from lib\screens\auth\methods\user_storege.dart

Return “Ok” On success else Return the error

Create another method called deletePost that accept postId as an argument to delete the post

Method prototype : Future deletePost(String postId)
should use delete from cloud_firestore

Inside utils/posts.dart:

In the onPressed() Before the snackbar that shows “Post Deleted” Call the the deletePost it should delete your post when you pressed on the icon
Repo:

GitHub repository: atlas-holbegram
Directory: holbegram
0/4 pts
12. Add a post
mandatory
Inside add_image.dart we are going to create this UI:



Link to the Icon

Make necessary changes if required

Like we did in the AddPicture

Use image_picker
Using the two option to add an image [gallery, camera]
Call uploadPost when you press on Post and make sure to redirect to the Home page

Repo:

GitHub repository: atlas-holbegram
Directory: holbegram
File: lib\screens\pages\add_image.dart
0/8 pts
13. Search page
mandatory
Inside search.dart we are going to create this UI:



Make necessary changes if required

Display all image that you upload them from Firestore
Use StaggeredGridView
Repo:

GitHub repository: atlas-holbegram
Directory: holbegram
File: lib\screens\pages\search.dart
0/7 pts
14. Favorite page
mandatory
Inside favorite.dart we are going to create this UI:



Make necessary changes if required

when clicking on the Icons.bookmark in the Feed the image get saved and it appears in the Favorite page

Repo:

GitHub repository: atlas-holbegram
Directory: holbegram
File: lib\screens\pages\favorite.dart
0/8 pts
15. Profile
mandatory
Inside profile.dart we are going to create this UI:



That Icons that appears on the top is for Logout

Make necessary changes if required

To get the data that you need here it’s all on you now

And congratulations you made it

Repo:

GitHub repository: atlas-holbegram
Directory: holbegram
File: lib\screens\pages\profile_screen.dart