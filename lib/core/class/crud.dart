import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/class/status_request.dart';
import 'package:ecommerce/core/function/check_internet.dart';
import 'package:http/http.dart' as http;

class Crud {
  Future<Either<StatusRequest, Map>> postData(String linkurl, Map data) async {
   
      if (await checkInternet()) {
        var response = await http.post(Uri.parse(linkurl), body: data);
          print(response.statusCode) ; 

        if (response.statusCode == 200 || response.statusCode == 201) {
          print("Raw response: ${response.body}");
          Map responsebody = jsonDecode(response.body);
          print(responsebody) ; 
          return Right(responsebody);
        } else {
          return const Left(StatusRequest.serverfailure);
        }
      } else {
        return const Left(StatusRequest.offlinefailure);
      }
     
  }
}