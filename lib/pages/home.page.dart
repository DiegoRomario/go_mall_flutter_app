import 'package:flutter/material.dart';
import 'package:go_mall_flutter_app/widgets/category/category-list.dart';
import 'package:go_mall_flutter_app/widgets/product/product-list.widget.dart';
import 'package:go_mall_flutter_app/widgets/search-box.widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          color: Color(0xFFF5F5F5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 60,
              ),
              SearchBox(),
              SizedBox(
                height: 30,
              ),
              Text(
                "Categories",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 90,
                child: CategoryList(),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Best Selling",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  FlatButton(onPressed: () {}, child: Text("See All"))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 335,
                child: ProductList(
                  scrollDirection: Axis.horizontal,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
