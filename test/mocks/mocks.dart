import 'package:mocktail/mocktail.dart';
import 'package:queue_fullstack/src/queue/domain/entities/queue_entity.dart';
import 'package:queue_fullstack/src/queue/domain/repositories/queue_repository.dart';
import 'package:queue_fullstack/src/queue/infra/datasource/queue_datasource.dart';

class QueueReposutiryMock extends Mock implements IQueueRepository {}

class QueueEntityMock extends Mock implements QueueEntity {}

class IQueueDatasourceMock extends Mock implements IQueueDatasource {}