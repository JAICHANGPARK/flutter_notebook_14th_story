import 'package:flutter/material.dart';
import 'package:flutter_notebook_14th_story/ep871_salon_app/model/staff.dart';

class SalonManagePage extends StatelessWidget {
  const SalonManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Manage Staff"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add_box))],
      ),
      body: Column(
        children: [
          Container(
            height: 64,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            color: Colors.white,
            child: Container(
              decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(16)),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: const TextField(
                decoration:
                    InputDecoration(border: InputBorder.none, hintText: "Search Staff", suffixIcon: Icon(Icons.search)),
              ),
            ),
          ),
          SizedBox(height: 8),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      child: Row(
                        children: [
                          Container(
                            height: 54,
                            width: 54,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                  image: NetworkImage("${manageStaffItems[index].profileImg}"),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${manageStaffItems[index].name}",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 4),
                                  child: Text("${manageStaffItems[index].subtitle}",
                                    style: TextStyle(fontSize: 12, color: Colors.grey),),
                                ),
                                Text("${manageStaffItems[index].services}", )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => Divider(
                        color: Colors.grey[200],
                        thickness: 5,
                      ),
                  itemCount: manageStaffItems.length),
              flex: 10),
        ],
      ),
    );
  }
}
