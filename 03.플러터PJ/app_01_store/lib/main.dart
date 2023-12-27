import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // 최상위 위젯 : 전체틀잡아줌!
    return MaterialApp(
      // "DEBUG"표시 없애기
      debugShowCheckedModeBanner: false,
      // home에 작성하는 위젯이 실제 이 앱이 표시하는 위젯
      home: StorePage(),
      // 이 클래스를 아래쪽에 생성함!
    );
  }
}

// StorePage 클래스 만들기!!! //////
// -> 비상태위젯 단축키 : stl
class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // 앱기본 방향 시작은 세로방향(Column이다!-Row를 포함한다!)
        child: Column(
          // children 속성은 컬럼하위요소들임!
          children: [
            /*
            [ Padding 위젯 ]
              padding: EdgeInsets.all(4방향전체),
              padding: EdgeInsets.only(left/top/right/bottom특정방향만),
              padding: EdgeInsets.symmetric(수직/수평중),
           */
            // Row - 가로방향 위젯요소 넣기
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                children: [
                  Spacer(), // 사이공간일정하게 띄기
                  Text(
                    "Woman",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  Spacer(), // 사이공간일정하게 띄기
                  Text(
                    "Kids",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.orange,
                    ),
                  ),
                  Spacer(), // 사이공간일정하게 띄기
                  // 이미지로고
                  Image.asset(
                    'logo.png',
                    width: 70.0,
                  ),
                  Spacer(),
                  Text(
                    "Shoes",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  Spacer(), // 사이공간일정하게 띄기
                  Text(
                    "Bag",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
            ),
            // 이미지 추가하기 (패딩으로 싼 첫번째 줄 아래)
            // -> pubspec.yaml파일에 경로 assets/ 로 설정됨!
            // Expanded 윗젯 - flex속성이 있어서 등분할 함!
            Expanded(
              child: Image.asset(
                "bag.jpeg", // 이미지경로명
                fit: BoxFit.cover, // 이미지채움설정
              ),
            ),
            SizedBox(
              height: 5.0,
            ), // 이미지사이공백
            Expanded(
              child: Image.asset(
                "cloth.jpeg", // 이미지경로명
                fit: BoxFit.cover, // 이미지채움설정
              ),
            ),
          ],
        ),
      ),
    );
  }
}