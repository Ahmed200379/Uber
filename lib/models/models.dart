import 'dart:ffi';
import 'dart:math';

String? user;
class Pay
{
  String? card_name;
  int? cvv;
}
class Driver
{
  String? car;
  String? License_car;
  String? pass;
  String? name;
  String? email;
  int? lis_num;
  Pay pay=new Pay();
  int? id;
}
class Customer extends Driver
{

}
class Trip
{
  DateTime? time;
  String? sourse;
  String? des;
  Double? money;
  Double? distance;
  String? typetrip;
}
