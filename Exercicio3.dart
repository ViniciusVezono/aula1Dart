void main() {
  // Obtém a data atual
  final DateTime now = DateTime.now();
  final int currentYear = now.year; // Ano atual
  final int currentMonth = now.month; // Mês atual
  final int currentDay = now.day; // Dia atual

  // Primeiro dia do mês atual
  final DateTime firstDayOfMonth = DateTime(currentYear, currentMonth, 1);

  // Índice do dia da semana do primeiro dia do mês
  // DateTime.weekday retorna: 1 (segunda) a 7 (domingo)
  // Usamos % 7 para ajustar: 0 (domingo) a 6 (sábado)
  final int firstDayWeekdayIndex = firstDayOfMonth.weekday % 7;

  // Imprime o cabeçalho da semana
  print('| D | S | T | Q | Q | S | S |');

  // Usado para montar cada linha da semana antes de imprimir
  StringBuffer lineBuffer = StringBuffer();

  // Preenche espaços vazios antes do primeiro dia do mês
  for (int i = 0; i < firstDayWeekdayIndex; i++) {
    lineBuffer.write('   |');
  }

  // Loop que percorre do dia 1 até o dia atual
  for (int day = 1; day <= currentDay; day++) {
    // Adiciona o dia ao buffer, com alinhamento
    lineBuffer.write('${day.toString().padLeft(2)} |');

    // Se o dia for sábado (último da semana) ou o último dia exibido
    if ((firstDayWeekdayIndex + day) % 7 == 0 || day == currentDay) {
      // Imprime a linha completa
      print(lineBuffer.toString());
      // Limpa o buffer para a próxima linha
      lineBuffer.clear();
    }
  }
}
