// ignore_for_file: non_constant_identifier_names

String invoiceMail(
  String doctorName,
  int month,
  int year,
  String pdfLink,
  //TODO: add payment ref link
) =>
    '''
<!DOCTYPE html>

<html lang="en" xmlns:o="urn:schemas-microsoft-com:office:office"
xmlns:v="urn:schemas-microsoft-com:vml">

<body>

<h3>Greetings dear Dr. $doctorName,</h3>
<p>Please find attached the invoice for ProKliniK Bookings.</p> 
<p>The invoice covers the period from <b>1-$month-$year</b> to 
<b>1-${month == 12 ? 1 : month + 1}-${month == 12 ? year + 1 : year}</b>.</p> 
<p>Follow this <a href="$pdfLink"><b>link</b></a> to find the Pdf invoice detailing this months bookings.</p> 
<p>If you have any questions about the invoice, you can contact us at any time.</p>
<p>We look forward to receiving payment and working with you in the future.</p>
<p><b>Best Regards,</b></p>
<h4>ProKliniK Team.<h4>

</body>

</html>
''';

class MailInvoiceDetails {
  MailInvoiceDetails({
    required this.name_en,
    required this.month,
    required this.year,
    required this.link,
    required this.email,
    required this.invoice_id,
  });

  final String name_en;
  final int month;
  final int year;
  final String link;
  final String email;
  final String invoice_id;

  String get toHtmlInvoiceMail => '''
<!DOCTYPE html>

<html lang="en" xmlns:o="urn:schemas-microsoft-com:office:office"
xmlns:v="urn:schemas-microsoft-com:vml">

<body>

<h3>Greetings dear Dr. $name_en,</h3>
<p>Please find attached the invoice for ProKliniK Bookings.</p> 
<p>The invoice covers the period from <b>1-$month-$year</b> to 
<b>1-${month == 12 ? 1 : month + 1}-${month == 12 ? year + 1 : year}</b>.</p> 
<p>Follow this <a href="$link"><b>link</b></a> to find the Pdf invoice detailing this months bookings.</p> 
<p>If you have any questions about the invoice, you can contact us at any time.</p>
<p>We look forward to receiving payment and working with you in the future.</p>
<p><b>Best Regards,</b></p>
<h4>ProKliniK Team.<h4>

</body>

</html>
''';
}
