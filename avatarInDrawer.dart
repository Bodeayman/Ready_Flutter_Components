  drawer: const Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                "Abdullah",
                style: TextStyle(color: Colors.black),
              ),
              accountEmail: Text(
                "abdullah@gmail.com",
                style: TextStyle(color: Colors.black),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/img/my_img.jpg"),
                radius: 55,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/img/background.jpg"),
                    fit: BoxFit.contain),
              ),
            )
            //UserAccountsDrawerHeader the most important inside the Drawer
          ],
        ),
      ),
