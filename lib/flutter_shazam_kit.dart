library flutter_shazam_kit;

import 'dart:io';

import 'flutter_shazam_kit_platform_interface.dart';

export './models/detecting_state.dart';
export './models/error.dart';
export './models/media_item.dart';
export '/models/result.dart';

class FlutterShazamKit {
  void onMatchResultDiscovered(
      OnMatchResultDiscovered onMatchResultDiscovered) {
    return FlutterShazamKitPlatform.instance
        .onMatchResultDiscovered(onMatchResultDiscovered);
  }

  void onDetectStateChanged(OnDetectStateChanged onDetectStateChanged) {
    return FlutterShazamKitPlatform.instance
        .onDetectStateChanged(onDetectStateChanged);
  }

  void onError(OnError onError) {
    return FlutterShazamKitPlatform.instance.onError(onError);
  }

  Future configureShazamKitSession({String? developerToken}) {
    return FlutterShazamKitPlatform.instance
        .configureShazamKitSession(developerToken: developerToken);
  }

  Future startDetectionWithMicrophone() {
    return FlutterShazamKitPlatform.instance.startDetectionWithMicrophone();
  }

  Future startDetectionWithAudioFile(File file) {
    return FlutterShazamKitPlatform.instance.startDetectionWithAudioFile(file);
  }

  Future endDetectionWithMicrophone() {
    return FlutterShazamKitPlatform.instance.endDetectionWithMicrophone();
  }

  Future endSession() {
    return FlutterShazamKitPlatform.instance.endSession();
  }
}
