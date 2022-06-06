import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:queue_fullstack/src/queue/infra/datasource/queue_datasource.dart';

class QueueFirestoreDatasource implements IQueueDatasource {
  final FirebaseFirestore firestore;

  QueueFirestoreDatasource(this.firestore);

  @override
  Stream<List<Map>> getAllQueues() {
    final ref = firestore.collection('queue'); 
    final snapshot = ref.snapshots();

    return snapshot.map((e) => e.docs).map((_convert));
  }
   List<Map> _convert(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs){
     return docs.map((document) => {
          'id': document.id,
          ...document.data(),
      },).toList();
  }

}