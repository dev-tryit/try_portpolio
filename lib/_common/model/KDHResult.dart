

import 'exception/CommonException.dart';

enum KDHResult { success, fail }

extension KDHResultMethod on KDHResult {
  bool isSuccess() {
    return this == KDHResult.success;
  }

  void checkFailAndThrowException({required String errorMsg}) {
    if (!isSuccess()) {
      throw CommonException(message: errorMsg);
    }
  }
}
