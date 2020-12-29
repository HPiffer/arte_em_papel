import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // =========================================== //
    // Functions
    // =========================================== //
    ListTile _itemDrawer({
      BuildContext context,
      IconData icon,
      String label,
      Function onTap,
    }) {
      return ListTile(
        leading: Icon(
          icon,
          // size: 26,
        ),
        title: Text(
          label,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        onTap: onTap,
      );
    }

    // =========================================== //
    // Widget
    // =========================================== //
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 120,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: Theme.of(context).accentColor,
              alignment: Alignment.bottomRight,
              child: Text(
                'Navegar',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            SizedBox(height: 20),
            _itemDrawer(
              context: context,
              icon: Icons.attach_money,
              label: 'Financeiro',
              onTap: () {},
            ),
            _itemDrawer(
              context: context,
              icon: Icons.inventory,
              label: 'Estoque',
              onTap: () {},
            ),
            _itemDrawer(
              context: context,
              icon: Icons.calendar_today,
              label: 'Agenda',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
