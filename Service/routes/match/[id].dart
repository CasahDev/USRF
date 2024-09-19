import 'package:dart_frog/dart_frog.dart';

import '../../Service/Service.dart';

Future<Response> onRequest(
  RequestContext context,
  String id,
) async {
  return switch (context.request.method) {
    HttpMethod.post => await _createMatch(context),
    HttpMethod.get => await _getMatch(id),
    _ => Response(body: 'Method not allowed', statusCode: 405),
  };
}

Future<Response> _createMatch(RequestContext context) async {
  return Service.getService().createMatch(context.request.body as Map<String, dynamic>);
}

Future<Response> _getMatch(String id) async {
  return Service.getService().getMatchById(id as int);
}
