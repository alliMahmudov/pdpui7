import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String id = "home_page";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF018197),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           const SizedBox(
              width: 100,
              child: Image(
                image: AssetImage("assets/images/img.png"),
              ),
            ),
            Container(
              child: Row(
                children: [
                  IconButton(onPressed: (){},
                      icon: const Icon(Icons.mic, color: Colors.white),
                  ),
                  IconButton(onPressed: (){},
                    icon: const Icon(Icons.shopping_cart, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.grey[300],
        child: Column(
          children: [

            // #search
            Container(
              padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
              color: const Color(0xFF018197),
              child: Container(
                height: 50,
                padding: const EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Row(
                  children: const[
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "What you are looking for?",
                          border: InputBorder.none,
                          icon: Icon(Icons.search, color: Color(0xFF018197),)
                        ),
                      ),),
                    Icon(Icons.camera_alt, color: Color(0xFF018197),)
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [

                  // #location
                  Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    color: Colors.blueGrey,
                    height: 45,
                    child: Row(
                      children: const [
                        Icon(Icons.location_on, color: Colors.white),
                        SizedBox(width: 5,),
                        Text("Deliver to Korea, Republic of", style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),

                  // #advert
                  SizedBox(
                    height: 140,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.white,
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(topRight: Radius.circular(70),bottomRight: Radius.circular(70)),
                                image: DecorationImage(
                                  image: AssetImage("assets/images/img_1.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          width: 180,
                          color: Colors.white,
                          child: const Center(
                            child: Text("We ship 45million products",style: TextStyle(fontSize: 16),),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8,),

                  // #sign in
                  Container(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    height: 160,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Sign in for the best experience", style: TextStyle(color: Colors.black, fontSize: 18),),
                        const SizedBox(height: 15,),
                        Container(
                          width: double.infinity,
                          height: 50,
                          color: Colors.orange,
                          child: const Center(
                            child: Text("Sign in", style: TextStyle(fontSize: 18),),
                          ),

                        ),
                        const SizedBox(height: 15,),
                        const Text("Create an account", style: TextStyle(color: Colors.blueAccent, fontSize: 18),)
                      ],
                    ),
                  ),
                  const SizedBox(height: 8,),

                  // #deal
                  Container(
                    padding: const EdgeInsets.all(16),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Deal of the day", style: TextStyle(fontSize: 22),),
                        SizedBox(height: 16,),
                        Image(
                          width: double.infinity,
                            image: AssetImage("assets/images/img_9.png"),
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 16,),
                        Text("Up to 31% off APC UPS Battery Back", style: TextStyle(fontSize: 17),),
                        SizedBox(height: 6,),
                        Text("\$10.99 - \$79.9", style: TextStyle(fontSize: 17),),
                      ],
                    ),

                  ),
                  const SizedBox(height: 8,),

                  // #best
                  Container(
                    padding: const EdgeInsets.all(16),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Best sellers in Electronics", style: TextStyle(color: Colors.black, fontSize: 22),),
                        const SizedBox(height: 16,),
                        Container(
                          height: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              Expanded(
                                  child: Container(
                                    child: Column(
                                      children: const [
                                        Expanded(
                                            child: Image(
                                              image: AssetImage("assets/images/img_9.png"),
                                              fit: BoxFit.cover,
                                            ),
                                        ),
                                        SizedBox(height: 5,),
                                        Expanded(
                                          child: Image(
                                            image: AssetImage("assets/images/img_8.png"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                              ),
                              const SizedBox(width: 5,),
                              Expanded(
                                child: Container(
                                  child: Column(
                                    children: const [
                                      Expanded(
                                        child: Image(
                                          image: AssetImage("assets/images/img_7.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Expanded(
                                        child: Image(
                                          image: AssetImage("assets/images/img_6.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),

                  // #TOP
                  Container(
                    padding: const EdgeInsets.all(16),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Top products in Camera", style: TextStyle(color: Colors.black, fontSize: 22),),
                        const SizedBox(height: 16,),
                        Container(
                          height: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [
                              const Expanded(
                                child: Image(
                                  width: double.infinity,
                                  image: AssetImage("assets/images/img_9.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: Row(
                                    children: const [
                                      Expanded(
                                        child: Image(
                                          image: AssetImage("assets/images/img_5.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      SizedBox(width: 5,),
                                      Expanded(
                                        child: Image(
                                          image: AssetImage("assets/images/img_4.png"),
                                          fit: BoxFit.cover,
                                        ),
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
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
