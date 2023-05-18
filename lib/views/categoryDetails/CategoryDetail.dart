// ignore: file_names
import 'package:flutter/material.dart';

class CategoryDetail extends StatelessWidget {
  final String Name;
  final String Time;
  final String Img;
  const CategoryDetail(
      {super.key, required this.Name, required this.Time, required this.Img});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          margin: const EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            image: DecorationImage(
              image: NetworkImage(Img),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                  height: 300,
                  child: Container(
                    margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
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
                                    color:
                                        const Color.fromARGB(95, 195, 210, 223),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  width: 25,
                                  height: 25,
                                  child: const Icon(
                                    Icons.favorite_border_outlined,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 10),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(95, 195, 210, 223),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  width: 25,
                                  height: 25,
                                  child: const Icon(
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
                          children: const [
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
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 0, 0, 0),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                    )),
                child: Column(
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(right: 10, left: 10, top: 10),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                              children: [
                                Text(
                                  Name,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                Text(
                                  Time,
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
                                margin: const EdgeInsets.only(top: 10),
                                width: 200,
                                height: 70,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(95, 195, 210, 223),
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.white),
                                ),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: 100,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  left: 10),
                                              width: 50,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(50)),
                                                image: DecorationImage(
                                                  image: NetworkImage(Img),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
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
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 10),
                                        child: const Icon(
                                          Icons.arrow_forward_ios,
                                          color: Colors.white,
                                          size: 15,
                                        ),
                                      )
                                    ]),
                              ),
                              Container(
                                alignment: Alignment.center,
                                margin: const EdgeInsets.only(top: 10),
                                width: 150,
                                height: 70,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(95, 195, 210, 223),
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.white),
                                ),
                                child: const Text('15 Min',style:TextStyle(color: Colors.white,fontSize: 15),),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                            Container(
                              margin: EdgeInsets.all(15),
                            child:  Text(
                            'Recharge yourself through breathing, and awaken your entire body while stretching.',
                            style: TextStyle(
                                color: Color.fromARGB(255, 110, 108, 108),
                                fontSize: 15),
                          ),
                          )
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
            margin: const EdgeInsets.only(left: 10, right: 15, bottom: 10),
            alignment: Alignment.center,
            width: 300,
            height: 30,
            color: Color.fromARGB(255, 235, 181, 55),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.lock, color: Colors.white, size: 15),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Start',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            )));
  }
}
