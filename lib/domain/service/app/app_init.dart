import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/single_child_widget.dart';
import 'package:weather_app_dynamic/di/injection.dart';

import '../../../presentation/home/cubit/home_cubit.dart';

abstract class AppProvidersService {
  List<SingleChildWidget> mainAppProviders();
}

abstract class AppService {
  Future appInit();
}

class AppProviders extends AppProvidersService {
  @override
  List<SingleChildWidget> mainAppProviders() {
    List<SingleChildWidget> providers = [];
    providers.addAll(
      [
        BlocProvider(
          create: (context) => locator<HomeCubit>(),
        ),
      ],
    );
    return providers;
  }
}

class AppServiceInit implements AppService {
  @override
  Future appInit() async {
    await dotenv.load(fileName: ".env");
    WidgetsFlutterBinding.ensureInitialized();
    // await LocalDataService.init();
    await configureDependencies();
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }
}
