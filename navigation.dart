   // return MaterialApp(
   //    home: Register(),
   //    debugShowCheckedModeBanner: false,
   //    routes: {
   //      '/login.dart': (context) => Login(),
   //      '/register.dart': (context) => Register(),
   //      //These are the routes of teh prograph
   //    },
   //  );
// Main file 

onPressed: () {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const Login(),
      ),
    );
  },
// This is for each button 
// The names is useless for reference
