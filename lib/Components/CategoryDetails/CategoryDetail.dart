import 'package:flutter/material.dart';

class CategoryDetail extends StatelessWidget {
  const CategoryDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 125, 143, 233),
      body: Column(
        children: [
          Container(
            height: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 50),
                        height: 30,
                        width: 30,
                        
                        child: IconButton(
                            iconSize: 20,
                            splashRadius: 20,
                            selectedIcon: const Icon(Icons.close),
                            onPressed: () {
                                Navigator.pop(context);
                            },
                            // Bổ sung thuộc tính tùy chỉnh
                            
                            icon: const Icon(Icons.close),
                        ),
                    ),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          color: Colors.red,
                          width: 20,
                          height: 20,
                          child:Icon(Icons.search),
                        ), 
                        SizedBox(width: 10,),
                        Container(
                          color: Colors.blue,
                          width: 20,
                          height: 20,
                          child:Icon(Icons.shopping_cart),
                        ),
                        
                      ],
                    ),
                   
                  ],
                ),
                 Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Category'),
                        Icon(Icons.arrow_drop_down),
                    ],)
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: 400,
              width: double.infinity,
              decoration: 
              BoxDecoration(
                color: Color.fromARGB(255, 0, 0, 0),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )
              ),
              child: Column(
       children: [
         Text('chào các bạn')
       ],
              ),
            )
            )
        ],
      ),
    );
  }
}
