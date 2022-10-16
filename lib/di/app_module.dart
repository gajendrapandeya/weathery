import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_logger/dio_logger.dart';
import 'package:injectable/injectable.dart';
import 'package:weathery/core/constants/api_constants.dart';

final options = CacheOptions(
  store: MemCacheStore(maxSize: 10485760, maxEntrySize: 1048576),
  policy: CachePolicy.request,
  hitCacheOnErrorExcept: [401, 403, 404],
  maxStale: const Duration(days: 1),
  priority: CachePriority.normal,
  cipher: null,
  keyBuilder: CacheOptions.defaultCacheKeyBuilder,
  allowPostMethod: false,
);

@module
abstract class AppModule {
  @singleton
  Dio get dio => Dio(
        BaseOptions(
          setRequestContentTypeWhenNoPayload: true,
          responseType: ResponseType.json,
          baseUrl: ApiConstants.baseUrl,
          headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json',
          },
        ),
      )..interceptors.add(dioLoggerInterceptor);
}
