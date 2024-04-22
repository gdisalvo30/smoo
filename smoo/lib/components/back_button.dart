import 'package:flutter/material.dart';

/*

A Custom Back Button. 
Here's a simple breakdown of its visual appearance and functionality:

Visual Appearance:

Button Shape: The button has a circular shape thanks to shape: BoxShape.circle.

Color: The button's background color is taken from the primary color defined in 
the app's theme (Theme.of(context).colorScheme.primary).

Icon: Inside the button, there is a back arrow icon (Icons.arrow_back). 
The color of this icon is derived from the inverse of the primary color 
specified in the app's theme (Theme.of(context).colorScheme.inversePrimary).

Margins: The button has been positioned with a top margin of 50 pixels and a 
left margin of 25 pixels (EdgeInsets.only(top: 50, left: 25)).

Functionality: When this button is pressed, it triggers a navigation action that 
pops the current screen off the navigation stack and returns to the previous 
screen (onPressed: () => Navigator.pop(context)). This is a typical behavior for 
a back button in mobile apps. This widget can be used in your Flutter app 
whenever you need a custom styled back button with the defined appearance and behavior.

*/

class MyBackButton extends StatelessWidget {
  const MyBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            shape: BoxShape.circle,
          ),
          margin: const EdgeInsets.only(top: 50, left: 25),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ],
    );
  }
}
