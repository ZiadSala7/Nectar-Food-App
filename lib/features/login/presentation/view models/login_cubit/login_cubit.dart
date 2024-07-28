import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectar_app/features/login/presentation/view%20models/login_cubit/login_cubit_states.dart';

class LoginCubit extends Cubit<LoginCubitStates> {
  LoginCubit() : super(LoginCubitStateInitial());
}
