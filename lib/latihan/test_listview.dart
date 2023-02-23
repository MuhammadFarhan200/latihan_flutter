import 'package:flutter/material.dart';
import 'package:latihan_flutter/latihan/model_latihan.dart';
import 'package:flutter/cupertino.dart';

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
            const SizedBox(height: 30),
            Row(
              children: [
                Flexible(
                  flex: 2,
                  child: Row(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        elevation: 3,
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.network(
                            width: 80,
                            height: 80,
                            'https://images.generated.photos/xWjqepEJ4oaqeG10kJvKd4CuiwV3yw1a2SqbXLwf2D0/rs:fit:256:256/czM6Ly9pY29uczgu/Z3Bob3Rvcy1wcm9k/LnBob3Rvcy92M18w/MDI3NzU2LmpwZw.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Hello Flutter',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: const [
                                Icon(
                                  CupertinoIcons.location_solid,
                                  size: 18,
                                ),
                                SizedBox(width: 3),
                                Text(
                                  'Rancamanyar City',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Icon(
                      CupertinoIcons.bell,
                      size: 30,
                    ),
                    SizedBox(width: 7),
                    Icon(
                      CupertinoIcons.search,
                      size: 30,
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30),
            Container(
              height: 28,
              color: const Color.fromARGB(121, 191, 201, 199),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.only(left: 20, bottom: 15),
              child: Text(
                'Chefs',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
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
                    elevation: 3,
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
            const SizedBox(height: 40),
            Container(
              height: 28,
              color: const Color.fromARGB(121, 191, 201, 199),
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
                    elevation: 3,
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
                          const SizedBox(height: 15),
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
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 40),
            Container(
              height: 28,
              color: const Color.fromARGB(121, 191, 201, 199),
            ),
            const SizedBox(height: 10),
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
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
