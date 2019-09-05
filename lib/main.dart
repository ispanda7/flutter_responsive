import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

void main() => runApp(MaterialApp(
  title: 'Responsive Layout',
  home: HomePage(),
  debugShowCheckedModeBanner: false,
),
);

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive Layout V 0.2"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
              child: Container(
        child: 
        
           ResponsiveGridRow(
                children: [
                     ResponsiveGridCol(
                    lg: 12,
                    child: Container(
                      height: 100,
                      alignment: Alignment.center,
                      color: Colors.white,
                      child: Text('Layout Header', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 6,
                    md: 3,
                    child: Container(
                      height: 100,
                      alignment: Alignment.center,
                      color: Colors.green,
                      child: Text("Left Layout 1", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 6,
                    md: 3,
                    child: Container(
                      height: 100,
                      alignment: Alignment.center,
                      color: Colors.orange,
                      child: Text("Right Layout 1", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 6,
                    md: 3,
                    child: Container(
                      height: 100,
                      alignment: Alignment.center,
                      color: Colors.red,
                      child: Text("Left Layout 2", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                    ),
                  ),
                  ResponsiveGridCol(
                    xs: 6,
                    md: 3,
                    child: Container(
                      height: 100,
                      alignment: Alignment.center,
                      color: Colors.blue,
                      child: Text("Rigth Layout 2", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                    ),
                  ),
                  ResponsiveGridCol(
                    child: Container(
                      height: 100,
                      alignment: Alignment.center,
                      color: Colors.yellow,
                      child: Text("Layout Footer", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                    ),
                  ),
                ]
          ),
        
    ),
      ),
    );
  }
}