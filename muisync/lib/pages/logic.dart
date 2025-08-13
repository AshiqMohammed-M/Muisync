
DateTime now = DateTime.now();

String getGreetings(){
  
  

  if (now.hour >= 6 && now.hour < 12) {
    return 'Good Morning';
  } else if (now.hour >= 12 && now.hour < 18) {
    return 'Good Afternoon';
  } else {
    return 'Good Evening';
  }
}