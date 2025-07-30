void main() {
var now = DateTime.now().month;
  var informado = 5;

  if (now > informado) {
    print('O mês $now é maior que o mês $informado');
  } else {
    print('O mês $now é menor que o mês $informado');
  }

}