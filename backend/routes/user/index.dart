import 'package:dart_frog/dart_frog.dart';

import '../../Service/Service.dart';

Future<Response> onRequest(RequestContext context) async {
  return switch (context.request.method) {
    HttpMethod.get => await _getUsers(),
    HttpMethod.post => await _createUser(context),
    _ => Response(body: 'Method not allowed', statusCode: 405)
  };
}

Future<Response> _getUsers() {
  return Service.getService().getUsers();
}

Future<Response> _createUser(RequestContext context) async {
  if (context.request.body.toString() == '') {
    return Response(body: 'Request body is required', statusCode: 400);
  }
  return Service.getService().createUser(
    context.mountedParams as Map<String, dynamic>,
  );
}
