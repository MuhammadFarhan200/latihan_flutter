import 'package:flutter/material.dart';
import 'package:latihan_flutter/latihan/latihan_object.dart';

class TestListView extends StatelessWidget {
  const TestListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            SizedBox(
              height: 100,  
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 20, right: 5),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: person.length,
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    elevation: 0,
                    margin: const EdgeInsets.only(right: 15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.network(
                        width: 100,
                        person[index].photo,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 30),
              child: Text(
                'Restaurent',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 300,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: restaurents.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.only(top: 5, bottom: 10, right: 5, left: 5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Column(
                        children: [
                          Image.network(
                            restaurents[index].photo,
                            width: 350,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 20),
                          Text(
                            restaurents[index].name,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            restaurents[index].address,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Text(
                'Dishes',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 270,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: dishes.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.only(top: 5, bottom: 10, right: 5, left: 5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 3,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Column(
                        children: [
                          Image.network(
                            dishes[index].photo,
                            width: 350,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 15),
                          Text(
                            dishes[index].name,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}