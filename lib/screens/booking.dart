import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:epaa_app/screens/payment.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

import '../theme/color.dart';
import '../widgets/Chipss.dart';
import '../widgets/button_widget.dart';
import '../widgets/global.dart';

class BookingPage extends StatefulWidget {
  final String title;
  @override
  State<BookingPage> createState() => _BookingPageState();
  const BookingPage({Key? key, required this.title}) : super(key: key);
}

class _BookingPageState extends State<BookingPage> {
  final GlobalKey<ChipsInputState> _chipKey = GlobalKey();
  final GlobalKey<ChipsInputState> _chipKeyPhone = GlobalKey();
  final GlobalKey<ChipsInputState> _chipTeacherKey = GlobalKey();

  final GlobalKey<FormState> _registerEmailKey = GlobalKey();
  final format = DateFormat("yyyy-MM-dd");
  String schoolName = '';
  String teacherNumber = '';

  String teacherEmail = '';

  int? totalStudent = 0;
  int? totalTeacher = 0;
  int? totalAmount = 0;
  int? totalDiscountTeacher = 0;
  List<String>? studentsName;
  List<String>? teacherName;
  DateFormat selectedTime = DateFormat("HH:mm");
  DateTime selectedDate = DateTime.now();
  final dateController = TextEditingController();
  final timeController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        dateController.text = selectedDate.month.toString() +
            " - " +
            selectedDate.day.toString() +
            " - " +
            selectedDate.year.toString();
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,

