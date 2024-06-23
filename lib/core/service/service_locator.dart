
import 'package:dio/dio.dart';
import 'package:dyslexia_app/feature/auth/presentation/cubit/forget_password_cubit/forget_password_cubit.dart';
import 'package:dyslexia_app/feature/auth/presentation/cubit/sign_up_cubit/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

import '../../feature/auth/presentation/cubit/login_cubit/login_cubit.dart';
import '../bloc/cubit/global_cubit.dart';
import '../database/cache/cache_helper.dart';

final sl = GetIt.instance;

void initServiceLocator(){

  //cubits
  sl.registerLazySingleton(()=>GlobalCubit());
  sl.registerLazySingleton(()=>LoginCubit());
  sl.registerLazySingleton(()=>SignUpCubit());
  sl.registerLazySingleton(()=>ForgetPasswordCubit());
  //external
  sl.registerLazySingleton(()=>CacheHelper());
  sl.registerLazySingleton(()=>Dio());


}

