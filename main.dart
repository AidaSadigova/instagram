import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Instagram',
            style: TextStyle(
              fontSize: 30.0,
              fontFamily: 'Lobster',
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.heart,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.message,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                // physics: const BouncingScrollPhysics(),
                // reverse: true,
                // padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    containerMethod(
                        'https://pbs.twimg.com/profile_images/815176845679267841/w36cnB9b_400x400.jpg',
                        'seckinozdemir'),
                    containerMethod(
                        'https://seriesturkish.com/uploads/2020/05/cukur-damlasonmez-750x375-c1.jpg',
                        'damla_sonmez'),
                    containerMethod(
                        'https://i4.hurimg.com/i/hurriyet/75/750x422/642ba7a44e3fe01324cbd7c6.jpg',
                        'neslihann'),
                    containerMethod(
                        'https://i.pinimg.com/originals/13/17/87/13178761226f0de29b4dd28b27ecc6ce.jpg',
                        'mertyazici'),
                    containerMethod(
                        'https://www.instyle.com/thmb/Af1R019gy6AjFbbiUBjrqzXIsW8=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/010716-nina-dobrev_0-2000-e265ef2f0ef54cc9940506942f8cb262.jpg',
                        'nina'),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: SingleChildScrollView(
                // physics: const BouncingScrollPhysics(),
                // reverse: true,
                // padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    userProfile(
                        'https://pbs.twimg.com/profile_images/815176845679267841/w36cnB9b_400x400.jpg',
                        'seckinozdemir'),
                    sharedPost(
                        'https://www.turkishworld.org/wp-content/uploads/2020/10/Seckin-Ozdemir-Gallery-2.jpg'),
                    profileunderbuttons(),
                    texts('15359 likes'),
                    Row(
                      children: [
                        useName('seckinozdemir'),
                        postIdea("'Take a deep breath'"),
                      ],
                    ),
                    commentsTime('View all 234 comments', '1 hour ago'),
                    userProfile(
                        'https://seriesturkish.com/uploads/2020/05/cukur-damlasonmez-750x375-c1.jpg',
                        'damla_sonmez'),
                    sharedPost(
                        'https://seriesturkish.com/uploads/2020/05/cukur-damlasonmez-750x375-c1.jpg'),
                    profileunderbuttons(),
                    texts('1256 likes'),
                    Row(
                      children: [
                        useName('damla_sonmez'),
                        postIdea("'Enjoy the view'"),
                      ],
                    ),
                    commentsTime('View all 674 comments', '5 minutes ago'),
                    userProfile(
                        'https://i4.hurimg.com/i/hurriyet/75/750x422/642ba7a44e3fe01324cbd7c6.jpg',
                        'neslihann'),
                    sharedPost(
                        'https://i.haberglobal.com.tr/storage/files/images/2023/05/02/01-2fWp.jpg'),
                    profileunderbuttons(),
                    texts('45549 likes'),
                    Row(
                      children: [
                        useName('neslihann'),
                        postIdea("'love'"),
                      ],
                    ),
                    commentsTime('View all 8765 comments', '2 hours ago'),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.house),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.magnifyingGlass),
              label: 'search',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.penToSquare),
              label: 'post',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.heart),
              label: 'favorite',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.user),
              label: 'profile',
            ),
          ],
          selectedIconTheme: const IconThemeData(color: Colors.black),
          unselectedIconTheme: const IconThemeData(color: Colors.grey),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: 0,
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}

Padding containerMethod(String url, String userName) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(url),
          radius: 35.0,
        ),
        Text(
          userName,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
          ),
        ),
      ],
    ),
  );
}

Padding userProfile(String url, String textt) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(url),
            radius: 20.0,
          ),
        ),
        useName(textt),
        Padding(
          padding: const EdgeInsets.only(left: 165.0),
          child: IconButton(
            onPressed: () {},
            icon: const FaIcon(FontAwesomeIcons.ellipsisVertical),
          ),
        ),
      ],
    ),
  );
}

Row profileunderbuttons() {
  return Row(
    children: [
      IconButton(
        onPressed: () {},
        icon: const FaIcon(FontAwesomeIcons.heart),
      ),
      IconButton(
        onPressed: () {},
        icon: const FaIcon(FontAwesomeIcons.commentDots),
      ),
      IconButton(
        onPressed: () {},
        icon: const FaIcon(FontAwesomeIcons.paperPlane),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 190.0),
        child: IconButton(
          onPressed: () {},
          icon: const FaIcon(FontAwesomeIcons.bookmark),
        ),
      ),
    ],
  );
}

Row useName(String textt) {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Text(
          textt,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
          ),
        ),
      ),
    ],
  );
}

Padding texts(String text) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        Text(text),
      ],
    ),
  );
}

Row postIdea(String Idea) {
  return Row(
    children: [
      Text(
        Idea,
        style: const TextStyle(
          fontSize: 15.0,
        ),
      ),
    ],
  );
}

Padding sharedPost(String url2) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 300,
      width: 377,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(url2),
        ),
      ),
    ),
  );
}

Padding commentsTime(String comment, String shareTime) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Row(
          children: [
            Text(
              comment,
              style: TextStyle(color: Colors.grey[600]),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              shareTime,
              style: TextStyle(color: Colors.grey[600]),
            ),
          ],
        ),
      ],
    ),
  );
}
