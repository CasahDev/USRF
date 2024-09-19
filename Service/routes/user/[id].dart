import 'package:dart_frog/dart_frog.dart';

import '../../Service/Service.dart';

Future<Response> onRequest(RequestContext context, String id) async {
  return switch (context.request.method) {
    HttpMethod.delete => await _deleteUser(context, id),
    HttpMethod.post => await _updateUser(context),
    HttpMethod.get => await _getUserById(id),
    _ => Response(body: 'Method not allowed', statusCode: 405)
  };
}

Future<Response> _deleteUser(RequestContext context, String id) async {
  return Service.getService().deleteUser(id as int);
}

Future<Response> _updateUser(RequestContext context) async {
  return Service.getService().updateUser(
    context.request.body as int,
    context.mountedParams,
  );
}

Future<Response> _getUserById(String id) {
  return Service.getService().getUserById(id as int);
}
