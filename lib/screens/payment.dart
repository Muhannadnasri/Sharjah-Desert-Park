import 'package:epaa_app/screens/success.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

import '../theme/color.dart';
import '../widgets/global.dart';

class PaymentPage extends StatefulWidget {
  final int? totalStudent;
  final String teacherEmail;
  final int? totalTeacher;
  final int? totalDiscountTeacher;
  final int? totalAmount;
  final String schoolName;
  final String teacherNumber;
  final List<String>? studentsName;
  final List<String>? teacherName;
  final String time;
  final String date;

  @override
  State<PaymentPage> createState() => _PaymentPageState();
  const PaymentPage(
      {Key? key,
      this.totalStudent,
      required this.time,
      this.totalTeacher,
      this.totalDiscountTeacher,
      this.totalAmount,
      required this.schoolName,
      required this.teacherNumber,
      this.studentsName,
      required this.teacherEmail,
      this.teacherName,
      required this.date})
      : super(key: key);
}

class _PaymentPageState extends State<PaymentPage> {
  void _showLoading(isLoading) {
    if (isLoading) {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return WillPopScope(
              onWillPop: null,
              child: new AlertDialog(
                  content: new Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 25.0),
                    child: new CircularProgressIndicator(
                      strokeWidth: 2,
                      color: appBarColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: new Text(
                        lang == 1 ? 'Please Wait....' : 'الرجاء الإنتظار...'),
                  )
                ],
              )),
            );
          });
    } else {
      Navigator.pop(context);
    }
  }

  mailSend() async {
    // EasyLoading.showProgress(0.3, status: 'loading...');
    _showLoading(true);
    // // final Email email = Email(
    //   body:
    //       "Total Student : ${widget.totalStudent} , Student's Name: ${widget.studentsName} ",

    String username = 'sharjahdesertparkepaa@gmail.com';
    String password = 'sharjahdesertparkepaa2022';

    final smtpServer = gmail(username, password);

    // Use the SmtpServer class to configure an SMTP server:
    // final smtpServer = SmtpServer('smtp.domain.com');
    // See the named arguments of SmtpServer for further configuration
    // options.

    // Create our message.
    final message = Message()
      ..from = Address(username, 'Muhannad')
      ..recipients.add('${widget.teacherEmail}')
      ..ccRecipients.addAll(['muhannadnasri@hotmail.com'])
      ..subject = 'Sharjah Desert Park Payment Details}'
      ..text = 'This is Sharjah Desert Park Payment Details .'
      ..html =
          "<h1>Dear V ${widget.teacherName?.first.toString()}, Welcome to Sharjah Desert Park </h1> \n <h2>Your booking confirmed for this Date ${widget.date} and Time ${widget.time} </h2>\n<p>Total Student's : ${widget.studentsName} (${widget.totalStudent})</p>\n<p>Total Teacher's : ${widget.teacherName} (${widget.totalTeacher})</p> \n<p>Total Amount's : ${widget.totalAmount} AED </p>";

    try {
      final sendReport = await send(message, smtpServer);
      print('Message sent: ' + sendReport.toString());
    } on MailerException catch (e) {
      print('Message not sent.');
      for (var p in e.problems) {
        print('Problem: ${p.code}: ${p.msg}');
      }
    }
    // DONE

    // Let's send another message using a slightly different syntax:
    //
    // Addresses without a name part can be set directly.
    // For instance `..recipients.add('destination@example.com')`
    // If you want to display a name part you have to create an
    // Address object: `new Address('destination@example.com', 'Display name part')`
    // Creating and adding an Address object without a name part
    // `new Address('destination@example.com')` is equivalent to
    // adding the mail address as `String`.
    final equivalentMessage = Message()
      ..from = Address(username, 'Your name 😀')
      ..recipients.add(Address('destination@example.com'))
      ..ccRecipients
          .addAll([Address('destCc1@example.com'), 'destCc2@example.com'])
      ..bccRecipients.add('bccAddress@example.com')
      ..subject = 'Test Dart Mailer library :: 😀 :: ${DateTime.now()}'
      ..text = 'This is the plain text.\nThis is line 2 of the text part.'
      ..html =
          '<h1>Test</h1>\n<p>Hey! Here is some HTML content</p><img src="cid:myimg@3.141"/>';

    final sendReport2 = await send(equivalentMessage, smtpServer);

    // Sending multiple messages with the same connection
    //
    // Create a smtp client that will persist the connection
    var connection = PersistentConnection(smtpServer);

    // Send the first message
    await connection.send(message);
    _showLoading(false);

    // EasyLoading.dismiss();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Success(),
      ),
    );

    // send the equivalent message
    await connection.send(equivalentMessage);

    // close the connection
    await connection.close();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Container(
        color: appBarColor,
        child: SafeArea(
          bottom: true,
          child: Material(
            elevation: 1,
            color: appBarColor,
            shadowColor: Colors.black,
            // color: Color.fromARGB(255, 206, 188, 122),
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        mailSend();
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        lang == 1 ? 'Pay Online' : 'دفع اونلاين',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                  VerticalDivider(
                    color: Colors.black26,
                    thickness: 1,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        mailSend();
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        lang == 1 ? 'Pay on Site' : 'دفع في المركز',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Texture.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    child: Text('Total Student'),
                  ),
                  Container(
                    height: 40,
                    child: Text(widget.totalStudent.toString()),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.black,
              thickness: 0.5,
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    child: Text('Total Teachers'),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 40,
                        child: Text(widget.totalTeacher.toString(),
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough)),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 40,
                        child: Text(widget.totalDiscountTeacher.toString()),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.black,
              thickness: 0.5,
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    child: Text(
                      'Total Payment',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                  Container(
                    height: 40,
                    child: Text(
                      " ${widget.totalAmount.toString()} AED ",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //     SizedBox(
            //       height: size.height * 0.07,
            //       width: size.width * 0.4,
            //       child: InkWell(
            //         onTap: () {},
            //         child: Container(
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(15.0),
            //             gradient: LinearGradient(
            //               stops: const [0.4, 2],
            //               begin: Alignment.centerRight,
            //               end: Alignment.centerLeft,
            //               colors: [Color(0xFFa2e1a6), Color(0xff8fdb94)],
            //             ),
            //           ),
            //           child: Align(
            //             child: Text(
            //               'Pay Online',
            //               style: TextStyle(
            //                   fontWeight: FontWeight.bold,
            //                   fontSize: size.height * 0.02,
            //                   color: Colors.white),
            //             ),
            //           ),
            //         ),
            //       ),
            //     ),
            //     SizedBox(
            //       width: 20,
            //     ),
            //     SizedBox(
            //       height: size.height * 0.07,
            //       width: size.width * 0.4,
            //       child: InkWell(
            //         onTap: () {},
            //         child: Container(
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(15.0),
            //             gradient: LinearGradient(
            //               stops: const [0.4, 2],
            //               begin: Alignment.centerRight,
            //               end: Alignment.centerLeft,
            //               colors: [Color(0xFFa2e1a6), Color(0xff8fdb94)],
            //             ),
            //           ),
            //           child: Align(
            //             child: Text(
            //               'Pay on Site',
            //               style: TextStyle(
            //                   fontWeight: FontWeight.bold,
            //                   fontSize: size.height * 0.02,
            //                   color: Colors.white),
            //             ),
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
