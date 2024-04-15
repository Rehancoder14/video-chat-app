import 'package:flutter/material.dart';
import 'package:video_chart_mobile/constant.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallPage extends StatelessWidget {
  final String uname;
  const CallPage({
    Key? key,
    required this.callID,
    required this.uname,
  }) : super(key: key);
  final String callID;

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: AppConstant
          .appId, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign: AppConstant
          .yoursign, // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: "${uname}601402",
      userName: uname,
      callID: callID,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}