      // initialDate: selectedDate,
      // firstDate: DateTime(2015, 8),
      // lastDate: DateTime(2101),
      initialTime: TimeOfDay.now(),
    );

    if (pickedTime != null && pickedTime != selectedTime) {
      setState(() {
        // selectedTime = pickedTime as DateFormat;
        timeController.text = pickedTime.format(context);
      });
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        foregroundColor: Colors.black,
        title: Image.asset(
          'assets/images/logo-full-en-white3.png',
          height: 40,
          width: 200,
        ),
        elevation: 0.0,
      ),
      // bottomSheet: Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.only(bottom: 20.0),
      //       child: ButtonWidget(
      //         text: 'Pay',
      //         backColor: [Color(0xFFa2e1a6), Color(0xff8fdb94)],
      //         textColor: const [
      //           Colors.white,
      //           Colors.white,
      //         ],
      //         onPressed: () {
      //           setState(() {
      //             totalStudent = _chipKey.currentState?.getTags().length;
      //             totalTeacher = _chipTeacherKey.currentState?.getTags().length;

      //             if (totalStudent! >= 20) {
      //               totalDiscountTeacher = totalTeacher! - 1;
      //               totalAmount = totalStudent! * 2 + totalDiscountTeacher! * 5;
      //             } else {
      //               totalAmount = totalStudent! * 2 + totalTeacher! * 5;
      //             }
      //             Navigator.push(
      //               context,
      //               MaterialPageRoute(
      //                 builder: (context) => PaymentPage(
      //                   totalStudent: totalStudent,
      //                   totalTeacher: totalTeacher,
      //                   totalDiscountTeacher: totalDiscountTeacher,
      //                   totalAmount: totalAmount,
      //                 ),
      //               ),
      //             );
      //           });
      //         },
      //       ),
      //     ),
      //   ],
      // ),

      bottomNavigationBar: SafeArea(
        child: Container(
          height: 46,
          margin: EdgeInsets.symmetric(vertical: 24, horizontal: 22),
          child: RaisedButton(
            color: appBarColor,
            padding: EdgeInsets.all(15.0),
            elevation: 5,
            textColor: Colors.white,
            child: Text(lang == 1 ? 'Pay' : 'ادقغ'),
            onPressed: () {
              _registerEmailKey.currentState?.save();
              print(teacherEmail);
              setState(() {
                totalStudent = _chipKey.currentState?.getTags().length;

                studentsName = _chipKey.currentState?.getTags();

                totalTeacher = _chipTeacherKey.currentState?.getTags().length;
                teacherName = _chipTeacherKey.currentState?.getTags();
                if (totalStudent! >= 20) {
                  totalDiscountTeacher = totalTeacher! - 1;
                  totalAmount = totalStudent! * 2 + totalDiscountTeacher! * 5;
                } else {
                  totalDiscountTeacher = totalTeacher;
                  totalAmount = totalStudent! * 2 + totalTeacher! * 5;
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaymentPage(
                      time: timeController.text,
                      date: selectedDate.month.toString() +
                          " - " +
                          selectedDate.day.toString() +
                          " - " +
                          selectedDate.year.toString(),
                      totalStudent: totalStudent,
                      schoolName: schoolName,
                      teacherNumber: teacherNumber,
                      studentsName: studentsName,
                      teacherEmail: teacherEmail,
                      teacherName: teacherName,
                      totalTeacher: totalTeacher,
                      totalDiscountTeacher: totalDiscountTeacher,
                      totalAmount: totalAmount,
                    ),
                  ),
                );
              });
            },
          ),
        ),
      ),
      // bottomNavigationBar: Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.only(bottom: 20.0),
      //       child: ButtonWidget(
      //         text: 'Pay',
      //         backColor: [Color(0xFFa2e1a6), Color(0xff8fdb94)],
      //         textColor: const [
      //           Colors.white,
      //           Colors.white,
      //         ],
      //         onPressed: () {
      //           _registerEmailKey.currentState?.save();
      //           print(teacherEmail);
      //           setState(() {
      //             totalStudent = _chipKey.currentState?.getTags().length;

      //             studentsName = _chipKey.currentState?.getTags();

      //             totalTeacher = _chipTeacherKey.currentState?.getTags().length;
      //             teacherName = _chipTeacherKey.currentState?.getTags();
      //             if (totalStudent! >= 20) {
      //               totalDiscountTeacher = totalTeacher! - 1;
      //               totalAmount = totalStudent! * 2 + totalDiscountTeacher! * 5;
      //             } else {
      //               totalDiscountTeacher = totalTeacher;
      //               totalAmount = totalStudent! * 2 + totalTeacher! * 5;
      //             }
      //             Navigator.push(
      //               context,
      //               MaterialPageRoute(
      //                 builder: (context) => PaymentPage(
      //                   time: timeController.text,
      //                   date: selectedDate.month.toString() +
      //                       " - " +
      //                       selectedDate.day.toString() +
      //                       " - " +
      //                       selectedDate.year.toString(),
      //                   totalStudent: totalStudent,
      //                   schoolName: schoolName,
      //                   teacherNumber: teacherNumber,
      //                   studentsName: studentsName,
      //                   teacherEmail: teacherEmail,
      //                   teacherName: teacherName,
      //                   totalTeacher: totalTeacher,
      //                   totalDiscountTeacher: totalDiscountTeacher,
      //                   totalAmount: totalAmount,
      //                 ),
      //               ),
      //             );
      //           });
      //         },
      //       ),
      //     ),
      //   ],
      // ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            FocusManager.instance.primaryFocus?.unfocus();
          });
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/Texture.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    child: Text(
                      // '',
                      widget.title,
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ],
              ),
              buildTextField(
                lang == 1 ? "School Name" : "اسم المدرسة",
                Icons.school,
                size,
                (value) {
                  setState(() {
                    schoolName = value;
                  });
                },
              ),
              buildTextFieldTeacher(
                lang == 1 ? "Teacher's Name" : "اسم المدرس",
                size,
                (value) {
                  setState(() {});
                },
              ),
              buildTextField(
                lang == 1 ? "Teacher Number" : "رقم المدرس",
                Icons.phone,
                size,
                (value) {
                  setState(() {
                    teacherNumber = value;
                  });
                },
              ),
              buildTextFieldTeacherEmail(
                lang == 1 ? "Teacher Email" : "البريد الالكتروني المدرس",
                Icons.email,
                size,
                (value) {
                  setState(() {
                    teacherEmail = value;
                  });
                },
              ),
              buildTextFieldStudent(
                "Student's Name",
                size,
                (value) {
                  setState(() {});
                },
              ),
              buildTextFieldStudentPhone(
                "Student's Number",
                size,
                (value) {
                  setState(() {});
                },
              ),
              buildTextFieldDate(
                lang == 1 ? "Pick Date" : "اختر التاريخ",
                Icons.date_range,
                size,
                (value) {
                  setState(() {
                    teacherNumber = value;
                  });
                },
              ),
              buildTextFieldTime(
                lang == 1 ? "Pick Time" : "اختر الوقت",
                Icons.timer,
                size,
                (value) {
                  setState(() {
                    teacherNumber = value;
                  });
                },
              ),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool pwVisible = false;

  Widget buildTextFieldTeacher(
    String hintText,
    size,
    onSaved,
  ) {
    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.025),
      child: ChipsInput(
        key: _chipTeacherKey,
        keyboardAppearance: Brightness.dark,
        textCapitalization: TextCapitalization.words,
        inputType: TextInputType.name,
        maxTagSize: 20,
        width: MediaQuery.of(context).size.width,
        maxChips: 3,
        separator: '\n',
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.all(5),
          hintText: "Teacher's Name",
        ),
        initialTags: const [],
        chipTextValidator: (String value) {
          value.contains('!');
          return -1;
        },
        countMaxTextStyle: TextStyle(fontSize: 10, color: Colors.red),
        countTextStyle: TextStyle(fontSize: 10),
        chipBuilder: (context, state, String tag) {
          return InputChip(
            labelPadding: const EdgeInsets.only(left: 5.0, right: 3),
            backgroundColor: Colors.grey[400],
            shape: const StadiumBorder(
                side: BorderSide(
                    width: 1.8, color: Color.fromRGBO(228, 230, 235, 1))),
            shadowColor: Colors.grey,
            key: ObjectKey(tag),
            label: Row(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 18,
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  tag.toString(),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            onDeleted: () => state.deleteChip(tag),
            labelStyle: TextStyle(color: Colors.white),
            deleteIconColor: Colors.white,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          );
        },
      ),
    );
  }

  Widget buildTextFieldTeacherEmail(
    String hintText,
    IconData icon,
    size,
    onSaved,
  ) {
    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.025),
      child: Container(
        width: size.width * 0.9,
        height: size.height * 0.06,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Form(
          key: _registerEmailKey,
          child: TextFormField(
            inputFormatters: [
              FilteringTextInputFormatter.deny(new RegExp(r"\s\b|\b\s"))
            ],
            style: TextStyle(color: Colors.black),
            onSaved: onSaved,
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black45),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black45),
              ),
              errorStyle: const TextStyle(height: 0),
              hintStyle: const TextStyle(
                color: Color(0xffADA4A5),
              ),
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(
                top: size.height * 0.02,
              ),
              hintText: hintText,
              prefixIcon: Padding(
                padding: EdgeInsets.only(
                  top: size.height * 0.005,
                ),
                child: Icon(
                  icon,
                  color: const Color(0xff7B6F72),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTextField(
    String hintText,
    IconData icon,
    size,
    onSaved,
  ) {
    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.025),
      child: Container(
        width: size.width * 0.9,
        height: size.height * 0.06,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Form(
          // key: _registerKey,
          child: TextFormField(
            style: TextStyle(color: Colors.black),
            onSaved: onSaved,
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black45),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black45),
              ),
              errorStyle: const TextStyle(height: 0),
              hintStyle: const TextStyle(
                color: Color(0xffADA4A5),
              ),
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(
                top: size.height * 0.02,
              ),
              hintText: hintText,
              prefixIcon: Padding(
                padding: EdgeInsets.only(
                  top: size.height * 0.005,
                ),
                child: Icon(
                  icon,
                  color: const Color(0xff7B6F72),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTextFieldDate(
    String hintText,
    IconData icon,
    size,
    onSaved,
  ) {
    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.025),
      child: Container(
        width: size.width * 0.9,
        height: size.height * 0.06,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: GestureDetector(
          onTap: () => _selectDate(context),
          child: Form(
            // key: _registerKey,
            child: TextFormField(
              controller: dateController,
              enabled: false,
              style: TextStyle(color: Colors.black),
              onSaved: onSaved,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black45),
                ),
                disabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black45),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black45),
                ),
                errorStyle: const TextStyle(height: 0),
                hintStyle: const TextStyle(
                  color: Color(0xffADA4A5),
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(
                  top: size.height * 0.02,
                ),
                hintText: hintText,
                prefixIcon: Padding(
                  padding: EdgeInsets.only(
                    top: size.height * 0.005,
                  ),
                  child: Icon(
                    icon,
                    color: const Color(0xff7B6F72),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTextFieldTime(
    String hintText,
    IconData icon,
    size,
    onSaved,
  ) {
    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.025),
      child: Container(
        width: size.width * 0.9,
        height: size.height * 0.06,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: GestureDetector(
          onTap: () => _selectTime(context),
          child: Form(
            // key: _registerKey,
            child: TextFormField(
              controller: timeController,
              enabled: false,
              style: TextStyle(color: Colors.black),
              onSaved: onSaved,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black45),
                ),
                disabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black45),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black45),
                ),
                errorStyle: const TextStyle(height: 0),
                hintStyle: const TextStyle(
                  color: Color(0xffADA4A5),
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(
                  top: size.height * 0.02,
                ),
                hintText: hintText,
                prefixIcon: Padding(
                  padding: EdgeInsets.only(
                    top: size.height * 0.005,
                  ),
                  child: Icon(
                    icon,
                    color: const Color(0xff7B6F72),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTextFieldStudent(
    String hintText,
    size,
    onSaved,
  ) {
    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.025),
      child: ChipsInput(
        key: _chipKey,
        keyboardAppearance: Brightness.dark,
        textCapitalization: TextCapitalization.words,
        inputType: TextInputType.name,
        maxTagSize: 20,
        width: MediaQuery.of(context).size.width,
        enabled: true,
        maxChips: 50,
        separator: '\n',
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(5),
          hintText: lang == 1 ? "Student's Name" : "اسماء الطلاب",
        ),
        initialTags: const [],
        chipTextValidator: (String value) {
          value.contains('!');
          return -1;
        },
        countMaxTextStyle: TextStyle(fontSize: 10, color: Colors.red),
        countTextStyle: TextStyle(fontSize: 10),
        chipBuilder: (context, state, String tag) {
          return InputChip(
            labelPadding: const EdgeInsets.only(left: 5.0, right: 3),
            backgroundColor: Colors.grey[400],
            shape: const StadiumBorder(
                side: BorderSide(
                    width: 1.8, color: Color.fromRGBO(228, 230, 235, 1))),
            shadowColor: Colors.grey,
            key: ObjectKey(tag),
            label: Row(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 18,
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  tag.toString(),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            onDeleted: () => state.deleteChip(tag),
            labelStyle: TextStyle(color: Colors.white),
            deleteIconColor: Colors.white,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          );
        },
      ),
    );
  }

  Widget buildTextFieldStudentPhone(
    String hintText,
    // IconData icon,
    // bool password,
    size,
    onSaved,
  ) {
    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.025),
      child: ChipsInput(
        key: _chipKeyPhone,
        keyboardAppearance: Brightness.dark,
        textCapitalization: TextCapitalization.words,
        inputType: TextInputType.name,
        maxTagSize: 20,
        width: MediaQuery.of(context).size.width,
        enabled: true,
        maxChips: 50,
        separator: '\n',
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(5),
          hintText: lang == 1 ? "Student's Number" : "ارقام الطلاب",
        ),
        initialTags: const [],
        chipTextValidator: (String value) {
          value.contains('!');
          return -1;
        },
        countMaxTextStyle: TextStyle(fontSize: 10, color: Colors.red),
        countTextStyle: TextStyle(fontSize: 10),
        chipBuilder: (context, state, String tag) {
          return InputChip(
            labelPadding: const EdgeInsets.only(left: 5.0, right: 3),
            backgroundColor: Colors.grey[400],
            shape: const StadiumBorder(
                side: BorderSide(
                    width: 1.8, color: Color.fromRGBO(228, 230, 235, 1))),
            shadowColor: Colors.grey,
            key: ObjectKey(tag),
            label: Row(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 18,
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  tag.toString(),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            onDeleted: () => state.deleteChip(tag),
            labelStyle: TextStyle(color: Colors.white),
            deleteIconColor: Colors.white,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          );
        },
      ),
    );
  }
}
