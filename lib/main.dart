import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/second': (context) => const SecondPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.orange[500]),
              child: Column(
                children: [
                  Text(
                    "ข้อมูลส่วนตัว",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwLUlcj16ovZCGccVnkaxpOqCMpfF9EKvk5pMDGoDBFy20WF-vuzg0cDVjN0bg8AJj2Ek&usqp=CAU',
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("Krittin Thongmee"),
                  SizedBox(height: 5),
                  Text("krittin.thongmee@e-tech.ac.th"),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("ข้อมูลส่วนตัว"),

                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.green[100],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(Icons.phone, color: Colors.green),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("เบอร์์โทรศัพท์"), Text("082-9944861")],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.red[100],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(Icons.cake, color: Colors.red),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("วันเกิด"), Text("05/08/2548")],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.orange[100],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(Icons.pin_drop, color: Colors.orange),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("ที่อยู่"), Text("ชลบุรี")],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.purple[100],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(Icons.school, color: Colors.purple),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("การศึกษา"),
                          Text("วิทยาลัยเทคโลโนยีภาคตะวันออก (อี.เทค)"),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/second'),
                    child: Text("ไปหน้า 2"),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(2000, 30),
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        child: ClipOval(
                          child: Image.network(
                            "https://i.pinimg.com/736x/bd/c2/2c/bdc22c2c4d838f67a8fd547e50a48437.jpg",
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(children: [
                        Text("5M", style: TextStyle(color: Colors.white)),
                        Text("กำลังติดตาม", style: TextStyle(color: Colors
                            .white)),
                      ]),
                      SizedBox(width: 10),
                      Container(width: 1.5,height: 40,color:  Colors.grey.shade50),
                      SizedBox(width: 20),
                      Column(children: [
                        Text("1", style: TextStyle(color: Colors.white)),
                        Text("ผู้ติดตาม", style: TextStyle(color: Colors
                            .white)),
                      ]),
                      SizedBox(width: 10),
                      Container(width: 1.5,height: 40,color:  Colors.grey.shade50),
                      SizedBox(width: 20),
                      Column(children: [
                        Text("1999999", style: TextStyle(color: Colors.white)),
                        Text("ถูกใจและบันทึก", style: TextStyle(color: Colors
                            .white)),
                      ]),
                    ],
                  ),
                  SizedBox(width: 25, height: 25),
                  Container(
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Krittin",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.verified, color: Colors.blue),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 1),
            Container(
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 5),
                  Icon(Icons.tiktok, color: Colors.grey, size: 20),
                  Text(
                    "Krittin",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white, // เปลี่ยนเป็นขาว
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 2),
                  Icon(Icons.arrow_drop_down, color: Colors.grey),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/second'),
                    child: Text("ติดตาม"),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(300, 30),
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        SizedBox(height: 10, width: 10),
                        Icon(Icons.share, color: Colors.white),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 10),
                  Image.network(
                    "https://preview.redd.it/i-cleaned-the-page-for-fubuki-cuz-shes-so-hot-v0-ek5h6wdmnmpb1.png?auto=webp&s=4845dc5fd1c6d9a4c8b2e3dad9da985376b0167d",
                    width: 190,
                    height: 320,
                  ),
                  SizedBox(width: 10),
                  Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS79uy_gcvXOVqlRNJsng8IhZfQbNvL9O6EeNjnpvhB-NGnmUL7mG7fa99qIC00i2UZCxw&usqp=CAU",
                    width: 163,
                    height: 320,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

