import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../theme/color.dart';
import '../widgets/text-field-input.dart';

class BookingPage extends StatefulWidget {
  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  TextEditingController _controllerStudent = TextEditingController();
  TextEditingController _controllerTeacher = TextEditingController();
  List<Widget> _studentList = [];
  List<Widget> _teacherList = [];

  void _addStudentList() {
    setState(() {
      _studentList.add(buildStudent());
    });
  }

  void _removeStudentList() {
    setState(() {
      _studentList.removeLast();
    });
  }

  void _addTeacherList() {
    setState(() {
      _teacherList.add(buildTeacher());
    });
  }

  void _removeTeacherList() {
    setState(() {
      _teacherList.removeLast();
    });
  }

  @override
  void initState() {
    super.initState();
    _controllerStudent.text = "0";
    _controllerTeacher.text = "0";
    // load();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomSheet: Container(
          color: Colors.white,
          height: 80,
          // alignment: Alignment.bottomCenter,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width - 20,
                  child: RaisedButton(
                    color: appBarColor,
                    textColor: Colors.white,
                    child: Text('Submit'),
                    onPressed: () {
                      // Navigator.pop(context);
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BookingPage(),
                          ),
                        );
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
          // child:
        ),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: appBarColor,
              pinned: true,
              snap: true,
              foregroundColor: Colors.black,
              floating: true,
              title: getAppBar(),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => buildBody(),
                childCount: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getAppBar() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Booking ',
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              )),
        ],
      ),
    );
  }

  buildStudent() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text('Student Number  ${_controllerStudent.text}'),
          SizedBox(
            height: 5,
          ),
          TextInputField(
            hint: 'Student Name',
            icon: Icons.person,
          ),
          SizedBox(
            height: 5,
          ),
          TextInputField(
            hint: 'Student Number',
            icon: Icons.phone,
          ),
          SizedBox(
            height: 5,
          ),
          TextInputField(
            hint: 'Student School',
            icon: Icons.school,
          ),
        ],
      ),
    );
  }

  buildTeacher() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text('Teacher Number  ${_controllerTeacher.text}'),
          SizedBox(
            height: 5,
          ),
          TextInputField(
            hint: 'Teacher Name',
            icon: Icons.person,
          ),
          SizedBox(
            height: 5,
          ),
          TextInputField(
            hint: 'Teacher Number',
            icon: Icons.phone,
          ),
          SizedBox(
            height: 5,
          ),
          TextInputField(
            hint: 'Teacher School',
            icon: Icons.school,
          ),
        ],
      ),
    );
  }

  buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            // decoration: BoxDecoration(
            //     border: Border.all(
            //       color: Colors.black,
            //     ),
            //     borderRadius: BorderRadius.all(Radius.circular(20))),
            // color: Colors.grey[300],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Text('Number of student'),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Center(
                    child: Container(
                      width: 100.0,
                      foregroundDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(
                          color: Colors.blueGrey,
                          width: 2.0,
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(8.0),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                              controller: _controllerStudent,
                              keyboardType: TextInputType.numberWithOptions(
                                decimal: false,
                                signed: true,
                              ),
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                          Container(
                            height: 38.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        width: 0.5,
                                      ),
                                    ),
                                  ),
                                  child: InkWell(
                                    child: Icon(
                                      Icons.arrow_drop_up,
                                      size: 18.0,
                                    ),
                                    onTap: () {
                                      int currentValue =
                                          int.parse(_controllerStudent.text);
                                      setState(() {
                                        currentValue++;
                                        _addStudentList();
                                        _controllerStudent.text = (currentValue)
                                            .toString(); // incrementing value
                                      });
                                    },
                                  ),
                                ),
                                InkWell(
                                  child: Icon(
                                    Icons.arrow_drop_down,
                                    size: 18.0,
                                  ),
                                  onTap: () {
                                    int currentValue =
                                        int.parse(_controllerStudent.text);
                                    setState(() {
                                      print("Setting state");
                                      currentValue--;

                                      // _studentList.clear();
                                      _removeStudentList();

                                      _controllerStudent.text =
                                          (currentValue > 0 ? currentValue : 0)
                                              .toString(); // decrementing value
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 150,
            child: ListView.builder(
                itemCount: _studentList.length,
                itemBuilder: (context, index) {
                  return _studentList[index];
                }),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 50,
            // decoration: BoxDecoration(
            //     border: Border.all(
            //       color: Colors.black,
            //     ),
            //     borderRadius: BorderRadius.all(Radius.circular(20))),
            // color: Colors.grey[300],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Text('Number of teacher'),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Center(
                    child: Container(
                      width: 100.0,
                      foregroundDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(
                          color: Colors.blueGrey,
                          width: 2.0,
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(8.0),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                              controller: _controllerTeacher,
                              keyboardType: TextInputType.numberWithOptions(
                                decimal: false,
                                signed: true,
                              ),
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                          Container(
                            height: 38.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        width: 0.5,
                                      ),
                                    ),
                                  ),
                                  child: InkWell(
                                    child: Icon(
                                      Icons.arrow_drop_up,
                                      size: 18.0,
                                    ),
                                    onTap: () {
                                      int currentValue =
                                          int.parse(_controllerTeacher.text);
                                      setState(() {
                                        currentValue++;
                                        _addTeacherList();
                                        _controllerTeacher.text = (currentValue)
                                            .toString(); // incrementing value
                                      });
                                    },
                                  ),
                                ),
                                InkWell(
                                  child: Icon(
                                    Icons.arrow_drop_down,
                                    size: 18.0,
                                  ),
                                  onTap: () {
                                    int currentValue =
                                        int.parse(_controllerTeacher.text);
                                    setState(() {
                                      print("Setting state");
                                      currentValue--;
                                      _removeTeacherList();
                                      _controllerTeacher.text =
                                          (currentValue > 0 ? currentValue : 0)
                                              .toString(); // decrementing value
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 150,
            child: ListView.builder(
                itemCount: _teacherList.length,
                itemBuilder: (context, index) {
                  return _teacherList[index];
                }),
          ),
        ],
      ),
    );
  }
}
