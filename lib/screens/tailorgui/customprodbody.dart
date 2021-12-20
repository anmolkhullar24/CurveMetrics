// import 'package:flutter/material.dart';

// class Body extends StatelessWidget {
//   // const Body({ Key? key }) : super(key: key);
// //
//   @override
//   Widget build(BuildContext context) {
// return SafeArea(
//     child: SingleChildScrollView(
//         child: Column(children: [
//   Image.asset('assets/images/suit.jpg'),
//   Text("Ordered by : Jatin Rana"),
//   Text("Phone Number : 9306744881"),
//   Text("Cloth Quality : 200/meter"),
//   Text("Measurements ( inches ) :"),

//   Text("Neck To Shoulder : 9"),
//   Text("Shoulder To Shoulder : 22"),
//   Text("Shoulder To Wrist : 22"),
//   Text("Shoulder To Waist : 19"),
//   Text("Waist : 19"),
//   Text("Waist To Foot : 40"),
//   Text("Hip : 22"),
//   Text("Seam : 11"),
//   Text("Chest : 23"),
//   // Text("Ordered by : Jatin Rana"),
//   // Text("Phone Number : 9306744881"),
// ])));
//   }
// }
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final Stream<QuerySnapshot> OrdersStream =
      FirebaseFirestore.instance.collection('Orders').snapshots();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: OrdersStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            print("Something Went Wrong");
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          final List storedocs = [];
          snapshot.data.docs.map((DocumentSnapshot document) {
            Map a = document.data() as Map<String, dynamic>;
            storedocs.add(a);
          }).toList();
          final arguments = ModalRoute.of(context).settings.arguments as Map;
          return SafeArea(
              child: SingleChildScrollView(
                  child: Column(children: [
            Image.asset('assets/images/suit.jpg'),
            // for (var i = 0; i < storedocs.length; i++) ...[
            //   Text("Chest : " + storedocs[i]['Chest']),
            // ],
            // Text("Chest : " + storedocs[arguments['id']]['Chest']),
            Text("Ordered by : " + storedocs[arguments['id']]['Name']),
            Text(
                "Phone Number : " + storedocs[arguments['id']]['Phone Number']),
            Text("Cloth Quality : " +
                storedocs[arguments['id']]['Cloth Quality']),
            Text("Measurements ( inches ) :"),

            Text("Neck To Shoulder : " +
                storedocs[arguments['id']]['Neck To Shoulder']),
            Text("Shoulder To Shoulder : " +
                storedocs[arguments['id']]['Shoulder To Shoulder']),
            Text("Shoulder To Wrist : " +
                storedocs[arguments['id']]['Shoulder To Wrist']),
            Text("Shoulder To Waist : " +
                storedocs[arguments['id']]['Shoulder To Waist']),
            Text("Waist : " + storedocs[arguments['id']]['Waist']),
            Text("Waist To Foot : " +
                storedocs[arguments['id']]['Waist To Feet']),
            Text("Hip : " + storedocs[arguments['id']]['Hip']),
            Text("Seam : " + storedocs[arguments['id']]['Seam']),
            Text("Chest : " + storedocs[arguments['id']]['Chest']),
            // Text("Ordered by : Jatin Rana"),
            // Text("Phone Number : "+storedocs[arguments['id']]['Neck To Shoulder']),
          ])));
        });
  }
}
