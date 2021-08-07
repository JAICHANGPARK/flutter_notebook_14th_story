import 'package:flutter/material.dart';

class SalonBookingDetailServiceWidget extends StatelessWidget {
  const SalonBookingDetailServiceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Services".toUpperCase(),style: TextStyle(fontSize: 12, color: Colors.grey),),
          SizedBox(height: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
                2,
                (index) => Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Row(
                        children: [
                          Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                              borderRadius: BorderRadius.circular(16)
                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [Text("Haircut(Women)",style: TextStyle(fontSize: 14),),
                            
                                Text("Duration 30 Mins",style: TextStyle(fontSize: 12, color: Colors.grey),)],
                            ),
                          ),
                          Spacer(),
                          Container(
                            decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(8)),
                            padding: EdgeInsets.all(8),
                            child: Text(
                              "\$ ${19.99}",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          )
                        ],
                      ),
                    )),
          )
        ],
      ),
    );
  }
}
