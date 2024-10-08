import 'package:vr_iscool/modules/course_module/domain/entities/course_entity.dart';

extension CourseDto on CourseEntity {
  static fromJson(Map<String, dynamic>? json) {
    if (json == null) return CourseEntity.empty();

    return CourseEntity(
      id: json['codigo'] ?? -1,
      descricao: json['descricao'] ?? '',
      ementa: json['ementa'] ?? 'Sem descrição',
      totalAlunos: json['totalAlunos'] ?? -1,
    );
  }

  static fromDB(Map<String, dynamic>? json) {
    if (json == null) return CourseEntity.empty();

    return CourseEntity(
      id: json['codigo'] ?? -1,
      descricao: json['descricao'] ?? '',
      ementa: json['ementa'] ?? 'Sem descrição',
      totalAlunos: json['totalAlunos'] ?? -1,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'descricao': descricao,
      'ementa': ementa,
    };
  }

  Map<String, dynamic> toUpdate() {
    return {
      'codigo': id,
      'descricao': descricao,
      'ementa': ementa,
    };
  }
}
