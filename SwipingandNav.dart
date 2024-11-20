class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class Item {
  String text = "";
  int counting = 0;
  Item(String name, int count) {
    this.text = name;
    this.counting = count;
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  // Controller for the PageView
  PageController _pageController = PageController();

  // Method to handle the bottom navigation bar tap
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Update the PageView to the selected page
    _pageController.animateToPage(index,
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }

  // Method to handle page changes from swiping
  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged, // Listen for swipes
        children: [
          CounterPage(),
          AboutPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped, // Handle bottom nav tap
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
      ),

      //s trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
