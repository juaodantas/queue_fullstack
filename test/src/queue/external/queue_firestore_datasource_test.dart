import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:queue_fullstack/src/queue/external/queue_firestore_datasource.dart';

void main() {
  test('queue firestore datasource getAllQueues', () async {
      final firestore = FakeFirebaseFirestore();
      await firestore.collection('queue').add( {
          'id': 'uahdshua',
          'title': 'title',
          'priority': 1,
          'abbr': 'adshua',
          'orders': [
            {
              'id': 'uahdshua',
              'position': 1,
              'status': 'attending',
              'timestamp': '2022-03-31',
            }
          ],
        });
        final datasource = QueueFirestoreDatasource(firestore);

        final result = datasource.getAllQueues();

        expect(result, emits(isA<List<Map>>()));

  });
}