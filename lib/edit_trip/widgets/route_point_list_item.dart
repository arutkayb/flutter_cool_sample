import 'package:flutter/material.dart';
import 'package:flutter_cool_sample/common/models/route_point.dart';

class RoutePointListItem extends StatelessWidget {
  final int _orderInList;
  final RoutePoint _routePoint;
  final Function _onTap;

  const RoutePointListItem(this._orderInList, this._routePoint, this._onTap,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        _onTap();
      },
      leading: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black,
        ),
        width: 24,
        height: 24,
        child: Center(
          child: Text(
            _orderInList.toString(),
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
      trailing: const Icon(Icons.location_on),
      title: Text(_routePoint.id),
      subtitle: Text(_routePoint.routeStartDateMillis.toString()),
    );
  }
}
