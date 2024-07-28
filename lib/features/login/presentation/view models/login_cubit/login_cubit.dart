import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectar_app/features/login/data/login_repo.dart/login_repo_imple.dart';
import 'package:nectar_app/features/login/data/model/login_controllers.dart';
import 'package:nectar_app/features/login/presentation/view%20models/login_cubit/login_cubit_states.dart';

class LoginCubit extends Cubit<LoginCubitStates> {
  LoginCubit({required this.loginRepoImple}) : super(LoginCubitStateInitial());
  final LoginRepoImple loginRepoImple;

  login() async {
    emit(LoginCubitStateLoading());
    final response = await loginRepoImple.login(
      email: LoginControllers.email.text,
      password: LoginControllers.password.text,
    );

    response.fold(
      (errMessage) => emit(
        LoginCubitStateFailure(errMessage: errMessage),
      ),
      (loginModel) => emit(
        LoginCubitStateSuccess(authModel: loginModel),
      ),
    );
  }
}
