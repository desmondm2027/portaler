import 'package:flutter/material.dart';
import '../services/ruta_service.dart';
import '../widgets/autocomplete_map_field.dart';

class ControlPanel extends StatefulWidget {
  final VoidCallback onClose;

  ControlPanel({required this.onClose});

  @override
  _ControlPanelState createState() => _ControlPanelState();
}

class _ControlPanelState extends State<ControlPanel> {
  List<String> _mapNames = [];
  String _from = '';
  String _to = '';
  final TextEditingController _fromController = TextEditingController();
  final TextEditingController _toController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadMapNames();
  }

  _loadMapNames() async {
    final mapNames = await RutaService.getMapNames();
    setState(() {
      _mapNames = mapNames;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text(
            'Portaler',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        ListTile(
          title: Text('Desde'),
          trailing: AutocompleteMapField(
            suggestions: _mapNames,
            controller: _fromController,
            hintText: 'Seleccione un mapa',
          ),
        ),
        ListTile(
          title: Text('Hasta'),
          trailing: AutocompleteMapField(
            suggestions: _mapNames,
            controller: _toController,
            hintText: 'Seleccione un mapa',
          ),
        ),
        ListTile(
          title: Text('Size'),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                child: Text('2'),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                child: Text('7'),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                ),
                child: Text('20'),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                ),
                child: Text('ROYAL'),
              ),
            ],
          ),
        ),
        ListTile(
          title: Text('Time Left'),
          subtitle: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Hour(s)',
                  ),
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Minute(s)',
                  ),
                ),
              ),
            ],
          ),
        ),
        ListTile(
          title: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple,
            ),
            child: Text('CREATE CONNECTION'),
          ),
        ),
      ],
    );
  }
}
