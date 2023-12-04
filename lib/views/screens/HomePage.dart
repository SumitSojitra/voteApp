import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:voting_app/Helper/AuthHelper.dart';
import 'package:voting_app/Helper/firestore_helper.dart';
import 'package:voting_app/views/Assest/colorsAssets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int totalVoteBJP = 0;
  int totalVoteCongress = 0;
  int totalVoteAAP = 0;
  int totalVotes = 0;

  bool bjpBool = false;
  bool congressBool = false;
  bool aapBool = false;
  bool general = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg,
      appBar: AppBar(
        backgroundColor: AppColors.bg,
        centerTitle: true,
        title: Text("Voting App"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Container(),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: Text(
                "${AuthHelper.authHelper.firebaseAuth.currentUser!.displayName}",
                style: const TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.output_rounded,
              ),
              title: const Text(
                "Log Out",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              onTap: () {
                AuthHelper.authHelper.SignOut()
                  ..then((value) => Get.offAndToNamed('/'));
              },
            ),
          ],
        ),
      ),
      ////
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                ////
                Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                    color: AppColors.kWhite,
                    borderRadius: BorderRadius.all(Radius.circular(19)),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://tse1.mm.bing.net/th?id=OIP.vs1jYzzk-xznBGyxXQ0LCAAAAA&pid=Api&P=0&h=180"),
                      // fit: BoxFit.cover,
                    ),
                  ),
                ),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    (general && bjpBool == false)
                        ? Container()
                        : Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 50,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Text(
                              "$totalVoteBJP",
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                          ),
                    const SizedBox(
                      width: 36,
                    ),
                    (bjpBool == true)
                        ? Center(child: Container())
                        : GestureDetector(
                            onTap: () {
                              setState(() {
                                totalVoteBJP++;
                                bjpBool = true;
                              });
                              if (bjpBool) {
                                general = true;
                              }

                              FireStoreHelper.fireStoreHelper.SendVotes(
                                  bjp: totalVoteBJP,
                                  cong: totalVoteCongress,
                                  aap: totalVoteAAP,
                                  total: totalVotes,
                                  voteId: AuthHelper
                                      .authHelper.googleSignIn.currentUser!.id);
                            },
                            child: (general)
                                ? Container()
                                : Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: 50,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                    ),
                                    child: const Text(
                                      "Vote",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    ),
                                  ),
                          ),
                  ],
                ),
                Gap(20),
                ////
                Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                    color: AppColors.kWhite,
                    borderRadius: BorderRadius.all(Radius.circular(19)),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://tse1.mm.bing.net/th?id=OIP.Jy0OGjEjWHadEfvBbjkCvQHaG8&pid=Api&P=0&h=180"),
                      // fit: BoxFit.cover,
                    ),
                  ),
                ),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    (general && congressBool == false)
                        ? Container()
                        : Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 50,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Text(
                              "$totalVoteCongress",
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                          ),
                    Gap(20),
                    (congressBool == true)
                        ? Center(child: Container())
                        : GestureDetector(
                            onTap: () {
                              setState(() {
                                totalVoteCongress++;
                                congressBool = true;
                              });
                              if (congressBool) {
                                general = true;
                              }
                            },
                            child: (general)
                                ? Container()
                                : Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: 50,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                    ),
                                    child: const Text(
                                      "Vote",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    ),
                                  ),
                          ),
                  ],
                ),
                Gap(20),
                ////
                Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                    color: AppColors.kWhite,
                    borderRadius: BorderRadius.all(Radius.circular(19)),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://tse2.mm.bing.net/th?id=OIP.J9Lady_qANk36oOLP8d02wAAAA&pid=Api&P=0&h=180"),
                      // fit: BoxFit.cover,
                    ),
                  ),
                ),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    (general && aapBool == false)
                        ? Container()
                        : Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 50,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Text(
                              "$totalVoteAAP",
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                          ),
                    Gap(20),
                    (aapBool == true)
                        ? Center(child: Container())
                        : GestureDetector(
                            onTap: () {
                              setState(() {
                                totalVoteAAP++;
                                aapBool = true;
                              });
                              if (aapBool) {
                                general = true;
                              }
                            },
                            child: (general)
                                ? Container()
                                : Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: 50,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                    ),
                                    child: const Text(
                                      "Vote",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    ),
                                  ),
                          ),
                  ],
                ),
                Gap(20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
