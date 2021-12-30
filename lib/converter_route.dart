import 'package:flutter/material.dart';
import 'package:unit_converter_app/unit.dart';

/// Converter screen where users can input amounts to convert.
///
/// Currently, it just displays a list of mock units.
///
/// While it is named ConverterRoute, a more apt name would be ConverterScreen,
/// because it is responsible for the UI at the route's destination.
// TODO: Make ConverterRoute a StatefulWidget
class ConverterRoute extends StatefulWidget {
  /// Color for this [Category].
  final Color color;

  /// Units for this [Category].
  final List<Unit> units;

  /// This [ConverterRoute] requires the color and units to not be null.
  const ConverterRoute({
    required this.color,
    required this.units,
    Key? key,
  }) : super(key: key);

  // TODO: Create State object for the ConverterRoute
  @override
  _ConverterRouteState createState() => _ConverterRouteState();
}
class _ConverterRouteState extends State<ConverterRoute> {
  @override
  Widget build(BuildContext context) {
    // Here is just a placeholder for a list of mock units
    // TODO: Once the build() function is inside the State object,
    // you'll have to reference this using `widget.units`
    final unitWidgets = widget.units.map((Unit unit) {
      return Container(
        color: widget.color,
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              unit.name!,
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              'Conversion: ${unit.conversion}',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
      );
    }).toList();

    return ListView(
      children: unitWidgets,
    );
  }
}