 child: Consumer<Cart>(
  builder: (context, classInstance, child) {
    return Text(
      "${classInstance.myname}",
      style: TextStyle(fontSize: 18),
    );
  },
),
