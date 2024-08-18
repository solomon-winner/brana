// import 'package:brana/components/details/bookDetail.dart';
// import 'package:brana/components/details/bookImage.dart';
// import 'package:brana/components/details/description.dart';
// import 'package:brana/components/details/booksByAuthor.dart';
// import 'package:brana/components/details/testimonies.dart';
// import 'package:brana/models/books.dart';
// import 'package:brana/utils/colors.dart';
// import 'package:flutter/material.dart';

// class Profile extends StatelessWidget {

  
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       backgroundColor: BranaColor.light_background,
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//        backgroundColor: BranaColor.AppBarTransparent,
//        centerTitle: true,
//         leading: Container(
//           color: BranaColor.WhiteColor, // Set the background color to white
//           child: IconButton(
//             icon: Icon(
//               Icons.arrow_back,
//              color: BranaColor.dark_background),
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//           ),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//             height: 530,
//             child: Stack(
//               children: [
//                 Positioned(
            
//                 // child: BookImage(),
//                 ),
//                  Positioned(
//                   top: 230,
//                   left: 0,
//                   right: 0,
//                   child: BookDetail(),
//                   ),
                
//               ],
//             ),
//           ),
//           SizedBox(height: 10,),
//           Description(description: book.description,), 
//           Booksbyauthor(),
//           Testimonies(testimonies: [
//             book.description, 
//             book.description, 
//             book.description,
//             book.description,
//             book.description,
//             book.description,
//             book.description,
//             ]),
//           ]
//         )
//       ),
//     );
//   }
// }