import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String bullet = "\u2022 ";
    return Scaffold(
      appBar: AppBar(
        title: const Text("Help"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 18.0, left: 18, right: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                  text: 'Home ',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22)),
                              WidgetSpan(
                                  child: Icon(
                                Icons.home_outlined,
                                color: Colors.blue,
                              )),
                            ],
                          ),
                        ),
                      ),
                      BulletList([
                        "Here you can see the all updates about your hostel. The information posted here is officially approved by management."
                      ]),
                      const Divider(thickness: 1),
                      GestureDetector(
                        onTap: () {},
                        child: const Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                  text: 'Complaint Screen ',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22)),
                              WidgetSpan(
                                  child: Icon(
                                Icons.content_paste_go_sharp,
                                color: Colors.blue,
                              )),
                            ],
                          ),
                        ),
                      ),
                      BulletList([
                        "Here you are able to post your complaints you are facing in your hostel",
                        "if the complaints were accepted and the problems were solved, you'll get a notification"
                      ]),
                      const Divider(thickness: 1),
                      GestureDetector(
                        onTap: () {},
                        child: const Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                  text: 'Service Screen ',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22)),
                              WidgetSpan(
                                  child: Icon(
                                CupertinoIcons.wrench,
                                color: Colors.blue,
                              )),
                            ],
                          ),
                        ),
                      ),
                      BulletList([
                        "Here you are able to post about your repaired devices like fan, light, taps and doors.",
                        "if the complaints were accepted and the problems were solved, you'll get a notification"
                      ]),
                      const Divider(thickness: 1),
                      GestureDetector(
                        onTap: () {},
                        child: const Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                  text: 'Leave ',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22)),
                              WidgetSpan(
                                  child: Icon(
                                Icons.leave_bags_at_home,
                                color: Colors.blue,
                              )),
                            ],
                          ),
                        ),
                      ),
                      BulletList(["Add text here"])
                    ],
                  ),
                ),
              ],
            ),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Onboarding Screens",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 16)),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.blue,
                    size: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}

class BulletList extends StatelessWidget {
  final List<String> strings;

  BulletList(this.strings);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.fromLTRB(8, 10, 16, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: strings.map((str) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '\u2022',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.55,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: Container(
                  child: Text(
                    str,
                    textAlign: TextAlign.left,
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black.withOpacity(0.6),
                      height: 1.55,
                    ),
                  ),
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
