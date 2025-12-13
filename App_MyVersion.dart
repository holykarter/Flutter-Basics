import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";
// import the homePage

// entry point of the app
void main(){
  runApp( const MyApp()); 
  
}

// inheritence with statelesswidgets
class MyApp extends StatelessWidget{
  const MyApp({Key? key }) : super(key: key);
  
  
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme : ThemeData(fontFamily: "Poppins"),
      home : HomePage(),
    );
  }
}

// homePage
class HomePage extends StatelessWidget{
  HomePage({Key? key}): super(key:key);
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body:_searchField(),
    );
  }
  
  AppBar appBar(){
    return AppBar(
      title: Text("Breakfast",
                 style:TextStyle(
                 color: Colors.black,
                 fontSize: 18,
                 fontWeight: FontWeight.bold)
                 ),
      centerTitle: true,
      backgroundColor : Colors.white,
      elevation : 0.0,
      leading: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(10), // what the const vs without const
        decoration: BoxDecoration(
            color: const Color(0xffF7F8F8),
            borderRadius: BorderRadius.circular(10),
       ),
       child : SvgPicture.network("https://raw.githubusercontent.com/holykarter/Flutter-Basics/refs/heads/main/assets/icons/Arrow%20-%20Left%202.svg",
          height: 20, // problem solve using alignment.center
          width: 20,
        ), 
      ),
      actions: [Container(
        decoration: BoxDecoration(
            color: const Color(0xffF7F8F8),
            borderRadius: BorderRadius.circular(10),
       ),
       child: SvgPicture.network("https://raw.githubusercontent.com/holykarter/Flutter-Basics/refs/heads/main/assets/icons/dots.svg",
        height : 5,
        width: 5
        ), 
      ),  
       ],
    );
              
  }
  
  Container _searchField(){
    return Container(
      child:TextField(
        decoration : InputDecoration(
          hintText: "search a pancake",
          hintStyle: const TextStyle(
          color: Color(0xffDDDADA),
          fontSize:14),
          filled: true,
          //labelText: "search pancake",
          fillColor : Colors.white,
          contentPadding: const EdgeInsets.all(15), // edgeInsets.top(15) , edgeInsets.bottom, so on i don't think that very necessary.
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:BorderSide.none
          ),    
          prefixIcon: Padding(
          padding: const EdgeInsets.all(10),
          child: SvgPicture.network("https://raw.githubusercontent.com/mahdinazmi/Flutter-Basics/refs/heads/main/assets/icons/Search.svg"),
          ),
          suffixIcon: Row (
                          children: 
                          VerticalDivider(
                          color:Colors.black,
                          indent:10,
                          endIndent:10,
                          thickness:0.1,)
                           ),
                                  ),

        
      ),
    );
  }
  
}
