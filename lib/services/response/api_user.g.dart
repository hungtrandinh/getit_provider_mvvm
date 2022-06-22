part of 'api_user.dart';

class _ApiUser implements ApiUser {
  final Dio _dio;
  String? baseUrl;

  _ApiUser(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= src;
  }

  @override
  Future<ResponseData> getUser() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    Response response = await _dio.fetch<Map<String, dynamic>>(
        Options(method: 'GET', headers: _headers, extra: _extra)
            .compose(_dio.options, '/?results=10',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: src));
    final value = ResponseData.fromJson(response.data);
    return value;
  }
}
