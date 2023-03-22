import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class page2 extends StatelessWidget {
  const page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: true,
        toolbarHeight: 80,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: const Text(
          'Consultation with Dr. Jhon',
          style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w900,
              fontSize: 21,
              color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 30.0, 16, 40),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.white,
                ),
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
              child: Row(
                children: [
                  Image.asset(
                    'icons/person.jpg',
                    height: 170,
                    width: 170,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: const [
                          Text(
                            'Name : ',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w100,
                                fontSize: 17.0,
                                color: Colors.black),
                          ),
                          Text(
                            'Arjun Renjal',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w900,
                                fontSize: 17.0,
                                color: Colors.black),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: const [
                          Text(
                            'Patient ID : ',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w100,
                                fontSize: 17.0,
                                color: Colors.black),
                          ),
                          Text(
                            '#11625',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w900,
                                fontSize: 17.0,
                                color: Colors.black),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: const [
                          Text(
                            'DOB : ',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w100,
                                fontSize: 17.0,
                                color: Colors.black),
                          ),
                          Text(
                            '05/06/2003 (19 years)',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w900,
                                fontSize: 17.0,
                                color: Colors.black),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: const [
                          Text(
                            'Country : ',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w100,
                                fontSize: 17.0,
                                color: Colors.black),
                          ),
                          Text(
                            'Qatar',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w900,
                                fontSize: 17.0,
                                color: Colors.black),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  'icons/calendar.svg',
                  height: 15,
                  width: 15,
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
                    fontSize: 19,
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                SvgPicture.asset(
                  'icons/clock.svg',
                  height: 15,
                  width: 15,
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
                    fontSize: 19,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 80),
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 13),
                elevation: 0,
              ),
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset('icons/repeat.svg',
                          height: 30, width: 30),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        'Repeat consultation',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(68, 133, 253, 1),
                          fontSize: 18,
                          letterSpacing: 1,
                        ),
                      ),
                      const SizedBox(
                        width: 120,
                      ),
                      SvgPicture.asset(
                        'icons/arrow.svg',
                        height: 15,
                        width: 15,
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.white,
                ),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 25,
                      ),
                      const Text(
                        'Free follow up consultation',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Free follow up consultation for members',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: const [
                          Text(
                            'up to',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            '12-10-2022',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w300,
                              color: Colors.blue,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9),
                          ),
                          elevation: 8,
                          backgroundColor:
                              const Color.fromRGBO(68, 133, 253, 1),
                          fixedSize: const Size(170, 40),
                        ),
                        child: const Text(
                          'Consult Now',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w900,
                            fontSize: 15.0,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SvgPicture.asset('icons/free.svg', height: 120, width: 120)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
