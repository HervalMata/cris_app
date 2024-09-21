class TFormatException implements Exception {
  final String message;

  const TFormatException({this.message = 'Um inesperado erro de formato ocorreu. Por favor check seus dados.'});

  factory TFormatException.fromMessage(String message) {
    return const TFormatException(message: 'Um inesperado erro de formato ocorreu. Por favor check seus dados.');
  }

  String get formattedMessage => message;

  factory TFormatException.fromCode(String code) {
    switch (code) {
      case 'invalid-email-format':
        return const TFormatException(message: 'O formato do email é invalido. Por favor fornaça um email válido.');
      case 'invalid-phone-number-format':
        return const TFormatException(message: 'O formato do telefone é invalido. Por favor fornaça um telefone válido.');
      case 'invalid-data-format':
        return const TFormatException(message: 'O formato dos dados são invalidos. Por favor fornaça dados válidos.');
      case 'invalid-url-format':
        return const TFormatException(message: 'O formato da URL é invalido. Por favor fornaça uma URL válida.');
      case 'invalid-credit-card-format':
        return const TFormatException(message: 'O formato dos dados do cartão de crédito é invalido. Por favor fornaça um número de cartão de crédito válido.');
      case 'invalid-numeric-format':
        return const TFormatException(message: 'O formato do número é invalido. Por favor fornaça um número válido.');
      default:
        return const TFormatException(message: 'Un inexperado firebase erro ocorreu. Por favor tente novamente.');
    }
  }
}