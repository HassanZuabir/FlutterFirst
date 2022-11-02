import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.white
    ));
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: const Text("Dessert App"),
        titleTextStyle: const TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),
        leading: const Icon(Icons.menu,color: Colors.black,),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: CircleAvatar(
              radius: 18,
              backgroundImage: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 18.0),
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 50.0,
                decoration: const BoxDecoration(
                    color: Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.all(Radius.circular(100))
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 18,right: 18,top: 4),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      hintText: "Search",
                      hintStyle: TextStyle(fontSize: 12)
                    ),
                  ),
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(top: 8.0,right: 18.0,left: 18.0),
              child: Stack(
                children: [

                  Container(
                    width: double.infinity,
                    height: 180.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: const Offset(5, 10), // changes position of shadow
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.network('https://www.myweekendplan.com.my/wp-content/uploads/2020/05/15-Words-to-Describe-Your-Desserts-4.jpg',fit: BoxFit.cover,),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 180.0,
                    alignment: Alignment.centerLeft,
                    decoration: const BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(alignment: Alignment.centerLeft, child: Text("Welcome!",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),)),
                          Container(alignment: Alignment.centerLeft,child: Text("Express your feelings with some sweet.",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
      Padding(
        padding: const EdgeInsets.only(top: 25,left: 20,right: 20),
        child: Container(
          width: double.infinity,
          alignment: Alignment.centerLeft,
            child: const Text("Desert Catogories",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SizedBox(
          height: 230,
          child:Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Card(
              elevation: 8.0,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                alignment: Alignment.center,
                child:  GridView.extent(
                  primary: false,
                  padding: const EdgeInsets.all(16),
                  crossAxisSpacing: 10,
                  physics: const NeverScrollableScrollPhysics(),
                  mainAxisSpacing: 10,
                  maxCrossAxisExtent: 100.0,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Container(
                            decoration:const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [BoxShadow(blurRadius: 2, color: Colors.grey, spreadRadius: 1)],
                                      ),
                                      child: const CircleAvatar(
                                        radius: 26.0,
                                        backgroundImage: NetworkImage('http://www.lovethatfood.com/images/cake/angel-food-cake-with-caramel-fluff/angel-food-cake-with-caramel-fluff-200.jpg'),
                                      ),
                                    ),
                                    const SizedBox(height: 5,),
                          const Text('Cake')
                        ],
                      )
                    ),
                    Container(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Container(
                              decoration:const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [BoxShadow(blurRadius: 2, color: Colors.grey, spreadRadius: 1)],
                              ),
                              child: const CircleAvatar(
                                radius: 26.0,
                                backgroundImage: NetworkImage('http://www.lovethatfood.com/images/cookies/lemon-shortbread-sandwich-cookies/lemon-shortbread-sandwich-cookies-200.jpg'),
                              ),
                            ),
                            const SizedBox(height: 5,),
                            const Text('Candy')
                          ],
                        )
                    ),
                    Container(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Container(
                              decoration:const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [BoxShadow(blurRadius: 2, color: Colors.grey, spreadRadius: 1)],
                              ),
                              child: const CircleAvatar(
                                radius: 26.0,
                                backgroundImage: NetworkImage('http://www.lovethatfood.com/images/pie/pumpkin%20pie/pumpkin-pie-200.jpg'),
                              ),
                            ),
                            const SizedBox(height: 5,),
                            const Text('Pie')
                          ],
                        )
                    ),
                    Container(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Container(
                              decoration:const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [BoxShadow(blurRadius: 2, color: Colors.grey, spreadRadius: 1)],
                              ),
                              child: const CircleAvatar(
                                radius: 26.0,
                                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQp_CNfjuZFxQAptKZyB4ttFb926S9UbP2H9Q&usqp=CAU'),
                              ),
                            ),
                            const SizedBox(height: 5,),
                            const Text('IceCream')
                          ],
                        )
                    ),
                    Container(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Container(
                              decoration:const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [BoxShadow(blurRadius: 2, color: Colors.grey, spreadRadius: 1)],
                              ),
                              child: const CircleAvatar(
                                radius: 26.0,
                                backgroundImage: NetworkImage('http://www.lovethatfood.com/images/cake/angel-food-cake-with-caramel-fluff/angel-food-cake-with-caramel-fluff-200.jpg'),
                              ),
                            ),
                            const SizedBox(height: 5,),
                            const Text('Cake')
                          ],
                        )
                    ),
                    Container(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Container(
                              decoration:const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [BoxShadow(blurRadius: 2, color: Colors.grey, spreadRadius: 1)],
                              ),
                              child: const CircleAvatar(
                                radius: 26.0,
                                backgroundImage: NetworkImage('http://www.lovethatfood.com/images/cookies/lemon-shortbread-sandwich-cookies/lemon-shortbread-sandwich-cookies-200.jpg'),
                              ),
                            ),
                            const  SizedBox(height: 5,),
                            const Text('Candy')
                          ],
                        )
                    ),

                  ],
                )

                //     }),
              ),
            ),
          )

        ),
      ),
            Padding(
              padding: const EdgeInsets.only(top: 25,left: 20,right: 20),
              child: Container(
                  width: double.infinity,
                  alignment: Alignment.centerLeft,
                  child:const Text("Top Rating",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
              ),
            ),

    SizedBox(
      width: double.infinity,
      height: 500,
      child: ListView(
        physics:const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(8),
      children: <Widget>[
      SizedBox(
        width: double.infinity,
        height: 100,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                  child: Container(
                    height: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,

                      ),

                    child: ClipRRect(
                      borderRadius:const BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),

                      child: Image.network('http://www.lovethatfood.com/images/pie/pumpkin%20pie/pumpkin-pie-200.jpg',
                      fit: BoxFit.fill,),
                    ),
                  )
              ),
              Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Expanded(
                          flex:1,
                            child: Container(
                                alignment: Alignment.centerLeft,
                                child:const Text('Pie',style: TextStyle(fontWeight: FontWeight.bold),)
                            ),

                        ),
                        Expanded(
                          flex: 1,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  RatingBar.builder(
                                      minRating: 1,
                                      initialRating: 4.5,
                                      itemSize: 12,
                                      ignoreGestures: true,
                                      glow: false,
                                      allowHalfRating: true,
                                      itemBuilder: (context,_)=> const Icon(Icons.star,color: Colors.yellow,),
                                      onRatingUpdate: (rating){}
                                  ),
                                  const SizedBox(width: 16,),
                                  const Text("4.5",style: TextStyle(fontSize: 10,color: Colors.grey),)
                                ],
                              ),
                            ),
                        ),
                        Expanded(
                          flex:1,
                          child: Container(
                              alignment: Alignment.centerLeft,
                              child:const Text('by dessert experts',style: TextStyle(fontSize: 12,color: Colors.grey),)
                          ),

                        ),

                      ],
                    ),
                  )
              ),
              Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Icon(Icons.thumb_up,color: Colors.grey,size: 20,),
                      Text('Rs. 420',style: TextStyle(fontSize: 12,color: Colors.black),)
                    ],
                  )
              ),
            ],
          ),
        ),

      ),
      SizedBox(
        width: double.infinity,
        height: 100,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                  child: Container(
                    height: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,

                      ),

                    child: ClipRRect(
                      borderRadius:const BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),

                      child: Image.network('http://www.lovethatfood.com/images/cookies/lemon-shortbread-sandwich-cookies/lemon-shortbread-sandwich-cookies-200.jpg',
                      fit: BoxFit.fill,),
                    ),
                  )
              ),
              Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Expanded(
                          flex:1,
                            child: Container(
                                alignment: Alignment.centerLeft,
                                child:const Text('Candy',style: TextStyle(fontWeight: FontWeight.bold),)
                            ),

                        ),
                        Expanded(
                          flex: 1,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  RatingBar.builder(
                                      minRating: 1,
                                      initialRating: 4.5,
                                      itemSize: 12,
                                      ignoreGestures: true,
                                      glow: false,
                                      allowHalfRating: true,
                                      itemBuilder: (context,_)=> const Icon(Icons.star,color: Colors.yellow,),
                                      onRatingUpdate: (rating){}
                                  ),
                                  const SizedBox(width: 16,),
                                  const Text("4.5",style: TextStyle(fontSize: 10,color: Colors.grey),)
                                ],
                              ),
                            ),
                        ),
                        Expanded(
                          flex:1,
                          child: Container(
                              alignment: Alignment.centerLeft,
                              child:const Text('by dessert experts',style: TextStyle(fontSize: 12,color: Colors.grey),)
                          ),

                        ),

                      ],
                    ),
                  )
              ),
              Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const[
                      Icon(Icons.thumb_up,color: Colors.grey,size: 20,),
                      Text('Rs. 420',style: TextStyle(fontSize: 12,color: Colors.black),)
                    ],
                  )
              ),
            ],
          ),
        ),

      ),
      SizedBox(
        width: double.infinity,
        height: 100,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                  child: Container(
                    height: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,

                      ),

                    child: ClipRRect(
                      borderRadius:const BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),

                      child: Image.network('http://www.lovethatfood.com/images/cake/angel-food-cake-with-caramel-fluff/angel-food-cake-with-caramel-fluff-200.jpg',
                      fit: BoxFit.fill,),
                    ),
                  )
              ),
              Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Expanded(
                          flex:1,
                            child: Container(
                                alignment: Alignment.centerLeft,
                                child:const Text('Cake',style: TextStyle(fontWeight: FontWeight.bold),)
                            ),

                        ),
                        Expanded(
                          flex: 1,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  RatingBar.builder(
                                      minRating: 1,
                                      initialRating: 4.5,
                                      itemSize: 12,
                                      ignoreGestures: true,
                                      glow: false,
                                      allowHalfRating: true,
                                      itemBuilder: (context,_)=> const Icon(Icons.star,color: Colors.yellow,),
                                      onRatingUpdate: (rating){}
                                  ),
                                  const SizedBox(width: 16,),
                                  const Text("4.5",style: TextStyle(fontSize: 10,color: Colors.grey),)
                                ],
                              ),
                            ),
                        ),
                        Expanded(
                          flex:1,
                          child: Container(
                              alignment: Alignment.centerLeft,
                              child:const Text('by dessert experts',style: TextStyle(fontSize: 12,color: Colors.grey),)
                          ),

                        ),

                      ],
                    ),
                  )
              ),
              Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const[
                      Icon(Icons.thumb_up,color: Colors.grey,size: 20,),
                      Text('Rs. 420',style: TextStyle(fontSize: 12,color: Colors.black),)
                    ],
                  )
              ),
            ],
          ),
        ),

      ),
        SizedBox(
          width: double.infinity,
          height: 100,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              children: [
                Expanded(
                    flex: 3,
                    child: Container(
                      height: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,

                      ),

                      child: ClipRRect(
                        borderRadius:const BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),

                        child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQp_CNfjuZFxQAptKZyB4ttFb926S9UbP2H9Q&usqp=CAU',
                          fit: BoxFit.fill,),
                      ),
                    )
                ),
                Expanded(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Expanded(
                            flex:1,
                            child: Container(
                                alignment: Alignment.centerLeft,
                                child:const Text('IceCream',style: TextStyle(fontWeight: FontWeight.bold),)
                            ),

                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  RatingBar.builder(
                                      minRating: 1,
                                      initialRating: 4.5,
                                      itemSize: 12,
                                      ignoreGestures: true,
                                      glow: false,
                                      allowHalfRating: true,
                                      itemBuilder: (context,_)=> const Icon(Icons.star,color: Colors.yellow,),
                                      onRatingUpdate: (rating){}
                                  ),
                                  const SizedBox(width: 16,),
                                  const Text("4.5",style: TextStyle(fontSize: 10,color: Colors.grey),)
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex:1,
                            child: Container(
                                alignment: Alignment.centerLeft,
                                child:const Text('by dessert experts',style: TextStyle(fontSize: 12,color: Colors.grey),)
                            ),

                          ),

                        ],
                      ),
                    )
                ),
                Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children:const [
                        Icon(Icons.thumb_up,color: Colors.grey,size: 20,),
                        Text('Rs. 420',style: TextStyle(fontSize: 12,color: Colors.black),)
                      ],
                    )
                ),
              ],
            ),
          ),

        ),


      ],
      ),
    ),

          ],
        ),
      ),

    );
  }
}
