package com.example.myblendapplicationdemo;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.FlutterEngineCache;
import io.flutter.embedding.engine.dart.DartExecutor;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        FlutterEngine flutterEngine = new FlutterEngine(this);
//        flutterEngine = new FlutterEngine(this);
        // Configure an initial route.
        flutterEngine.getNavigationChannel().setInitialRoute("router2");
        // Start executing Dart code to pre-warm the FlutterEngine.
        flutterEngine.getDartExecutor().executeDartEntrypoint(
                DartExecutor.DartEntrypoint.createDefault()
        );
        // Cache the FlutterEngine to be used by FlutterActivity or FlutterFragment.
        FlutterEngineCache
                .getInstance()
                .put("my_engine_id", flutterEngine);




//                FlutterEngine flutterEngine2 = new FlutterEngine(this);
//        flutterEngine2.getNavigationChannel().setInitialRoute("router1");
////        flutterEngine.
//        flutterEngine2.getDartExecutor().executeDartEntrypoint(
//                DartExecutor.DartEntrypoint.createDefault()
//        );
//        FlutterEngineCache.getInstance().put("my_engine_id_1", flutterEngine2);
    }

    public void startFlutterActivity(View view) {
//        startActivity(FlutterActivity.createDefaultIntent(MainActivity.this));
//        startActivity(FlutterActivity.withNewEngine().initialRoute("router2").build(MainActivity.this));
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
        startActivity(FlutterActivity.withCachedEngine("my_engine_id").build(MainActivity.this));
    }

    public void startFlutterActivity2(View view) {
//                startActivity(FlutterActivity.withNewEngine().initialRoute("router1").build(MainActivity.this));

        startActivity(FlutterActivity.withCachedEngine("my_engine_id_1").build(MainActivity.this));
//                startActivity(FlutterActivity.withNewEngine().initialRoute("router2").build(MainActivity.this));

    }
    public void startFlutterActivity3(View view) {
//                startActivity(FlutterActivity.withNewEngine().initialRoute("router1").build(MainActivity.this));

        startActivity(FlutterActivity.withNewEngine().initialRoute("router3").build(MainActivity.this));
//                startActivity(FlutterActivity.withNewEngine().initialRoute("router2").build(MainActivity.this));

    }
}
