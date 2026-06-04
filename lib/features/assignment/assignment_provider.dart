import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:unitask/models/assignment.dart';
import 'package:unitask/services/assignment_api_service.dart';

final assignemntApiServiceProvider = Provider(
  (ref) => AssignmentApiService(),
); // Provider

// 전체 과제 목록, 과제 분기

final assignmentProvider = AsyncNotifierProvider(AssignmentNotifier.new);

// 진행 중인 과제 (필터링)
final inProgressAssignmentProvider = Provider(
  (ref) => ref
      .watch(assignmentProvider)
      .whenData((l) = l.where((a) => !a.status.isCompleted).toList()),
);

// 완료 과제
final completedAssignmentProvider = Provider(
  (ref) => ref
      .watch(assignmentProvider)
      .whenData((l) => l.where((a) => a.status.isCompleted).toList()),
);

class AssignmentNotifier extends AsyncNotifier<List<Assignment>> {
  // 로그인 토큰, 미인증 시 예외처리 필요.
  String get _token {
    final token = ref.read(authProvider).value?.accessToken;
    if (token == null) throw Exception('로그인이 필요합니다.');
    return token;
  }

class AssignmentNotifier extends void AsyncNotifier<List<Assignment>> {

  @override
  FutureOr<List<Assignment>> build() {
    // TODO: implement build
    throw UnimplementedError();
  }
}
