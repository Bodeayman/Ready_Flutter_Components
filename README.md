# Welcome
If you are learning flutter , so this repo is providing you 
with some ready components to use , with some explaination for them,
I recommend that you learn the basics of flutter , before going on this repo
## WidgetStateProperty
Purpose: To dynamically style and configure widgets based on their current state.
When to use:
When you want to change the appearance of a widget based on user interactions or other events.
When you want to create responsive UI elements that adapt to different screen sizes and orientations.
### Custom Widgets are used to create reusable UI components with their own logic and state.
### WidgetStateProperty is used to dynamically style and configure existing widgets based on their state.
## Routes
While route names themselves don't directly perform any actions,
#####
The h*ll is the difference between the column and the stack?
## Stack and Column
### Stack allows multiple elements to be above each other , depending on their arragnement
### Column , the elements should respect the distance between them
We still have sometimes to take about Positioned
Don't forget that Column and Row , have the mainAxisAlignment, which is similar like the flex in web
Grid is a great version of ListView
Man, the h*ll different between ImageAssetand the Image.asset

#### Yes, if you use multiple Consumer or Provider.of calls in the same widget tree, they will refer to the same instance of the provider, as long as the provider is defined at a higher level in the widget tree.
#### In Flutter, navigation and PageController by default do not have swiping navigation enabled unless you explicitly use a widget like PageView, which is designed to handle swipe-based page transitions.
### Somethings that related to the initState
The initState() method is called once when a StatefulWidget is first created.
It is useful for initializing variables, fetching data, and setting up controllers.
initState() is executed once when the widget is created.
It is not part of the widget tree and does not return or place a widget anywhere.
Widgets must be built inside build() or returned inside another widget tree.
