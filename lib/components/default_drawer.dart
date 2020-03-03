import 'package:flutter/material.dart';
import 'package:myapp/pages/login/login_page.dart';
import 'package:myapp/utils/nav.dart';

class DefaultDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Ricardo Lecheta"),
              accountEmail: Text("rlecheta@gmail.com"),
            ),

            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text("Eventos"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print("Enviar para tela de eventos");
                //Navigator.pop(context);
              },
            ),

            ListTile(
              leading: Icon(Icons.group),
              title: Text("Terceiros"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print("Enviar para tela de terceiros");
                //Navigator.pop(context);
              },
            ),
            
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Sair"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () => _onClickLogout(context),
            )
          ],
        ),
      ),
    );
  }
              
   _onClickLogout(BuildContext context) {
     Navigator.pop(context);
     push(context, LoginPage(), replace: true);
   }
}
