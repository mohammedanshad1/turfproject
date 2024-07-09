import 'package:date_format_field/date_format_field.dart';
import 'package:flutter/material.dart';
import 'package:turfproject/turfUis/payment/booked.dart';

class bookingpage1 extends StatefulWidget {
  @override
  State<bookingpage1> createState() => _bookingpage1State();
}

class _bookingpage1State extends State<bookingpage1> {
  TimeOfDay? selectedTime;
  DateTime? _date;

  String display() {
    if (_date == null) {
      return 'NONE';
    } else {
      return 'year:${_date!.year}\nmonth:${_date!.month}\nday:${_date!.day}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 320, bottom: 100),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage("assets/icons/2_2.jpg"),
                  fit: BoxFit.fitWidth,
                ),
              ),
              height: 200,
              width: 400,
            ),
          ),
          ListView(
            children: [
              SizedBox(height: 100),
              Container(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child: Text(''),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: DateFormatField(
                        type: DateFormatType.type4,
                        addCalendar: true,
                        decoration: const InputDecoration(
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          // border: InputBorder.none,
                          label: Text("Date"),
                        ),
                        onComplete: (date) {
                          setState(() {
                            _date = date;
                          });
                        },
                      ),
                    ),
                    SizedBox(height: 0),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: GestureDetector(
                          onTap: () async {
                            final TimeOfDay? picked = await showTimePicker(
                              context: context,
                              initialTime: selectedTime ?? TimeOfDay.now(),
                            );
                            if (picked != null && picked != selectedTime) {
                              setState(() {
                                selectedTime = picked;
                              });
                            }
                          },
                          child: AbsorbPointer(
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: selectedTime != null
                                    ? selectedTime!.format(context)
                                    : 'Select Time',
                                suffixIcon: Icon(Icons.access_time),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Hours",
                            suffixIcon: Icon(
                              Icons.hourglass_bottom,
                              color: Colors.black,
                            ),
                          ),
                          onChanged: (text) {
                            // Handle changes to the text field here
                          },
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          SizedBox(height: 90),
                          ListTile(
                            title: Center(
                              child: Text(
                                "Grand Total",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            subtitle: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  "Rs:1400",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: SizedBox(
                              height: 70,
                              width: 300,
                              child: Container(
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.green,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => BookingPage(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    "Proceed",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
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
        ],
      ),
    );
  }
}
