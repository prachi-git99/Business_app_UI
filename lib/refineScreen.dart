import 'package:blackcoffer/constants/colors.dart';
import 'package:blackcoffer/constants/colors.dart';
import 'package:blackcoffer/constants/ourButtons.dart';
import 'package:blackcoffer/home/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RefineScreen extends StatefulWidget {
  const RefineScreen({Key? key}) : super(key: key);

  @override
  State<RefineScreen> createState() => _RefineScreenState();
}

class _RefineScreenState extends State<RefineScreen> {
  String dropdownvalue = 'Available | Hey Let Us Connect';

  var items = [
    'Available | Hey Let Us Connect',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  double _value = 20;

  bool _pressed =false;

  bool _saved=false;
  List<bool> _selections = List.generate(3, (_)=>false );

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: darkBlue,
        leading: GestureDetector(
          onTap: (){
            Get.to(()=>Home());
          },
          child: Icon(Icons.arrow_back_ios,size: 20,)
        ),
        title: Text(
          "Refine",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 20
          ),
        ),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        // color: Colors.deepOrangeAccent,
        margin: EdgeInsets.only(left: 20,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Text(
              "Select Your Availability",
              style: TextStyle(
                  color: darkBlue,
                  fontWeight: FontWeight.w500,
                  fontSize: 17
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(
              height:50,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Available | Hey Let Us Connect',
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: darkBlue,
                      width: 2.0,
                    ),
                  ),

                  suffixIcon: DropdownButtonFormField(
                            value: dropdownvalue,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(left: 15),
                            ),
                            icon: const Icon(Icons.arrow_drop_down,color: darkBlue,size:30,),
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items,style: TextStyle(color: darkBlue,fontSize: 16),),
                              );
                            }).toList(),
                            // After selecting the desired option,it will
                            // change button value to selected value
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownvalue = newValue!;
                              });
                            },
                          ),
                  ),
                ),
            ),
            SizedBox(height: 15,),
            Text(
              "Add Your Status",
              style: TextStyle(
                  color: darkBlue,
                  fontWeight: FontWeight.w500,
                  fontSize: 17
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              minLines: 2,
              maxLines: 6,
              maxLength: 250,
              style: TextStyle(color: darkBlue),
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                  hintText: 'Enter A Message Here',
                  hintStyle: TextStyle(
                      color: Colors.grey
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: darkBlue,
                    width: 2.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: darkBlue,
                    width: 2.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Text(
              "Select Hyper local Distance",
              style: TextStyle(
                  color: darkBlue,
                  fontWeight: FontWeight.w500,
                  fontSize: 15
              ),
            ),
            SizedBox(height: 15,),
            Container(
              width: double.maxFinite,
              child: CupertinoSlider(
                value: _value,
                min: 0.0,
                max: 100.0,
                activeColor: darkBlue,
                thumbColor: darkBlue,
                onChanged: (value) {
                  setState(() {
                    _value = value;
                  });

                },
              ),
            ),
            SizedBox(height: 20,),
            Text(
              "Select Purpose",
              style: TextStyle(
                  color: darkBlue,
                  fontWeight: FontWeight.w500,
                  fontSize: 15
              ),
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ChoiceChip(
                  label: Text('Coffee',style: TextStyle(color: _pressed ? white : darkBlue),),
                  selected:_pressed,
                  selectedColor: darkBlue,
                  side: BorderSide(color: darkBlue),
                  onSelected: (bool value) {
                    setState(() {
                      _pressed = !_pressed;
                    });
                  },
                ),
                ChoiceChip(
                  label: Text('Business',style: TextStyle(color: _pressed ? white : darkBlue),),
                  selected:_pressed,
                  selectedColor: darkBlue,
                  side: BorderSide(color: darkBlue),
                  onSelected: (bool value) {
                    setState(() {
                      _pressed = !_pressed;
                    });
                  },
                ),
                ChoiceChip(
                  label: Text('Hobbies',style: TextStyle(color: _pressed ? white : darkBlue),),
                  selected:_pressed,
                  selectedColor: darkBlue,
                  side: BorderSide(color: darkBlue),
                  onSelected: (bool value) {
                    setState(() {
                      _pressed = !_pressed;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ChoiceChip(
                  label: Text('Friendship',style: TextStyle(color: _pressed ? white : darkBlue),),
                  selected:_pressed,
                  selectedColor: darkBlue,
                  side: BorderSide(color: darkBlue),
                  onSelected: (bool value) {
                    setState(() {
                      _pressed = !_pressed;
                    });
                  },
                ),
                ChoiceChip(
                  label: Text('Movies',style: TextStyle(color: _pressed ? white : darkBlue),),
                  selected:_pressed,
                  selectedColor: darkBlue,
                  side: BorderSide(color: darkBlue),
                  onSelected: (bool value) {
                    setState(() {
                      _pressed = !_pressed;
                    });
                  },
                ),
                ChoiceChip(
                  label: Text('Dinning',style: TextStyle(color: _pressed ? white : darkBlue),),
                  selected:_pressed,
                  selectedColor: darkBlue,
                  side: BorderSide(color: darkBlue),
                  onSelected: (bool value) {
                    setState(() {
                      _pressed = !_pressed;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                SizedBox(width: 15,),
                ChoiceChip(
                  label: Text('Dating',style: TextStyle(color: _pressed ? white : darkBlue),),
                  selected:_pressed,
                  selectedColor: darkBlue,
                  side: BorderSide(color: darkBlue),
                  onSelected: (bool value) {
                    setState(() {
                      _pressed = !_pressed;
                    });
                  },
                ),
                SizedBox(width: 10,),
                ChoiceChip(
                  label: Text('Matrimony',style: TextStyle(color: _pressed ? white : darkBlue),),
                  selected:_pressed,
                  selectedColor: darkBlue,
                  side: BorderSide(color: darkBlue),
                  onSelected: (bool value) {
                    setState(() {
                      _pressed = !_pressed;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height:20,),
            Center(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _saved = !_saved;
                  });
                },
                child: Container(
                  width: size.width/2,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: _saved? darkBlue : white,
                    border: Border.all(color: darkBlue,width: 2)
                  ),
                  child: Center(child: Text("Save & Explore",style: TextStyle(color: _saved ? white : darkBlue),)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
