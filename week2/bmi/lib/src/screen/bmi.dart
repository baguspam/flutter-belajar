import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BmiScreen extends StatefulWidget {
  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  int myAge = 0, myWeight=0, myHeight=0;
  double result;
  bool gender=false;
  String msg;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Kalkulator'),
          backgroundColor: Colors.grey[800],
    ),
    body: SingleChildScrollView(
      child: Container(
        color: Colors.grey[200],
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
//         Pilih kelamin
            Card(
              elevation: 2.0,
              margin: EdgeInsets.fromLTRB(0,5,0,10),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: SizedBox.fromSize(
                size: Size(MediaQuery.of(context).size.width, 140),
                child: Container(
                  padding: EdgeInsets.fromLTRB(20.0, 12.0, 20.0, 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: Text(
                          'Jenis Kelamin',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.grey[800],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    width:55,
                                    height: 55,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          colorFilter: ColorFilter.mode(Colors.black.withOpacity(
                                              gender? 0.5 : 1.0
                                          ), BlendMode.dstATop),
                                          image: AssetImage('assets/male.jpg'),
                                          fit: BoxFit.cover
                                      ),
                                    )
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                    child:  Text(
                                      'Pria',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black.withOpacity(gender? 0.5 : 1.0)
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              onTap:(){
                                print("male");
                                setState(() {
                                  gender = false;
                                });
                              }
                          ),
                          GestureDetector(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                      margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                                      width:60,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            colorFilter: ColorFilter.mode(Colors.black.withOpacity(gender? 1.0 : 0.5), BlendMode.dstATop),
                                            image: AssetImage('assets/female.jpg'),
                                            fit: BoxFit.cover
                                        ),
                                      )
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(50, 5, 0, 0),
                                    child:  Text(
                                      'Wanita',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black.withOpacity(gender? 1.0 : 0.5)
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              onTap:(){
                                print("female");
                                setState(() {
                                  gender = true;
                                });
                              }
                          ),
                        ],
                      )
                     ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
//              Umur
                Card(
                  elevation: 2.0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: SizedBox.fromSize(
                    size: Size(160, 170),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            'Usia(Tahun)',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: Colors.grey[800],
                            ),
                          ),
                          Text(
                            myAge.toString(),
                            style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.w900,
                              color: Colors.grey[900],
                            ),
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[

                                GestureDetector(
                                  child: CircleAvatar(
                                    radius: 20.0,
                                    backgroundColor: Theme.of(context).buttonColor,
                                    child: IconButton(
                                      icon: Icon(Icons.remove,
                                          color: Theme.of(context).iconTheme.color),
                                      onPressed: () {
                                        setState(() {
                                          if (myAge > 1) {
                                            myAge--;
                                          }
                                        });
                                      },
                                      color: Colors.deepPurple,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  child: CircleAvatar(
                                    radius: 20.0,
                                    backgroundColor: Theme.of(context).buttonColor,
                                    child: IconButton(
                                      icon: Icon(Icons.add,
                                          color: Theme.of(context).iconTheme.color),
                                      onPressed: () {
                                        setState(() {
                                          myAge++;
                                        });
                                      },
                                      color: Colors.deepPurple,
                                    ),
                                  ),
                                )
                              ])
                        ],
                      ),
                    ),
                  ),
                ),
//                Berat Badan
                Card(
                  elevation: 2.0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: SizedBox.fromSize(
                    size: Size(160, 170),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            'Berat Badan(Kg)',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: Colors.grey[800],
                            ),
                          ),
                          Text(
                            myWeight.toString(),
                            style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.w900,
                              color: Colors.grey[900],
                            ),
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                GestureDetector(
                                  child: CircleAvatar(
                                    radius: 20.0,
                                    backgroundColor: Theme.of(context).buttonColor,
                                    child: IconButton(
                                      icon: Icon(Icons.remove,
                                          color: Theme.of(context).iconTheme.color),
                                      onPressed: () {
                                        setState(() {
                                          if (myWeight > 1) {
                                            myWeight--;
                                          }
                                        });
                                      },
                                      color: Colors.deepPurple,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  child: CircleAvatar(
                                    radius: 20.0,
                                    backgroundColor: Theme.of(context).buttonColor,
                                    child: IconButton(
                                      icon: Icon(Icons.add,
                                          color: Theme.of(context).iconTheme.color),
                                      onPressed: () {
                                        setState(() {
                                          myWeight++;
                                        });
                                      },
                                      color: Colors.deepPurple,
                                    ),
                                  ),
                                )
                              ])
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
//            Tinggi
            Card(
              elevation: 2.0,
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: SizedBox.fromSize(
                size: Size(MediaQuery.of(context).size.width, 200),
                child: Container(
                  padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        'Tinggi Badan(Cm)',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.grey[800],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            myHeight.toString(),
                            style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.w900,
                              color: Colors.grey[900],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(5, 15, 0, 0),
                            child: Text(
                              "cm",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w900,
                                color: Colors.grey[500],
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                        child: Slider(
                          value: myHeight.toDouble(),
                          min: 0,
                          max: 210,
                          onChanged: (double value) {
                            setState(() {
                              myHeight = value.round();
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
              child: RaisedButton(
                padding: EdgeInsets.fromLTRB(0, 13, 0, 13),
                color: Colors.grey[800],
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.redeem),
                    Text("  "),
                    Text("Hitung", style: TextStyle(fontSize: 18),),
                  ],
                ),
                onPressed: (){
                  if(myAge>0 && myWeight>0 && myHeight>0){
                    result = (myWeight / ((myHeight/100)*(myHeight/100))).toDouble();

                    if(result<=18.5){
                      msg = "Anda Kekurangan Berat Badan";
                    }else if(result>18.5){
                      msg = "Berat Badan Anda Normal(Ideal)";
                    }else if(result>=25.0){
                      msg = "Anda Kelebihan Berat Badan";
                    }else if(result>=30.0){
                      msg = "Kegemukan(Obesitas)";
                    }else{
                      msg="";
                    }

                    showDialog(
                        context: context,
                        builder: (_) => AssetGiffyDialog(
                          image: Image.asset(
                            'assets/men_wearing_jacket.gif',
                            fit: BoxFit.cover,
                          ),
                          entryAnimation: EntryAnimation.TOP,
                          title: Text(
                            'Hasil Perhitungan',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize:17.0, fontWeight: FontWeight.w600),
                          ),
                          description: Text(
                            'Index Masa Tubuh Anda: ${result.toStringAsFixed(2)} \n\n${msg.toString()}',
                            textAlign: TextAlign.center,
                          ),
                          onOkButtonPressed: () {},
                        ));
                  }else{
                    Fluttertoast.showToast(
                        msg: "Usia atau Berat Badan atau Tinggi Badan tidak boleh kosong, Silahkan cek kembali !!!",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );
                  }
                },
              ),
            )
          ],
        )
      ),
    ));
  }
}
