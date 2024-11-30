import 'package:flutter/material.dart';

import 'JLPT_test.dart';

class ChooseTest extends StatefulWidget {
  const ChooseTest({super.key});

  @override
  State<ChooseTest> createState() => _ChooseTestState();
}

class _ChooseTestState extends State<ChooseTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose Test'),
        centerTitle: true,
        backgroundColor:const Color(0xFFD482E8),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Select Your Test',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Kccs Card
                GestureDetector(
                  onTap: () {
                    // Action for Kccs
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Kccs Test Selected',style: TextStyle(fontSize: 15),)),
                    );
                  },
                  child: Card(
                    elevation: 6,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Container(
                      width: 150,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        gradient: LinearGradient(
                          colors: [
                            const Color(0xFFF3E5F5),
                            const Color(0xFFF3E5F5).withOpacity(0.7)
                          ],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.book, size: 50, ),
                          const SizedBox(height: 10),
                          const Text(
                            'Kccs',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // JLPT Card
                GestureDetector(
                  onTap: () {
                    // Action for JLPT
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('JLPT Test Selected')),
                    );
                  },
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>JlptTest()));
                    },
                    child: Card(
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Container(
                        width: 150,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                            gradient: LinearGradient(
                              colors: [
                                const Color(0xFFF3E5F5),
                                const Color(0xFFF3E5F5).withOpacity(0.7)
                              ],
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                            ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.language,
                                size: 50, ),
                            const SizedBox(height: 10),
                            const Text(
                              'JLPT',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,

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
          ],
        ),
      ),
    );
  }
}
