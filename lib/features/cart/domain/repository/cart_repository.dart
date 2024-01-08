import 'package:api/api.dart';
import 'package:mithzar/data/helper/app_error.dart';

abstract class CartRepository {
  Future<(List<Cart>?, AppError?)> getCartItems();
  Future<(Cart?, AppError?)> add(int id);
  Future<(Cart?, AppError?)> remove(int id);
}
