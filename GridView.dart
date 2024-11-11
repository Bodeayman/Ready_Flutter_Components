GridView.builder(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    childAspectRatio: 3 / 2,
    crossAxisSpacing: 10,
    mainAxisSpacing: 33,
  ),
  itemCount: 4,
  itemBuilder: (BuildContext context, int index) {
    return Container(child: Text("Hello world"));
  },
),
