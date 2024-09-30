import 'package:vr_iscool/modules/student_module/domain/entities/student_entity.dart';
import 'package:vr_iscool/modules/student_module/domain/typedefs/student_entity_result.dart';

abstract class StudentPostRepository {
  StudentEntityResult call(
    StudentEntity topStudentEntity,
  );
}
