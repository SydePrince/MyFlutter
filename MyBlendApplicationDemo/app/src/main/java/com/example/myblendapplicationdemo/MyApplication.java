package com.example.myblendapplicationdemo;

import android.app.Application;

import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.FlutterEngineCache;
import io.flutter.embedding.engine.dart.DartExecutor;

public class MyApplication extends Application {
//    public static FlutterEngine flutterEngine;

    @Override
    public void onCreate() {
        super.onCreate();
//        FlutterEngine flutterEngine = new FlutterEngine(this);
////        flutterEngine = new FlutterEngine(this);
//        // Configure an initial route.
//        flutterEngine.getNavigationChannel().setInitialRoute("router2");
//        // Start executing Dart code to pre-warm the FlutterEngine.
//        flutterEngine.getDartExecutor().executeDartEntrypoint(
//                DartExecutor.DartEntrypoint.createDefault()
//        );
//        // Cache the FlutterEngine to be used by FlutterActivity or FlutterFragment.
//        FlutterEngineCache
//                .getInstance()
//                .put("my_engine_id", flutterEngine);

        FlutterEngine flutterEngine2 = new FlutterEngine(this);
        flutterEngine2.getNavigationChannel().setInitialRoute("router1");
//        flutterEngine.
        flutterEngine2.getDartExecutor().executeDartEntrypoint(
                DartExecutor.DartEntrypoint.createDefault()
        );
        FlutterEngineCache.getInstance().put("my_engine_id_1", flutterEngine2);
    }
}
