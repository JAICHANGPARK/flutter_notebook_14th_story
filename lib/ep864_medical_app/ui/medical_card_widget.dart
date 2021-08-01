import 'package:flutter/material.dart';
import 'package:flutter_notebook_14th_story/ep864_medical_app/model/schedule.dart';

class MedicalCardWidget extends StatelessWidget {
  DoctorSchedule doctorSchedule;

  MedicalCardWidget({Key? key, required this.doctorSchedule}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    doctorSchedule.timeIndex ?? "-",
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              )),
          Expanded(
              flex: 10,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(doctorSchedule.avatarImg!),
                    ),
                    Expanded(child: Column())
                  ],
                ),
                decoration:
                    BoxDecoration(color: Colors.white.withOpacity(0.08),
                        borderRadius: BorderRadius.circular(24)),
              )),
        ],
      ),
    );
  }
}
