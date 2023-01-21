import 'package:flutter/material.dart';
import 'Chart.dart';

const kInactiveColor = Color(0xfff3f3f3);
const kInactiveColor1 = Color(0xff757575);
const kActiveColor = Color(0xff336666);
Color day = kInactiveColor;
Color weak = kInactiveColor;
Color month = kInactiveColor;
Color year = kInactiveColor;
Color home = kInactiveColor1;
Color stats = kInactiveColor1;
Color email = kInactiveColor1;
Color profile = kInactiveColor1;

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          bottomNavigationBar: Container(
            decoration: const BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                blurRadius: 10,
                offset: Offset(0, 8),
              )
            ]),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    padding: const EdgeInsets.all(0),
                    onPressed: () {
                      setState(() {
                        fun1('home');
                      });
                    },
                    icon: Icon(Icons.home, size: 40, color: home)),
                IconButton(
                    padding: const EdgeInsets.all(0),
                    onPressed: () {
                      setState(() {
                        fun1('stats');
                      });
                    },
                    icon: Icon(Icons.signal_cellular_alt_outlined,
                        size: 40, color: stats)),
                IconButton(
                    padding: const EdgeInsets.all(0),
                    onPressed: () {
                      setState(() {
                        fun1('email');
                      });
                    },
                    icon: Icon(Icons.mail, size: 40, color: email)),
                IconButton(
                    padding: const EdgeInsets.all(0),
                    onPressed: () {
                      setState(() {
                        fun1('profile');
                      });
                    },
                    icon: Icon(Icons.people, size: 40, color: profile)),
              ],
            ),
          ),
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 1,
            shadowColor: Colors.grey,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.arrow_back,color: Colors.black,),
                Text('Statistics',style: TextStyle(color: Colors.black)),
                Icon(Icons.download,color: Colors.black,),
              ],
            ),
          ),
          body: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: day,
                      ),
                      onPressed: () {
                        setState(() {
                          fun('Day');
                        });
                      },
                      child:
                          const Text('Day', style: TextStyle(color: kInactiveColor1)),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: weak,
                      ),
                      onPressed: () {
                        setState(() {
                          fun('Weak');
                        });
                      },
                      child: const Text('Weak',
                          style: TextStyle(color: Colors.white)),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: month,
                      ),
                      onPressed: () {
                        setState(() {
                          fun('Month');
                        });
                      },
                      child: const Text('Month',
                          style: TextStyle(color: kInactiveColor1)),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: year,
                      ),
                      onPressed: () {
                        setState(() {
                          fun('Year');
                        });
                      },
                      child: const Text('Year',
                          style: TextStyle(color: kInactiveColor1)),
                    ),
                  ],
                ),
              ),
              Charts(),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text('Top Spending',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Icon(Icons.transit_enterexit),
                  ],
                ),
              ),

              Column(
                children: const [
                  DownButtons(),
                  SizedBox(
                    height: 8,
                  ),
                  DownButtons(),
                  SizedBox(
                    height: 8,
                  ),
                  DownButtons(),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DownButtons extends StatefulWidget {
  const DownButtons({Key? key}) : super(key: key);

  @override
  State<DownButtons> createState() => _DownButtonsState();
}

class _DownButtonsState extends State<DownButtons> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: kInactiveColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      onPressed: () {
        setState(() {});
      },
      child: SizedBox(
        width: 340,
        height: 38,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: 15),
            const CircleAvatar(
              radius: 14,
              backgroundColor: kInactiveColor1,
              child: Icon(Icons.youtube_searched_for,color:Colors.white),
            ),
            const SizedBox(width: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Data',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Text(
                  'Time',
                  style: TextStyle(
                    color: kInactiveColor1,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(width: 175),
            const Text(
              '- \$180',
              style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.5),
            ),
          ],
        ),
      ),
    );
  }
}

void fun(String str) {
  switch (str) {
    case 'Day':
      {
        if (day == kInactiveColor) {
          day = kActiveColor;
          weak = kInactiveColor;
          month = kInactiveColor;
          year = kInactiveColor;
        } else {
          day = kInactiveColor;
        }
      }
      break;
    case 'Weak':
      {
        if (weak == kInactiveColor) {
          weak = kActiveColor;
          day = kInactiveColor;
          month = kInactiveColor;
          year = kInactiveColor;
        } else {
          weak = kInactiveColor;
        }
      }
      break;
    case 'Month':
      {
        if (month == kInactiveColor) {
          month = kActiveColor;
          weak = kInactiveColor;
          day = kInactiveColor;
          year = kInactiveColor;
        } else {
          month = kInactiveColor;
        }
      }
      break;
    case 'Year':
      {
        if (year == kInactiveColor) {
          year = kActiveColor;
          weak = kInactiveColor;
          month = kInactiveColor;
          day = kInactiveColor;
        } else {
          year = kInactiveColor;
        }
      }
      break;
  }
}

void fun1(String str) {
  switch (str) {
    case 'home':
      {
        if (home == kInactiveColor1) {
          home = kActiveColor;
          stats = kInactiveColor1;
          email = kInactiveColor1;
          profile = kInactiveColor1;
        } else {
          home = kInactiveColor1;
        }
      }
      break;
    case 'stats':
      {
        if (stats == kInactiveColor1) {
          stats = kActiveColor;
          home = kInactiveColor1;
          email = kInactiveColor1;
          profile = kInactiveColor1;
        } else {
          stats = kInactiveColor1;
        }
      }
      break;
    case 'email':
      {
        if (email == kInactiveColor1) {
          email = kActiveColor;
          stats = kInactiveColor1;
          home = kInactiveColor1;
          profile = kInactiveColor1;
        } else {
          email = kInactiveColor1;
        }
      }
      break;
    case 'profile':
      {
        if (profile == kInactiveColor1) {
          profile = kActiveColor;
          stats = kInactiveColor1;
          email = kInactiveColor1;
          home = kInactiveColor1;
        } else {
          profile = kInactiveColor1;
        }
      }
      break;
  }
}
