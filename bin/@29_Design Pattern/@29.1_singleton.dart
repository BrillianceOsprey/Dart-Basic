// class ApiService {
//   String? _dio;

//   static ApiService?
//       _getApiServiceInstance; // first null state, create with funcation() if need
//   factory ApiService() {
//     // use singleton with factory constructor
//     if (_getApiServiceInstance == null) {
//       _getApiServiceInstance = ApiService.create();
//       return _getApiServiceInstance!;
//     }
//     return _getApiServiceInstance!;
//   }

//   String get dio => _dio ?? 'Empty';
//   set dio(String value) {
//     _dio = value;
//   }

//   ApiService.create() {
//     print('Api Service Create');
//   }
// }

// void main() {
//   ApiService apiService = ApiService();
//   print(apiService.hashCode); // 958836859, same

//   ApiService apiService2 = ApiService();
//   print(apiService2.hashCode); // 958836859, same
// }

/// 3
class ApiService {
  String? _dio;
  // static ApiService getApiServiceInstance = ApiService.create(); // first time create

  static ApiService?
      _getApiServiceInstance; // first null state, create with funcation() if need
  static ApiService getInstance() {
    if (_getApiServiceInstance == null) {
      _getApiServiceInstance = ApiService.create();
      return _getApiServiceInstance!;
    }
    return _getApiServiceInstance!;
  }

  static ApiService get instance {
    // first null state, create with getter if need
    if (_getApiServiceInstance == null) {
      _getApiServiceInstance = ApiService.create();
      return _getApiServiceInstance!;
    }
    return _getApiServiceInstance!;
  }

  Future<void> createDatabase() async {
    print('start database');
  }

  ApiService._() {
    print('Api Service Create in private');
  }

  String get dio => _dio ?? 'Empty';
  set dio(String value) {
    _dio = value;
  }

  ApiService.create() {
    createDatabase();
    print('Api Service Create');
  }
}

void main() {
  // ApiService apiService = ApiService.getApiServiceInstance;
  ApiService apiService = ApiService.getInstance();
  print(apiService.hashCode); // 958836859, same
  // apiService.dio = 'first dio';
  // print('Api Service Dio : ${apiService._dio}');

  // ApiService apiService2 = ApiService.getApiServiceInstance;
  ApiService apiService2 = ApiService.getInstance();
  print(apiService2.hashCode); // 958836859, same
  // apiService.dio = 'second dio';
  // print('Api Service Dio : ${apiService._dio}');
  // print('Api Service Dio : ${apiService2._dio}');
}

///  2
// class ApiService {
//   ApiService() {
//     print('Api Service Create');
//   }
//   String? _dio;
//   String get dio => _dio ?? 'Empty';
//   set dio(String value) {
//     _dio = value;
//   }
// }
// void main() {
//   ApiService apiService = ApiService();
//   apiService.dio = 'first Dio';
//   print(apiService.dio);

//   ApiService apiService1 = ApiService();
//   apiService1.dio = 'Second Dio';
//   print(apiService1.dio);
// }


/// 1
// class ApiService {
//   ApiService() {
//     print('Api Service Create');
//   }
// }

// void main() {
//   ApiService apiService = ApiService();
//   print(apiService.hashCode); // 694887857
//   ApiService apiService1 = ApiService();
//   print(apiService1.hashCode); // 103491246
// }
