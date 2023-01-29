import 'package:dartz/dartz.dart';

import '../../extensions/future.dart';
import '../../extensions/log.dart';
import '../helper/app_error.dart';
import '../model/user.dart';
import '../remote/profile.dart';

abstract class ProfileRepository {
  Future<Either<AppError, User>> getCurrentUser();
}

class ProfileRepositoryImpl extends ProfileRepository {
  ProfileRepositoryImpl(this._source);
  final ProfileSource _source;

  @override
  Future<Either<AppError, User>> getCurrentUser() async {
    final res = await _source.getCurrentUser().guardFuture<User>();
    res.logError();
    return res;
  }
}
