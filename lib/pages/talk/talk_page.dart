import 'dart:async';
import 'dart:developer';

import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';


class Talk extends StatefulWidget {
  @override
  _TalkState createState() => _TalkState();
}

class _TalkState extends State<Talk> {
  late final RtcEngine _engine;
  late String channelId;
  bool isJoined = false,
      openMicrophone = true,
      enableSpeakerphone = true,
      playEffect = false;
  bool _enableInEarMonitoring = false;
  double _recordingVolume = 0, _playbackVolume = 0, _inEarMonitoringVolume = 0;
  TextEditingController? _controller;

  @override
  void initState() {
    super.initState();
    this._initEngine();
    // this._joinChannel();
    print('*'*50);
    print('initState');
  }

  @override
  void dispose() {
    super.dispose();
    _engine.destroy();
    print('*'*50);
    print('dispose');
  }

  _initEngine() async {
    _engine = await RtcEngine.create('appId');
    this._addListeners();

    await _engine.enableAudio();
    await _engine.setChannelProfile(ChannelProfile.LiveBroadcasting);
    await _engine.setClientRole(ClientRole.Broadcaster);
    print('*'*50);
    print('initEngine');
  }

  _addListeners() {
    _engine.setEventHandler(RtcEngineEventHandler(
      joinChannelSuccess: (channel, uid, elapsed) {
        print('joinChannelSuccess ${channel} ${uid} ${elapsed}');
        setState(() {
          isJoined = true;
        });
      },
      leaveChannel: (stats) async {
        print('leaveChannel ${stats.toJson()}');
        setState(() {
          isJoined = false;
        });
      },
    ));
  }

  _joinChannel() async {
    // if (defaultTargetPlatform == TargetPlatform.android) {
    //   await Permission.microphone.request();
    // }
    await _engine
        .joinChannel(
          'token',
          'channelId',
          null,
          0,
        )
        .catchError((onError) {
      print('error ${onError.toString()}');
    });
    print('SUCCESS!!');
  }

  _leaveChannel() async {
    await _engine.leaveChannel();
  }

  _switchMicrophone() {
    _engine.enableLocalAudio(!openMicrophone).then((value) {
      setState(() {
        openMicrophone = !openMicrophone;
      });
    }).catchError((err) {
      log('enableLocalAudio $err');
    });
  }

  _switchSpeakerphone() {
    _engine.setEnableSpeakerphone(!enableSpeakerphone).then((value) {
      setState(() {
        enableSpeakerphone = !enableSpeakerphone;
      });
    }).catchError((err) {
      log('setEnableSpeakerphone $err');
    });
  }

  _switchEffect() async {
    if (playEffect) {
      _engine.stopEffect(1).then((value) {
        setState(() {
          playEffect = false;
        });
      }).catchError((err) {
        log('stopEffect $err');
      });
    } else {
      _engine
          .playEffect(
              1,
              await (_engine.getAssetAbsolutePath("assets/Sound_Horizon.mp3")
                  as FutureOr<String>),
              -1,
              1,
              1,
              100,
              true)
          .then((value) {
        setState(() {
          playEffect = true;
        });
      }).catchError((err) {
        log('playEffect $err');
      });
    }
  }

  _onChangeInEarMonitoringVolume(double value) {
    setState(() {
      _inEarMonitoringVolume = value;
    });
    _engine.setInEarMonitoringVolume(value.toInt());
  }

  _toggleInEarMonitoring(value) {
    setState(() {
      _enableInEarMonitoring = value;
    });
    _engine.enableInEarMonitoring(value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(Styles.size32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 772,
              height: 772,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                child: Text('Back'),
                onPressed: () {
                  // Navigator.of(context).pop();
                  isJoined ? _leaveChannel() : _joinChannel();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
