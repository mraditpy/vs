import 'data/multimedia.dart';

void main() {
  var video = Video();
  video.name = 'Belajar Dart';
  video.play();
  video.stop();

  var audio = Audio();
  audio.play();
  audio.stop();
}
