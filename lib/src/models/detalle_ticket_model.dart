class DetalleTicketModel {
  String? idDetalleTicket;
  String? idTicket;
  String? tarifaNombre;
  String? tarifaPrecio;
  String? tarifaDetalleCantidad;
  String? idTarifa;
  String? tarifaDetalleSubTotal;
  String? tarifaDetalleEstado;

  DetalleTicketModel({
    this.idDetalleTicket,
    this.idTicket,
    this.tarifaNombre,
    this.tarifaPrecio,
    this.tarifaDetalleCantidad,
    this.idTarifa,
    this.tarifaDetalleSubTotal,
    this.tarifaDetalleEstado,
  });

  static List<DetalleTicketModel> fromJsonList(List<dynamic> json) => json.map((i) => DetalleTicketModel.fromJson(i)).toList();

  Map<String, dynamic> toJson() => {
        "idDetalleTicket": idDetalleTicket,
        "idTicket": idTicket,
        "tarifaNombre": tarifaNombre,
        "tarifaPrecio": tarifaPrecio,
        "tarifaDetalleCantidad": tarifaDetalleCantidad,
        "idTarifa": idTarifa,
        "tarifaDetalleSubTotal": tarifaDetalleSubTotal,
        "tarifaDetalleEstado": tarifaDetalleEstado,
      };
  factory DetalleTicketModel.fromJson(Map<String, dynamic> json) => DetalleTicketModel(
        idDetalleTicket: json["idDetalleTicket"],
        idTicket: json["idTicket"],
        tarifaNombre: json["tarifaNombre"],
        tarifaPrecio: json["tarifaPrecio"],
        tarifaDetalleCantidad: json["tarifaDetalleCantidad"],
        idTarifa: json["idTarifa"],
        tarifaDetalleSubTotal: json["tarifaDetalleSubTotal"],
        tarifaDetalleEstado: json["tarifaDetalleEstado"],
      );
}
