import 'package:flutter/material.dart';

class TripListItem extends StatelessWidget {
  final String _tripTitle;
  final String _tripDate;
  final Function _onTap;

  const TripListItem(this._tripTitle, this._tripDate, this._onTap,
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
                        _tripTitle,
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
                          _tripDate,
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
