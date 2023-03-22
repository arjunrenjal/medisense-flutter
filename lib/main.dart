import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medisense/page.dart';
import 'package:medisense/pagetwo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 1;

  List<Widget> pages = [
    HomePage(),
    ActivityPage(),
    HealthPassport(),
    BlogPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Bottom Navigation Bar Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: IndexedStack(
          index: _currentIndex,
          children: pages,
        ),
        bottomNavigationBar: SizedBox(
          height: 60,
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.assignment),
                label: 'Activity',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.heart_broken),
                label: 'Health Passport',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.feed_outlined),
                label: 'Blog',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_2_sharp),
                label: 'Profile',
              ),
            ],
            selectedLabelStyle: const TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 180,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Icon(
          Icons.home,
          size: 100,
        ),
      ),
    );
  }
}

class ActivityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  int currentPage = 1;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.grey.shade100,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Your activity',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w900,
                  fontSize: 28.0,
                  color: Colors.black),
            ),
            SizedBox(height: 6),
            Text(
              'Your orders, Consultations, Appointments etc.',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromRGBO(147, 147, 147, 1),
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                fontSize: 15.0,
              ),
            ),
          ],
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(
              child: Text(
                'Consults',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w900,
                  fontSize: 17.0,
                ),
              ),
            ),
            Tab(
              child: Text(
                'Orders',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w900,
                  fontSize: 17.0,
                ),
              ),
            ),
          ],
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          indicatorWeight: 3,
          indicatorColor: Colors.blue,
          indicatorSize: TabBarIndicatorSize.label,
        ),
        toolbarHeight: 130.0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: TabBarView(
        controller: _tabController,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 20.0, 16, 20),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 240.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 5,
                              blurRadius: 10,
                              color: Colors.grey.shade200,
                              offset: const Offset(1, 10),
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            Positioned.fill(
                              bottom: 200,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12),
                                  ),
                                  color: Colors.grey.shade100,
                                ),
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    SvgPicture.asset(
                                      'icons/Group 2010.svg',
                                      width: 22,
                                      height: 22,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text(
                                      'Consult ID : 8794',
                                      style: TextStyle(
                                        color: Color.fromRGBO(112, 112, 112, 1),
                                        fontFamily: 'Poppins',
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 60,
                                    ),
                                    const Text(
                                      'Booked on 01/12 10:15 AM',
                                      style: TextStyle(
                                        color: Color.fromRGBO(112, 112, 112, 1),
                                        fontFamily: 'Poppins',
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned.fill(
                              top: 40,
                              bottom: 60,
                              right: 16,
                              left: 13,
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        const Text(
                                          'Dr.John',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 20,
                                              color: Colors.black),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: const [
                                            Text(
                                              'Appointment for',
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    112, 112, 112, 1),
                                                fontFamily: 'Poppins',
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            SizedBox(width: 3),
                                            Text(
                                              'Peter Parker',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                              'icons/calendar.svg',
                                              height: 17,
                                              width: 17,
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            const Text(
                                              '3 June',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w900,
                                                color: Colors.black,
                                                fontSize: 20,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 40,
                                            ),
                                            SvgPicture.asset(
                                              'icons/clock.svg',
                                              height: 17,
                                              width: 17,
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            const Text(
                                              '4:10 PM',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w900,
                                                color: Colors.black,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned.fill(
                              top: 165,
                              bottom: 9,
                              right: 13,
                              left: 13,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (BuildContext context) {
                                        return const page2();
                                      },
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey.shade50,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 13),
                                  elevation: 0,
                                ),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      'icons/cam.svg',
                                      width: 18,
                                      height: 18,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      'Consulted',
                                      style: TextStyle(
                                        color: Color.fromRGBO(112, 112, 112, 1),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18.0,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        height: 250.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 5,
                              blurRadius: 10,
                              color: Colors.grey.shade200,
                              offset: const Offset(1, 10),
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            Positioned.fill(
                              bottom: 210,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12),
                                  ),
                                  color: Colors.grey.shade100,
                                ),
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    SvgPicture.asset(
                                      'icons/Group 2010.svg',
                                      width: 22,
                                      height: 22,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text(
                                      'Consult ID : 6254',
                                      style: TextStyle(
                                        color: Color.fromRGBO(112, 112, 112, 1),
                                        fontFamily: 'Poppins',
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 60,
                                    ),
                                    const Text(
                                      'Booked on 12/01 2:43 PM',
                                      style: TextStyle(
                                        color: Color.fromRGBO(112, 112, 112, 1),
                                        fontFamily: 'Poppins',
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned.fill(
                              top: 60,
                              bottom: 90,
                              right: 13,
                              left: 13,
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Dr.Ahmed',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                          color: Colors.black),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: const [
                                        Text(
                                          'Appointment for',
                                          style: TextStyle(
                                            color: Color.fromRGBO(
                                                112, 112, 112, 1),
                                            fontFamily: 'Poppins',
                                            fontSize: 16.0,
                                          ),
                                        ),
                                        SizedBox(width: 3),
                                        Text(
                                          'Vance Joy',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          'icons/calendar.svg',
                                          height: 17,
                                          width: 17,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Text(
                                          '17 May',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w900,
                                            color: Colors.black,
                                            fontSize: 20,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 40,
                                        ),
                                        SvgPicture.asset(
                                          'icons/clock.svg',
                                          height: 17,
                                          width: 17,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Text(
                                          '3:35 PM',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w900,
                                            color: Colors.black,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned.fill(
                              top: 170,
                              bottom: 9,
                              right: 13,
                              left: 13,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (BuildContext context) {
                                        return const page();
                                      },
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey.shade50,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 13),
                                  elevation: 0,
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(12),
                                    ),
                                    color: Colors.grey.shade50,
                                  ),
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 1,
                                      ),
                                      SvgPicture.asset(
                                        'icons/Group 1738.svg',
                                        width: 18,
                                        height: 18,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        'Call Aborted',
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(112, 112, 112, 1),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18.0,
                                          letterSpacing: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        height: 250.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 5,
                              blurRadius: 10,
                              color: Colors.grey.shade200,
                              offset: const Offset(1, 10),
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            Positioned.fill(
                              bottom: 210,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12),
                                  ),
                                  color: Colors.grey.shade100,
                                ),
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    SvgPicture.asset(
                                      'icons/instant.svg',
                                      width: 22,
                                      height: 22,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text(
                                      'Consult ID : 9658',
                                      style: TextStyle(
                                        color: Color.fromRGBO(112, 112, 112, 1),
                                        fontFamily: 'Poppins',
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    const Text(
                                      'Booked on 30/08 4:00 AM',
                                      style: TextStyle(
                                        color: Color.fromRGBO(112, 112, 112, 1),
                                        fontFamily: 'Poppins',
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned.fill(
                              top: 60,
                              bottom: 90,
                              right: 13,
                              left: 13,
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: const [
                                        Text(
                                          'Dr.Narasimha',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 20,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          width: 190,
                                        ),
                                        Text(
                                          'Follow-up',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15,
                                              color: Color.fromRGBO(
                                                  68, 133, 253, 1)),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: const [
                                        Text(
                                          'Appointment for',
                                          style: TextStyle(
                                            color: Color.fromRGBO(
                                                112, 112, 112, 1),
                                            fontFamily: 'Poppins',
                                            fontSize: 16.0,
                                          ),
                                        ),
                                        SizedBox(width: 3),
                                        Text(
                                          'Arjun Renjal',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          'icons/calendar.svg',
                                          height: 17,
                                          width: 17,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Text(
                                          '30 March',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w900,
                                            color: Colors.black,
                                            fontSize: 20,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 40,
                                        ),
                                        SvgPicture.asset(
                                          'icons/clock.svg',
                                          height: 17,
                                          width: 17,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Text(
                                          '7:00 AM',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w900,
                                            color: Colors.black,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned.fill(
                              top: 170,
                              bottom: 9,
                              right: 13,
                              left: 13,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(12),
                                  ),
                                  color: Colors.grey.shade50,
                                ),
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 13,
                                    ),
                                    SvgPicture.asset(
                                      'icons/payment.svg',
                                      width: 18,
                                      height: 18,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          'Payment Pending',
                                          style: TextStyle(
                                            color: Color.fromRGBO(
                                                112, 112, 112, 1),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18.0,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 65,
                                        ),
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(9),
                                            ),
                                            elevation: 8,
                                            backgroundColor:
                                                const Color.fromRGBO(
                                                    68, 133, 253, 1),
                                            fixedSize: const Size(100, 40),
                                          ),
                                          child: const Text(
                                            'Pay Now',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w900,
                                              fontSize: 15.0,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        height: 250.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 5,
                              blurRadius: 10,
                              color: Colors.grey.shade200,
                              offset: const Offset(1, 10),
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            Positioned.fill(
                              bottom: 210,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12),
                                  ),
                                  color: Colors.grey.shade100,
                                ),
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    SvgPicture.asset(
                                      'icons/Group 2022.svg',
                                      width: 22,
                                      height: 22,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text(
                                      'Consult ID : 2565',
                                      style: TextStyle(
                                        color: Color.fromRGBO(112, 112, 112, 1),
                                        fontFamily: 'Poppins',
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    const Text(
                                      'Booked on 01/03 8:13 PM',
                                      style: TextStyle(
                                        color: Color.fromRGBO(112, 112, 112, 1),
                                        fontFamily: 'Poppins',
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned.fill(
                              top: 60,
                              bottom: 90,
                              right: 13,
                              left: 13,
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Dr.Kumar',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                          color: Colors.black),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: const [
                                        Text(
                                          'Appointment for',
                                          style: TextStyle(
                                            color: Color.fromRGBO(
                                                112, 112, 112, 1),
                                            fontFamily: 'Poppins',
                                            fontSize: 16.0,
                                          ),
                                        ),
                                        SizedBox(width: 3),
                                        Text(
                                          'Madhav Shetty',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          'icons/calendar.svg',
                                          height: 17,
                                          width: 17,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Text(
                                          '2 April',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w900,
                                            color: Colors.black,
                                            fontSize: 20,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 40,
                                        ),
                                        SvgPicture.asset(
                                          'icons/clock.svg',
                                          height: 17,
                                          width: 17,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Text(
                                          '9:35 PM',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w900,
                                            color: Colors.black,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned.fill(
                              top: 170,
                              bottom: 9,
                              right: 13,
                              left: 13,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (BuildContext context) {
                                        return const page();
                                      },
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey.shade50,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 13),
                                  elevation: 0,
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(12),
                                    ),
                                    color: Colors.grey.shade50,
                                  ),
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 2,
                                      ),
                                      SvgPicture.asset(
                                        'icons/Note.svg',
                                        width: 25,
                                        height: 25,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        'Awaited Summary',
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(112, 112, 112, 1),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18.0,
                                          letterSpacing: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        height: 250.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 5,
                              blurRadius: 10,
                              color: Colors.grey.shade200,
                              offset: const Offset(1, 10),
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            Positioned.fill(
                              bottom: 210,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12),
                                  ),
                                  color: Colors.grey.shade100,
                                ),
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    SvgPicture.asset(
                                      'icons/Group 2010.svg',
                                      width: 22,
                                      height: 22,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text(
                                      'Consult ID : 1526',
                                      style: TextStyle(
                                        color: Color.fromRGBO(112, 112, 112, 1),
                                        fontFamily: 'Poppins',
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 60,
                                    ),
                                    const Text(
                                      'Booked on 23/08 7:10 PM',
                                      style: TextStyle(
                                        color: Color.fromRGBO(112, 112, 112, 1),
                                        fontFamily: 'Poppins',
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned.fill(
                              top: 60,
                              bottom: 90,
                              right: 13,
                              left: 13,
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: const [
                                        Text(
                                          'Dr.Watson',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 20,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: const [
                                        Text(
                                          'Appointment for',
                                          style: TextStyle(
                                            color: Color.fromRGBO(
                                                112, 112, 112, 1),
                                            fontFamily: 'Poppins',
                                            fontSize: 16.0,
                                          ),
                                        ),
                                        SizedBox(width: 3),
                                        Text(
                                          'Priyal Jain',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          'icons/calendar.svg',
                                          height: 17,
                                          width: 17,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Text(
                                          '13 July',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w900,
                                            color: Colors.black,
                                            fontSize: 20,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 40,
                                        ),
                                        SvgPicture.asset(
                                          'icons/clock.svg',
                                          height: 17,
                                          width: 17,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Text(
                                          '3:05 PM',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w900,
                                            color: Colors.black,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned.fill(
                              top: 170,
                              bottom: 9,
                              right: 13,
                              left: 13,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(12),
                                  ),
                                  color: Colors.grey.shade50,
                                ),
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 13,
                                    ),
                                    SvgPicture.asset(
                                      'icons/watch.svg',
                                      width: 18,
                                      height: 18,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          'Upcoming Appointment',
                                          style: TextStyle(
                                            color: Color.fromRGBO(
                                                112, 112, 112, 1),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18.0,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 25,
                                        ),
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(9),
                                            ),
                                            elevation: 8,
                                            backgroundColor:
                                                const Color.fromRGBO(
                                                    68, 133, 253, 1),
                                            fixedSize: const Size(100, 40),
                                          ),
                                          child: const Text(
                                            'Join Now',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w900,
                                              fontSize: 15.0,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned.fill(
                              top: 165,
                              bottom: 9,
                              right: 13,
                              left: 13,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (BuildContext context) {
                                        return const page2();
                                      },
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey.shade50,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 13),
                                  elevation: 0,
                                ),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      'icons/cam.svg',
                                      width: 18,
                                      height: 18,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      'Consulted',
                                      style: TextStyle(
                                        color: Color.fromRGBO(112, 112, 112, 1),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18.0,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        height: 250.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 5,
                              blurRadius: 10,
                              color: Colors.grey.shade200,
                              offset: const Offset(1, 10),
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            Positioned.fill(
                              bottom: 210,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12),
                                  ),
                                  color: Colors.grey.shade100,
                                ),
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    SvgPicture.asset(
                                      'icons/Group 2010.svg',
                                      width: 22,
                                      height: 22,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text(
                                      'Consult ID : 6254',
                                      style: TextStyle(
                                        color: Color.fromRGBO(112, 112, 112, 1),
                                        fontFamily: 'Poppins',
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 60,
                                    ),
                                    const Text(
                                      'Booked on 12/01 2:43 PM',
                                      style: TextStyle(
                                        color: Color.fromRGBO(112, 112, 112, 1),
                                        fontFamily: 'Poppins',
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned.fill(
                              top: 60,
                              bottom: 90,
                              right: 13,
                              left: 13,
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Dr.Ahmed',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                          color: Colors.black),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: const [
                                        Text(
                                          'Appointment for',
                                          style: TextStyle(
                                            color: Color.fromRGBO(
                                                112, 112, 112, 1),
                                            fontFamily: 'Poppins',
                                            fontSize: 16.0,
                                          ),
                                        ),
                                        SizedBox(width: 3),
                                        Text(
                                          'Vance Joy',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          'icons/calendar.svg',
                                          height: 17,
                                          width: 17,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Text(
                                          '17 May',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w900,
                                            color: Colors.black,
                                            fontSize: 20,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 40,
                                        ),
                                        SvgPicture.asset(
                                          'icons/clock.svg',
                                          height: 17,
                                          width: 17,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Text(
                                          '3:35 PM',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w900,
                                            color: Colors.black,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned.fill(
                              top: 170,
                              bottom: 9,
                              right: 13,
                              left: 13,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (BuildContext context) {
                                        return const page();
                                      },
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey.shade50,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 13),
                                  elevation: 0,
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(12),
                                    ),
                                    color: Colors.grey.shade50,
                                  ),
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 1,
                                      ),
                                      SvgPicture.asset(
                                        'icons/Group 1738.svg',
                                        width: 18,
                                        height: 18,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        'Call Aborted',
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(112, 112, 112, 1),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18.0,
                                          letterSpacing: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        height: 250.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 5,
                              blurRadius: 10,
                              color: Colors.grey.shade200,
                              offset: const Offset(1, 10),
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            Positioned.fill(
                              bottom: 210,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12),
                                  ),
                                  color: Colors.grey.shade100,
                                ),
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    SvgPicture.asset(
                                      'icons/instant.svg',
                                      width: 22,
                                      height: 22,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text(
                                      'Consult ID : 9658',
                                      style: TextStyle(
                                        color: Color.fromRGBO(112, 112, 112, 1),
                                        fontFamily: 'Poppins',
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    const Text(
                                      'Booked on 30/08 4:00 AM',
                                      style: TextStyle(
                                        color: Color.fromRGBO(112, 112, 112, 1),
                                        fontFamily: 'Poppins',
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned.fill(
                              top: 60,
                              bottom: 90,
                              right: 13,
                              left: 13,
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: const [
                                        Text(
                                          'Dr.Narasimha',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 20,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          width: 190,
                                        ),
                                        Text(
                                          'Follow-up',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15,
                                              color: Color.fromRGBO(
                                                  68, 133, 253, 1)),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: const [
                                        Text(
                                          'Appointment for',
                                          style: TextStyle(
                                            color: Color.fromRGBO(
                                                112, 112, 112, 1),
                                            fontFamily: 'Poppins',
                                            fontSize: 16.0,
                                          ),
                                        ),
                                        SizedBox(width: 3),
                                        Text(
                                          'Arjun Renjal',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          'icons/calendar.svg',
                                          height: 17,
                                          width: 17,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Text(
                                          '30 March',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w900,
                                            color: Colors.black,
                                            fontSize: 20,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 40,
                                        ),
                                        SvgPicture.asset(
                                          'icons/clock.svg',
                                          height: 17,
                                          width: 17,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Text(
                                          '7:00 AM',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w900,
                                            color: Colors.black,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned.fill(
                              top: 170,
                              bottom: 9,
                              right: 13,
                              left: 13,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(12),
                                  ),
                                  color: Colors.grey.shade50,
                                ),
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 13,
                                    ),
                                    SvgPicture.asset(
                                      'icons/payment.svg',
                                      width: 18,
                                      height: 18,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          'Payment Pending',
                                          style: TextStyle(
                                            color: Color.fromRGBO(
                                                112, 112, 112, 1),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18.0,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 65,
                                        ),
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(9),
                                            ),
                                            elevation: 8,
                                            backgroundColor:
                                                const Color.fromRGBO(
                                                    68, 133, 253, 1),
                                            fixedSize: const Size(100, 40),
                                          ),
                                          child: const Text(
                                            'Pay Now',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w900,
                                              fontSize: 15.0,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        height: 250.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 5,
                              blurRadius: 10,
                              color: Colors.grey.shade200,
                              offset: const Offset(1, 10),
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            Positioned.fill(
                              bottom: 210,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12),
                                  ),
                                  color: Colors.grey.shade100,
                                ),
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    SvgPicture.asset(
                                      'icons/Group 2022.svg',
                                      width: 22,
                                      height: 22,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text(
                                      'Consult ID : 2565',
                                      style: TextStyle(
                                        color: Color.fromRGBO(112, 112, 112, 1),
                                        fontFamily: 'Poppins',
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    const Text(
                                      'Booked on 01/03 8:13 PM',
                                      style: TextStyle(
                                        color: Color.fromRGBO(112, 112, 112, 1),
                                        fontFamily: 'Poppins',
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned.fill(
                              top: 60,
                              bottom: 90,
                              right: 13,
                              left: 13,
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Dr.Kumar',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                          color: Colors.black),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: const [
                                        Text(
                                          'Appointment for',
                                          style: TextStyle(
                                            color: Color.fromRGBO(
                                                112, 112, 112, 1),
                                            fontFamily: 'Poppins',
                                            fontSize: 16.0,
                                          ),
                                        ),
                                        SizedBox(width: 3),
                                        Text(
                                          'Madhav Shetty',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          'icons/calendar.svg',
                                          height: 17,
                                          width: 17,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Text(
                                          '2 April',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w900,
                                            color: Colors.black,
                                            fontSize: 20,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 40,
                                        ),
                                        SvgPicture.asset(
                                          'icons/clock.svg',
                                          height: 17,
                                          width: 17,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Text(
                                          '9:35 PM',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w900,
                                            color: Colors.black,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned.fill(
                              top: 170,
                              bottom: 9,
                              right: 13,
                              left: 13,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (BuildContext context) {
                                        return const page();
                                      },
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey.shade50,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 13),
                                  elevation: 0,
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(12),
                                    ),
                                    color: Colors.grey.shade50,
                                  ),
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 2,
                                      ),
                                      SvgPicture.asset(
                                        'icons/Note.svg',
                                        width: 25,
                                        height: 25,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        'Awaited Summary',
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(112, 112, 112, 1),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18.0,
                                          letterSpacing: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        height: 250.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 5,
                              blurRadius: 10,
                              color: Colors.grey.shade200,
                              offset: const Offset(1, 10),
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            Positioned.fill(
                              bottom: 210,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12),
                                  ),
                                  color: Colors.grey.shade100,
                                ),
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    SvgPicture.asset(
                                      'icons/Group 2010.svg',
                                      width: 22,
                                      height: 22,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text(
                                      'Consult ID : 1526',
                                      style: TextStyle(
                                        color: Color.fromRGBO(112, 112, 112, 1),
                                        fontFamily: 'Poppins',
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 60,
                                    ),
                                    const Text(
                                      'Booked on 23/08 7:10 PM',
                                      style: TextStyle(
                                        color: Color.fromRGBO(112, 112, 112, 1),
                                        fontFamily: 'Poppins',
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned.fill(
                              top: 60,
                              bottom: 90,
                              right: 13,
                              left: 13,
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: const [
                                        Text(
                                          'Dr.Watson',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 20,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: const [
                                        Text(
                                          'Appointment for',
                                          style: TextStyle(
                                            color: Color.fromRGBO(
                                                112, 112, 112, 1),
                                            fontFamily: 'Poppins',
                                            fontSize: 16.0,
                                          ),
                                        ),
                                        SizedBox(width: 3),
                                        Text(
                                          'Priyal Jain',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          'icons/calendar.svg',
                                          height: 17,
                                          width: 17,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Text(
                                          '13 July',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w900,
                                            color: Colors.black,
                                            fontSize: 20,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 40,
                                        ),
                                        SvgPicture.asset(
                                          'icons/clock.svg',
                                          height: 17,
                                          width: 17,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Text(
                                          '3:05 PM',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w900,
                                            color: Colors.black,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned.fill(
                              top: 170,
                              bottom: 9,
                              right: 13,
                              left: 13,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(12),
                                  ),
                                  color: Colors.grey.shade50,
                                ),
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 13,
                                    ),
                                    SvgPicture.asset(
                                      'icons/watch.svg',
                                      width: 18,
                                      height: 18,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          'Upcoming Appointment',
                                          style: TextStyle(
                                            color: Color.fromRGBO(
                                                112, 112, 112, 1),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18.0,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 25,
                                        ),
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(9),
                                            ),
                                            elevation: 8,
                                            backgroundColor:
                                                const Color.fromRGBO(
                                                    68, 133, 253, 1),
                                            fixedSize: const Size(100, 40),
                                          ),
                                          child: const Text(
                                            'Join Now',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w900,
                                              fontSize: 15.0,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 40, 20, 40),
            child: SvgPicture.asset(
              'icons/med.svg',
              fit: BoxFit.contain,
            ),
          )
        ],
      ),
    );
  }
}

class HealthPassport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 180,
      ),
      body: Container(
        alignment: Alignment.center,
        child: const Icon(
          Icons.heart_broken_outlined,
          size: 100,
        ),
      ),
    );
  }
}

class BlogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 180,
      ),
      body: Container(
        alignment: Alignment.center,
        child: const Icon(
          Icons.insert_page_break,
          size: 100,
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 180,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Icon(
          Icons.person_2_outlined,
          size: 100,
        ),
      ),
    );
  }
}
