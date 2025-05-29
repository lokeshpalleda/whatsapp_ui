// Column(
//         mainAxisAlignment:MainAxisAlignment.start ,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
            
//             child: Text('Status',style: TextStyle(fontWeight: FontWeight.w100,fontSize: 16),),
//           ),
//           SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Row(
//               children: [
//                 Container(
//                   height: 120,
//                   width: 80,
//                   padding: EdgeInsets.only(left: 8),
//                   child: Card(
//                     color: Colors.grey[200],
//                     elevation: 1,
//                     child: Stack
//                     (children: [
//                       Positioned(top: 8,
//                       left: 8,
//                       child: CircleAvatar(backgroundColor:Colors.grey[400],minRadius:  5,child: Icon(Icons.person,color: Colors.white,),),
//                     ),
//                     ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),