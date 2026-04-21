import 'dart:async';
class Countdown{
  int startTime;
  int currentTime;
  Timer? timer;
  Countdown(this.startTime) : currentTime = startTime;
  void start(){
    if(timer != null) return;
    timer = Timer.periodic(Duration(seconds: 1), (t){
      if(currentTime == 0){
        print("Done!");
        t.cancel();
        timer = null;
      }else{
        print(currentTime);
        currentTime--;
      }
    });
  }
  void stop(){
    timer?.cancel();
    timer = null;
    print("Stopped!");
  }
  void reset(){
    stop();
    currentTime = startTime;
    print("Current time: $currentTime");
  }
}
void main(){
  Countdown countdown = Countdown(10);
  countdown.start();
  //countdown.stop();
  //countdown.reset();
}