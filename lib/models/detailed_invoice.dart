import 'package:proklinik_models/models/booking_data.dart';
import 'package:proklinik_models/models/clinic.dart';
import 'package:proklinik_models/models/invoice.dart';

class DetailedInvoice {
  final Invoice invoice;
  final List<({BookingData visit, Clinic clinic})> records;

  DetailedInvoice({
    required this.invoice,
    required this.records,
  });

  @override
  String toString() {
    return "${records.map((e) => "${e.clinic.name_en} => ${e.visit.user_name} @ ${e.visit.date_time}").toList()}";
  }
}
