import 'package:app_filmes/repositories/login/login_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

import './login_service.dart';

class LoginServiceImpl implements LoginService {
  // ignore: prefer_final_fields
  LoginRepository _loginRepository;

  LoginServiceImpl ({
    required LoginRepository loginRepository,
    }) :_loginRepository = loginRepository;


  @override
  Future<UserCredential> login() => _loginRepository.login();
  
  @override
  Future<void> logout() => _loginRepository.logout();

}