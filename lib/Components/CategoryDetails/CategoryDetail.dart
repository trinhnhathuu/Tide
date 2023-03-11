import 'package:flutter/material.dart';

class CategoryDetail extends StatelessWidget {
  const CategoryDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            image: DecorationImage(
              image: NetworkImage(
                  "https://i.pinimg.com/564x/a8/98/21/a89821c3d05b9ca93b66712a53f9c19b.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Container(
                  height: 200,
                  child: Container(
                    margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              // decoration: BoxDecoration(
                              //   color: Color.fromARGB(95, 195, 210, 223),
                              //   borderRadius: BorderRadius.circular(15),
                              // ),
                              height: 25,
                              width: 25,
                              child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(
                                  Icons.navigate_before,
                                  size: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(95, 195, 210, 223),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  width: 25,
                                  height: 25,
                                  child: Icon(
                                    Icons.favorite_border_outlined,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(95, 195, 210, 223),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  width: 25,
                                  height: 25,
                                  child: Icon(
                                    Icons.ios_share,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '5729 are listening',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                            Icon(Icons.arrow_drop_down),
                          ],
                        )
                      ],
                    ),
                  )),
              Expanded(
                  child: Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 0, 0, 0),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                    )),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10, left: 10, top: 10),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                              children: [
                                Text(
                                  'Recharge',
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                Text(
                                  '10-15 Min-Singles',
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 10),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                width: 150,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(95, 195, 210, 223),
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.white),
                                ),
                                child: Row(children: [
                                  Container(
                                    width: 100,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left: 10),
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://i.pinimg.com/564x/02/9b/5c/029b5c634d8bbf838165d049e07d2230.jpg"),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              'teacher',
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 136, 134, 134),
                                                  fontSize: 7),
                                            ),
                                            Text(
                                              'andrew',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ]),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                width: 100,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(95, 195, 210, 223),
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Recharge yourself through breathing, and awaken your entire body while stretching.',
                            style: TextStyle(
                                color: Color.fromARGB(255, 110, 108, 108),
                                fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ))
            ],
          ),
        ),
        floatingActionButton: Container(
          margin: EdgeInsets.only(left: 10, right: 15, bottom: 10),
          alignment: Alignment.center,
          width: 300,
          height: 30,
          color: Color.fromARGB(255, 230, 128, 128),
          child: Text(
            'Start',
            style: TextStyle(color: Colors.white),
          ),
        ));
  }
}
