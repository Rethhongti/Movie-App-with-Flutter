import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _floatButton,
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage("images/MyPhoto.jpg"),
                ),
                Text(
                  "Reth Hongti",
                  style: TextStyle(fontSize: 20,color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        alignment: Alignment.center,
                        height: 70,
                        width: MediaQuery.of(context) .size.width/ 2,
                        child: Column(
                          children: [
                            Text("Point",style: TextStyle(color: Colors.white,fontSize: 16)),
                            Text("12",style: TextStyle(fontSize: 20, color: Colors.white)),
                          ],
                        )
                    ),
                    Container(
                        alignment: Alignment.center,
                        height: 70,
                        width: MediaQuery.of(context) .size.width/ 2,
                        child: Column(
                          children: [
                            Text("Balance",style: TextStyle(color: Colors.white,fontSize: 16),),
                            Text("\$8.99",style: TextStyle(fontSize: 20, color: Colors.white)),
                          ],
                        )
                    ),
                  ],
                ),
              ],
            ),
          ),

          Card(
            margin: EdgeInsets.only(top: 10),
            elevation: 1,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text("Phone Number"),
                  subtitle: Text("0963665696"),
                ),
                ListTile(
                  leading: Icon(Icons.email),
                  title: Text("Email"),
                  subtitle: Text("rethhongti@gmail.com"),
                ),

              ],
            ),
          ),


        ],
      ),
    );
  }
  get _floatButton{
    return FloatingActionButton(
      onPressed:(){},
      child: Icon(Icons.edit),
      backgroundColor: Colors.orange,
    );
  }
}
