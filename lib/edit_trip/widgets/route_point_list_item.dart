import 'package:flutter/material.dart';

class RoutePointListItem extends StatelessWidget {
  final String _title;
  final String? _subTitle;

  const RoutePointListItem(this._title, this._subTitle, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.location_on),
      title: Text(_title),
      subtitle: (_subTitle != null && _subTitle!.isNotEmpty)
          ? Text(_subTitle!)
          : null,
    );
  }
}
