import 'package:kt_1/kt_1.dart' as kt_1;
import 'package:dio/dio.dart';

void main(List<String> arguments) async{
  Dio client = Dio();
  String url = 'https://dummyjson.com/products';
  Response response = await client.get(url);

  Map<String, dynamic> data = response.data;
  List<dynamic> product = data["products"];

  int count=0;
  for (var el in product) {
    if(el["brand"]=='Apple'){
      count++;
    }
  }
  print(count);
}
