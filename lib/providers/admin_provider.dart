import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

import '../controllers/db_service.dart';

class AdminProvider extends ChangeNotifier{
  List<QueryDocumentSnapshot> categories = [];
  StreamSubscription<QuerySnapshot>?_categorySubscription;

  List<QueryDocumentSnapshot> products = [];
  StreamSubscription<QuerySnapshot>?_productsSubscription;

  int totalCategories = 0;
  int totalProducts = 0;

  AdminProvider() {
    getCategories();
    getProducts();

  }

  // GET all the categories
  void getCategories() {
    _categorySubscription?.cancel();
    _categorySubscription = DbService().readCategories().listen((snapshot) {
      categories = snapshot.docs;
      totalCategories=snapshot.docs.length;
      notifyListeners();
    });
  }

  void getProducts() {
    _productsSubscription?.cancel();
    _productsSubscription = DbService().readProducts().listen((snapshot) {
      products = snapshot.docs;
      totalProducts=snapshot.docs.length;
      notifyListeners();
    });
  }
}