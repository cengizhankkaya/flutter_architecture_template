import 'package:architecture_template/product/service/interface/authenction_operation.dart';
import 'package:architecture_template/product/service/manager/index.dart';
import 'package:gen/gen.dart';
import 'package:vexana/vexana.dart';

final class LoginService extends AuthenctionOperation {
  LoginService(INetworkManager<EmptyModel> networkManager)
    : _networkManager = networkManager;

  final INetworkManager<EmptyModel> _networkManager;

  Future<List<User>> users() async {
    final response = await _networkManager.send<User, List<User>>(
      ProductServicePath.posts.value,
      parseModel: User(),
      method: RequestType.GET,
    );
    return response.data ?? [];
  }
}
