import 'package:cloud_firestore/cloud_firestore.dart';

import 'AuthHelper.dart';

class FireStoreHelper {
  FireStoreHelper._();

  static FireStoreHelper fireStoreHelper = FireStoreHelper._();

  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  CollectionReference votes = FirebaseFirestore.instance.collection('votes');

  Future<void> addUsers({required Map<String, dynamic> data}) async {
    await firebaseFirestore
        .collection("users")
        .doc("${AuthHelper.authHelper.firebaseAuth.currentUser?.uid}")
        .set(data);
  }

  Future<void> SendVotes(
      {required int bjp,
      required int cong,
      required int aap,
      required int total,
      required String voteId}) async {
    QuerySnapshot<Map<String, dynamic>> querySnapshot =
        await firebaseFirestore.collection('votes').get();

    List<QueryDocumentSnapshot<Map<String, dynamic>>> allDocs =
        await querySnapshot.docs;

    bool vote = false;

    if (vote == false) {
      await firebaseFirestore.collection("votes").doc("${voteId}").set(
        {
          "users": voteId,
        },
      );

      await firebaseFirestore
          .collection("votes")
          .doc("${voteId}")
          .collection("vote")
          .add(
        {
          "bjp": "${bjp}",
          "cong": "${cong}",
          "aap": "${aap}",
        },
      );
    } else {
      await firebaseFirestore
          .collection("chat")
          .doc("${voteId}")
          .collection("vote")
          .add({
        "bjp": "${bjp}",
        "cong": "${cong}",
        "aap": "${aap}",
      });
    }
  }
}
