import 'package:flutter/material.dart';

class couponsPage extends StatelessWidget {
  const couponsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 5,),
          Text("Rewards",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(

                  height: size.width*0.4,
                  width: size.width*0.4,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade300,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.attach_money_rounded,color: Colors.white,),
                              Text("100 off",style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          SizedBox(height: 35,),
                          Text('on your next payment',style: TextStyle(fontSize: 16,color: Colors.white),),
                          SizedBox(height: 18,),
                          Text('valid till 10 days from today',style: TextStyle(fontSize: 12,color: Colors.white),),


                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: size.width*0.04,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(

                  height: size.width*0.4,
                  width: size.width*0.4,
                  decoration: BoxDecoration(
                    color: Colors.green.shade300,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Icon(Icons.attach_money_rounded,color: Colors.white,),
                              Text("12% off",style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          SizedBox(height: 35,),
                          Text('on your bewakoof order',style: TextStyle(fontSize: 16,color: Colors.white),),
                          SizedBox(height: 18,),
                          Text('T&C apply',style: TextStyle(fontSize: 12,color: Colors.white),),


                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(

                  height: size.width*0.4,
                  width: size.width*0.4,
                  decoration: BoxDecoration(
                    color: Colors.red.shade300,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.attach_money_rounded,color: Colors.white,),
                              Text("5",style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          SizedBox(height: 35,),
                          Text('Cashback',style: TextStyle(fontSize: 16,color: Colors.white),),
                          SizedBox(height: 18,),
                          Text('use ******** code',style: TextStyle(fontSize: 12,color: Colors.white),),


                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: size.width*0.04,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(

                  height: size.width*0.4,
                  width: size.width*0.4,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade300,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Icon(Icons.attach_money_rounded,color: Colors.white,),
                              Text("Expired",style: TextStyle(color: Colors.red,fontSize: 26,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          SizedBox(height: 35,),
                          // Text('on your bewakoof order',style: TextStyle(fontSize: 16,color: Colors.white),),
                          // SizedBox(height: 18,),
                          // Text('T&C apply',style: TextStyle(fontSize: 12,color: Colors.white),),


                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
