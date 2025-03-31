GridView.builder(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2, // 2 columns
    crossAxisSpacing: 10,
    mainAxisSpacing: 10,
  ),
  itemCount: 100, // Large dataset
  itemBuilder: (context, index) {
    return Container(
      color: Colors.blue,
      alignment: Alignment.center,
      child: Text("Item $index", style: TextStyle(color: Colors.white)),
    );
  },
)
// The GridView builder follows the lazy pattern and building pattern
  //and regarding the number of columns that you use in the count and extent using grid delegete inside the builder
  //extent and count is changing during to their behaviour
  //So first the extent is for the choosing the maximum width of each column and it makes the number of columns * max width = the width of the screen
  // count makes the columns be a constant number takes the entire screen no matter the width of this screen
