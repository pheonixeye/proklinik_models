// ignore_for_file: constant_identifier_names

enum Status {
  unknown('unknown'),
  attended('attended'),
  not_attended('not-attended'),
  cancel_by_doctor('cancel-by-doctor'),
  cancel_by_patient('cancel-by-patient');

  final String value;

  const Status(this.value);

  static Status fromString(String? value) {
    return switch (value) {
      'unknown' => Status.unknown,
      'attended' => Status.attended,
      'not-attended' => Status.not_attended,
      'cancel-by-doctor' => Status.cancel_by_doctor,
      'cancel-by-patient' => Status.cancel_by_patient,
      _ => Status.unknown,
    };
  }
}
