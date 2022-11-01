import 'package:flutter/material.dart';

class RouteListItem extends StatelessWidget {
  final String _routeTitle;
  final String _routeDate;
  final Function _onTap;

  const RouteListItem(this._routeTitle, this._routeDate, this._onTap,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _onTap(),
      child: Container(
        constraints: const BoxConstraints(maxHeight: 50),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Row(
              children: [
                Flexible(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        _routeTitle,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    color: Colors.green,
                    child: Center(
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          _routeDate,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
