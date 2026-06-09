import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F3F4),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            children: [
              Expanded(flex: 3, child: logoHeader1()),
              Expanded(flex: 6, child: getTotalBill2()),
              Expanded(flex: 3, child: getEnterBill3()),
              Expanded(flex: 3, child: getChooseTip4()),
              Expanded(flex: 2, child: getSplitTotal5()),
            ],
          ),
        ),
      ),
    );
  }

  Widget logoHeader1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/hat_bg.png", width: 80),
        SizedBox(width: 8),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(
                text: "Mr",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: "TIP",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
            Text(
              "Calculator",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }

  Widget getTotalBill2() {
    return Card(
      elevation: 7,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(21)),
      child: Container(
        padding: EdgeInsets.all(21),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(21),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Total p/person",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text.rich(
              TextSpan(
                text: "\$",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                children: [
                  TextSpan(
                    text: "000",
                    style: TextStyle(fontSize: 47, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text("Total bill", style: TextStyle(fontSize: 16)),
                    Text.rich(
                      TextSpan(
                        text: "\$",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                          color: Color(0xFF03C9BD),
                        ),
                        children: [
                          TextSpan(
                            text: "000",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text("Total tip", style: TextStyle(fontSize: 16)),
                    Text.rich(
                      TextSpan(
                        text: "\$",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                          color: Color(0xFF03C9BD),
                        ),
                        children: [
                          TextSpan(
                            text: "000",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget getEnterBill3() {
    return Padding(
      padding: const EdgeInsets.all(11.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text.rich(
              TextSpan(
                text: "Enter",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                children: [
                  TextSpan(
                    text: "\nyour bill",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: TextField(
              // controller: ,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                // prefixText: "\$",
                prefixIcon: Icon(Icons.attach_money,fontWeight: FontWeight.bold,),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    style: BorderStyle.none,
                    color: Colors.white,
                    width: 1,
                  ),
                ),
              ),
              keyboardType: TextInputType.number,
            ),
          ),
        ],
      ),
    );
  }

  Widget getChooseTip4() {
    return Padding(
      padding: const EdgeInsets.all(11.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text.rich(
              TextSpan(
                text: "Choose",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                children: [
                  TextSpan(
                    text: "\nyour bill",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          // padding: EdgeInsets.all(13),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFF03C9BD),
                          ),

                          child: Center(
                            child: Text.rich(
                              TextSpan(
                                text: "10",
                                style: TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                ),
                                children: [
                                  TextSpan(
                                    text: "%",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 11),
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          // padding: EdgeInsets.all(13),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFF03C9BD),
                          ),

                          child: Center(
                            child: Text.rich(
                              TextSpan(
                                text: "15",
                                style: TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                ),
                                children: [
                                  TextSpan(
                                    text: "%",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 11),
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          // padding: EdgeInsets.all(13),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFF03C9BD),
                          ),

                          child: Center(
                            child: Text.rich(
                              TextSpan(
                                text: "20",
                                style: TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                ),
                                children: [
                                  TextSpan(
                                    text: "%",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 11),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(11),
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF03C9BD),
                    ),

                    child: Text(
                      "Custom tip",
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget getSplitTotal5() {
    return Padding(
      padding: const EdgeInsets.all(11.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text.rich(
              TextSpan(
                text: "Split",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                children: [
                  TextSpan(
                    text: "\nthe Total",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF03c9bf),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "-",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    color: Colors.white,
                    child: Center(
                      child: Text(
                        "2",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF03c9bf),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "+",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
