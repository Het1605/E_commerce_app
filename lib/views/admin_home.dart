import 'package:ecommerce_admin_app/container/home_button.dart';
import 'package:ecommerce_admin_app/controllers/auth_service.dart';
import 'package:flutter/material.dart';

import '../container/dashboard_text.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({super.key});

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Dashboard'),
        actions: [
          IconButton(onPressed: (){
            AuthService().logout();
            Navigator.pushNamedAndRemoveUntil(context, "/login", (context)=>false);
          }, icon: Icon(Icons.logout))
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 235,
              padding: EdgeInsets.all(12),
                margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                decoration: BoxDecoration(color: Colors.deepPurple.shade100, borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DashboardText(keywors: "Total products", value: "100",),
                    DashboardText(keywors: "Total products", value: "100",),
                    DashboardText(keywors: "Total products", value: "100",),
                    DashboardText(keywors: "Total products", value: "100",),
                    DashboardText(keywors: "Total products", value: "100",),
        
                  ],
                )),
            
            Row(
              children: [
                HomeButton(onTap: (){} , name: "Orders"),
                HomeButton(onTap: (){
                  Navigator.pushNamed(context, "/products");
                } , name: "Products"),
        
              ],
            ),
            Row(
              children: [
                HomeButton(onTap: (){
                  Navigator.pushNamed(context, "/promos",arguments: {"promo" : true});
                } , name: "Promos"),
                HomeButton(onTap: (){
                  Navigator.pushNamed(context, "/promos",arguments: {"promo" : false});

                } , name: "Banners"),
        
              ],
            ),Row(
              children: [
                HomeButton(onTap: (){
                  Navigator.pushNamed(context, "/category");

                } , name: "Categories"),
                HomeButton(onTap: (){
                  Navigator.pushNamed(context, "/coupons");
                } , name: "Coupens"),
        
              ],
            ),
          ],
        ),
      ),
    );
  }
}
