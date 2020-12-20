import 'package:flutter/material.dart';
import 'package:todo_app/srceens/categories.dart';
import 'package:todo_app/srceens/home_screen.dart';

class DrawerNavigation extends StatefulWidget {
  @override
  _DrawerNavigationState createState() => _DrawerNavigationState();
}

class _DrawerNavigationState extends State<DrawerNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://scontent.fhen2-1.fna.fbcdn.net/v/t31.0-8/24958864_161631734588989_3580283716054168209_o.jpg?_nc_cat=104&ccb=2&_nc_sid=09cbfe&_nc_ohc=q5rmeOvJJ4sAX9SU6hA&_nc_oc=AQkuyOiniw5fhHnnTiS-HnV1D3H6MtNGR0WLu2Bz_V2Ccjhgy3LQF2AY1gH-uZpI7YY&_nc_ht=scontent.fhen2-1.fna&oh=10cdb2ea2dc442bb33d2a2c010ee273b&oe=60055DFB'),
              ),
              accountName: Text('Berik'),
              accountEmail: Text('berik.shaikamalov@ntpayments.com'),
              decoration: BoxDecoration(color: Colors.red),
            ),
            ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HomeScreen()))),
            ListTile(
                leading: Icon(Icons.view_list),
                title: Text('Categories'),
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Categories()))),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
