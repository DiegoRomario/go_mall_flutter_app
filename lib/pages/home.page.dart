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
                style: Theme.of(context).textTheme.headline,
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
                    style: Theme.of(context).textTheme.headline,
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
