import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app_dynamic/di/injection.config.dart';

final locator = GetIt.instance;
 
@InjectableInit(  
  initializerName: 'init', // default  
  preferRelativeImports: true, // default  
  asExtension: true, // default  
) 
Future <void> configureDependencies() => locator.init();