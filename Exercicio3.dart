void main() {
  final DateTime now = DateTime.now();
  final int currentYear = now.year; 
  final int currentMonth = now.month; 
  final int currentDay = now.day; 

  final DateTime firstDayOfMonth = DateTime(currentYear, currentMonth, 1);

  
  final int firstDayWeekdayIndex = firstDayOfMonth.weekday % 7;

  print('| D | S | T | Q | Q | S | S |');

  StringBuffer lineBuffer = StringBuffer();

  for (int i = 0; i < firstDayWeekdayIndex; i++) {
    lineBuffer.write('   |');
  }

  for (int day = 1; day <= currentDay; day++) {
    lineBuffer.write('${day.toString().padLeft(2)} |');

    if ((firstDayWeekdayIndex + day) % 7 == 0 || day == currentDay) {
      print(lineBuffer.toString());
      lineBuffer.clear();
    }
  }
}
