import 'package:timetracker_api/timetracker_api.dart';

class InvoiceRequest {
  const InvoiceRequest({
    required this.invoice,
    required this.requestId,
    required this.action,
    required this.hashedTopics,
    required this.request,
  });

  final Invoice invoice;
  final String requestId;
  final Map<dynamic, dynamic> action;
  final Iterable<String> hashedTopics;
  final Map<String, dynamic> request;
}
