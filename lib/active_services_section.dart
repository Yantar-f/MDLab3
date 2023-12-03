import 'package:flutter/material.dart';
import 'package:mdlab3/entity/active_service_entity.dart';

class ActiveServicesList extends StatelessWidget {
  const ActiveServicesList(this.activeServices, {super.key,});

  final List<ActiveServiceEntity> activeServices;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: activeServices.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(5),
            child: ActiveService(activeServices[index])
          );
        },
      ),
    );
  }
}

class ActiveService extends StatelessWidget {
  const ActiveService(this._data, {super.key});

  final ActiveServiceEntity _data;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
      BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(12.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(20),
            blurRadius: 16,
            blurStyle: BlurStyle.outer
          )
        ]
      ),
      child: Column(
        children: [
          Row(
            children: [
              //Image.asset(_data.serviceImgUrl),
              Text(_data.serviceName)
            ],
          ),
          Text(_data.addInfo),
          Text(_data.pricePerMonth.toString())
        ],
      )
    );
  }
  
}
