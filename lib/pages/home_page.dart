import 'package:brana/components/home/bodyContainer.dart';
import 'package:brana/pages/favourite.dart';
import 'package:brana/pages/trending_page.dart';
import 'package:brana/pages/shelves.dart';
import 'package:brana/utils/colors.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:brana/components/sideBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _page = 0;
  final pages = [
    bodyContainer(),
    Shelves(),
    // Favourite(),
    TrendingPage()];
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: BranaColor.light_background,
      drawer: SideBar(),
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
          icon: Icon(
              Icons.menu,
              ),
             color: BranaColor.WhiteColor, 

            onPressed: () {
              setState(() {
                Scaffold.of(context).openDrawer();
              });
            },
        )
      ),

        
        actions: [],
        title: const Text(
          "Brana Library",
          style: TextStyle(
            color: Colors.white
          ),
          ),
        centerTitle: true,
        backgroundColor: BranaColor.navigationColor,
      ),
      body: 
          Column(
            children:[
              Expanded(
              child: pages[_page],
              ),
            ] ,
          ),

      
      bottomNavigationBar: Container(
        child: CurvedNavigationBar(
          backgroundColor: BranaColor.light_background,
          color:BranaColor.navigationColor,
          height: 60,
          animationDuration: Duration(milliseconds: 300),
          index: 0,
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          items: [
          Badge(
            backgroundColor: BranaColor.BadgeBackground,
            textColor: BranaColor.BadgeLabelColor,
            label: Text("2"),
            isLabelVisible: false,
              child: Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
            Badge(
            backgroundColor: BranaColor.BadgeBackground,
            textColor: BranaColor.BadgeLabelColor,
            label: Text("2"),
              child: Icon(Icons.shelves,
              color: BranaColor.WhiteColor,
              ),
            ),
          Badge(
            backgroundColor: BranaColor.BadgeBackground,
            textColor: BranaColor.BadgeLabelColor,
            label: Text("2"),
              child: Icon(
                Icons.favorite,
                color: Colors.white,
                ),
            
          ),
          Icon(Icons.trending_up_sharp,
          color: BranaColor.WhiteColor,
          ),
        ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:brana/Blocs/bookBloc/book_bloc.dart';
// import 'package:brana/Blocs/bookBloc/book_state.dart';
// import 'package:brana/Blocs/bookBloc/book_event.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Books")),
//       body: BlocBuilder<BookBloc, BookState>(
//         builder: (context, state) {
//           return state.when(
//             initial: () => const Center(child: Text("Press the button")),
//             loading: () => const Center(child: CircularProgressIndicator()),
//             loaded: (books) => ListView.builder(
//               itemCount: books.length,
//               itemBuilder: (context, index) {
//                 return ListTile(title: Text(books[index].title));
//               },
//             ),
//             error: (message) => Center(child: Text("Error: $message")),
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           context.read<BookBloc>().add(const FetchBooks());
//         },
//         child: const Icon(Icons.refresh),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import '../providers/book_provider.dart';
// import '../models/books.dart';

// class HomePage extends ConsumerWidget {
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final bookList = ref.watch(bookListProvider);

//     return Scaffold(
//       appBar: AppBar(title: Text("Book List")),
//       body: RefreshIndicator(
//         onRefresh:  () async => ref.refresh(bookListProvider),
//         child: bookList.when(
//           data: (books) => ListView.builder(
//             itemCount: books.length,
//             itemBuilder: (context, index) {
//               final book = books[index];
//               return ListTile(
//                 leading: Image.network(book.img, width: 50, height: 50, fit: BoxFit.cover),
//                 title: Text(book.title),
//                 subtitle: Text("By ${book.author}"),
//               );
//             },
//           ),
//           loading: () => Center(child: CircularProgressIndicator()),
//           error: (err, stack) => Center(child: Text("Error: ${err.toString()}")),
//         ),
//       ),
//     );
//   }
// }
