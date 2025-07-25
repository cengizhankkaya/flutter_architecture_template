import 'package:architecture_template/product/init/config/app_enviroment.dart';
import 'package:architecture_template/product/service/manager/product_service_manager.dart';
import 'package:architecture_template/product/service/manager/product_service_path.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gen/gen.dart';
import 'package:vexana/vexana.dart';

void main() {
  late final ProductNetworkManager manager;
  setUp(() {
    AppEnvironment.general();
    manager = ProductNetworkManager.base();
  });
  test('get users items from api', () async {
    final response = await manager.send<User, List<User>>(
      ProductServicePath.posts.value,
      parseModel: User(),
      method: RequestType.GET,
    );

    expect(response.data, isNotNull);
  });
}
