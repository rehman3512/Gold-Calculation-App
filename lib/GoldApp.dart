import 'package:flutter/material.dart';

class GoldApp extends StatefulWidget {
  const GoldApp({super.key});

  @override
  State<GoldApp> createState() => _GoldAppState();
}

class _GoldAppState extends State<GoldApp> {
  TextEditingController tolapriceController = TextEditingController();
  TextEditingController tolaquantityController = TextEditingController();
  TextEditingController mashaQuantityController = TextEditingController();
  TextEditingController rattiQuantityController = TextEditingController();
  TextEditingController pointQuantityContoller = TextEditingController();

  double total=0;
  double tolap=0;
  double mashap=0;
  double rattip=0;
  double pointp=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD4AF37),
        leading: Icon(Icons.grid_goldenratio,color: Colors.white,size: 40,),
        title: Text('GOLDAPP',style: TextStyle(color: Colors.white,fontSize: 30,
          fontWeight: FontWeight.bold,letterSpacing: 2,
        ),),
      ),
      body: SingleChildScrollView(
        child: Center(child: Column(children: [
          SizedBox(height: 50,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40,vertical: 5),
            decoration: BoxDecoration(
              color: Color(0xFFD4AF37),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.white),
            ),
            child: TextFormField(
              controller: tolapriceController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.price_check,color: Colors.white,size: 20,),
                labelText: 'Enter Tola Price',
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40,vertical: 5),
            decoration: BoxDecoration(
              color: Color(0xFFD4AF37),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.white),
            ),
            child: TextFormField(
              controller: tolaquantityController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.price_check,color: Colors.white,size: 20,),
                labelText: 'Enter Tola Quantity',
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40,vertical: 5),
            decoration: BoxDecoration(
              color: Color(0xFFD4AF37),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.white),
            ),
            child: TextFormField(
              controller: mashaQuantityController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.price_check,color: Colors.white,size: 20,),
                labelText: 'Enter Gram Quantity',
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40,vertical: 5),
            decoration: BoxDecoration(
              color: Color(0xFFD4AF37),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.white),
            ),
            child: TextFormField(
              controller: rattiQuantityController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.price_check,color: Colors.white,size: 20,),
                labelText: 'Enter Ratti Quantity',
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40,vertical: 5),
            decoration: BoxDecoration(
              color: Color(0xFFD4AF37),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.white),
            ),
            child: TextFormField(
              controller: pointQuantityContoller,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.price_check,color: Colors.white,size: 20,),
                labelText: 'Enter Point Quantity',
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(onTap: (){
                double tolaprice;
                double tolaquantity;
                double mashaprice;
                double mashaquantity;
                double totalmashaprice;
                double rattiQuantity;
                double rattiprice;
                double totalrattiprice;
                double pointQuantity;
                double pointprice;
                double totalpointprice;

                tolaprice = double.parse(tolapriceController.text);
                tolaquantity = double.parse(tolaquantityController.text);
                mashaquantity = double.parse(mashaQuantityController.text);
                rattiQuantity = double.parse(rattiQuantityController.text);
                pointQuantity = double.parse(pointQuantityContoller.text);
                mashaprice = tolaprice/12;
                totalmashaprice = mashaquantity*mashaprice;
                rattiprice = tolaprice/96;
                totalrattiprice = rattiQuantity*rattiprice;
                pointprice = tolaprice/217;
                totalpointprice = pointQuantity*pointprice;

                total = (tolaprice*tolaquantity)+totalmashaprice+
                    totalrattiprice+totalpointprice;
                tolap = tolaquantity*tolaprice;
                mashap = totalmashaprice;
                rattip = totalrattiprice;
                pointp = totalpointprice;

                setState(() {

                });

              },
                child: Container(height: 45, width: 140,
                  decoration: BoxDecoration(
                    color: Color(0xFFD4Af37),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white),
                  ),
                  child: Center(child: Text('Calculate',style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  ),),
                ),),
              SizedBox(width : 10,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>GoldApp(),
                  ),);

                  setState(() {

                  });
                },
                child: Container(height: 45,width: 140,
                  decoration: BoxDecoration(
                    color: Color(0xFFD4AF37),
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text('Refresh',style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),),),
                ),
              )
            ],),
          SizedBox(height: 30,),
          Text('Total Tola Price=$tolap',style: TextStyle(fontWeight: FontWeight.w600),),
          SizedBox(height: 5,),
          Text('Total Gram Price=$mashap',style: TextStyle(fontWeight: FontWeight.w600),),
          SizedBox(height: 5,),
          Text('Total Ratti Price=$rattip',style: TextStyle(fontWeight: FontWeight.w600),),
          SizedBox(height: 5,),
          Text('Total Point Price=$pointp',style: TextStyle(fontWeight: FontWeight.w600),),
          SizedBox(height: 20,),
          Text('Total Price=$total',style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 25,color: Color(0xFFD4AF37),),
          ),
        ],),),
      ),
    );
  }
}