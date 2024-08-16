import 'package:flutter/material.dart';

class historyPage extends StatelessWidget {
  const historyPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 5,),
          Text("Payment History",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(

              // height: size.height*0.2,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        // Icon(Icons.attach_money_rounded,color: Colors.white,),
                        Text("₹ 1450",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Text('24-02-2024',style: TextStyle(fontSize: 12,color: Colors.white),),
                    SizedBox(height: 2,),
                    Text('Payment Successful',style: TextStyle(fontSize: 12,color: Colors.white),),


                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(

              // height: size.height*0.2,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        // Icon(Icons.attach_money_rounded,color: Colors.white,),
                        Text("₹ 100",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Text('21-12-2023',style: TextStyle(fontSize: 12,color: Colors.white),),
                    SizedBox(height: 2,),
                    Text('Payment Successful',style: TextStyle(fontSize: 12,color: Colors.white),),


                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(

              // height: size.height*0.2,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        // Icon(Icons.attach_money_rounded,color: Colors.white,),
                        Text("₹ 5060",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Text('21-11-2023',style: TextStyle(fontSize: 12,color: Colors.white),),
                    SizedBox(height: 2,),
                    Text('Payment Successful',style: TextStyle(fontSize: 12,color: Colors.white),),


                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
