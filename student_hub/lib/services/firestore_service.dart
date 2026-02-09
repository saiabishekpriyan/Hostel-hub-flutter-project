import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  /// Add user data to Firestore
  Future<void> addUserData({
    required String uid,
    required Map<String, dynamic> userData,
  }) async {
    try {
      await _db.collection('users').doc(uid).set(userData);
    } catch (e) {
      throw Exception('Error adding user data: $e');
    }
  }

  /// Get user data from Firestore
  Future<Map<String, dynamic>?> getUserData(String uid) async {
    try {
      final DocumentSnapshot<Map<String, dynamic>> snapshot =
          await _db.collection('users').doc(uid).get();

      return snapshot.data();
    } catch (e) {
      throw Exception('Error getting user data: $e');
    }
  }

  /// Update user data in Firestore
  Future<void> updateUserData({
    required String uid,
    required Map<String, dynamic> data,
  }) async {
    try {
      await _db.collection('users').doc(uid).update(data);
    } catch (e) {
      throw Exception('Error updating user data: $e');
    }
  }

  /// Delete user data from Firestore
  Future<void> deleteUserData(String uid) async {
    try {
      await _db.collection('users').doc(uid).delete();
    } catch (e) {
      throw Exception('Error deleting user data: $e');
    }
  }

  /// Get all users (for admin purposes)
  Future<List<Map<String, dynamic>>> getAllUsers() async {
    try {
      final QuerySnapshot<Map<String, dynamic>> snapshot =
          await _db.collection('users').get();

      return snapshot.docs.map((doc) {
        return {'id': doc.id, ...doc.data()};
      }).toList();
    } catch (e) {
      throw Exception('Error getting all users: $e');
    }
  }

  /// Stream user data in real-time
  Stream<DocumentSnapshot<Map<String, dynamic>>> getUserDataStream(
      String uid) {
    return _db.collection('users').doc(uid).snapshots();
  }

  /// Stream all users in real-time
  Stream<List<Map<String, dynamic>>> getAllUsersStream() {
    return _db.collection('users').snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        return {'id': doc.id, ...doc.data()};
      }).toList();
    });
  }

  /// Add a custom document to a collection
  Future<String> addDocument({
    required String collectionPath,
    required Map<String, dynamic> data,
  }) async {
    try {
      final DocumentReference docRef =
          await _db.collection(collectionPath).add(data);
      return docRef.id;
    } catch (e) {
      throw Exception('Error adding document: $e');
    }
  }

  /// Update a custom document
  Future<void> updateDocument({
    required String collectionPath,
    required String docId,
    required Map<String, dynamic> data,
  }) async {
    try {
      await _db.collection(collectionPath).doc(docId).update(data);
    } catch (e) {
      throw Exception('Error updating document: $e');
    }
  }

  /// Delete a custom document
  Future<void> deleteDocument({
    required String collectionPath,
    required String docId,
  }) async {
    try {
      await _db.collection(collectionPath).doc(docId).delete();
    } catch (e) {
      throw Exception('Error deleting document: $e');
    }
  }

  /// Get documents from a collection
  Future<List<Map<String, dynamic>>> getDocuments(String collectionPath) async {
    try {
      final QuerySnapshot<Map<String, dynamic>> snapshot =
          await _db.collection(collectionPath).get();

      return snapshot.docs.map((doc) {
        return {'id': doc.id, ...doc.data()};
      }).toList();
    } catch (e) {
      throw Exception('Error getting documents: $e');
    }
  }

  /// Stream documents from a collection
  Stream<List<Map<String, dynamic>>> getDocumentsStream(
      String collectionPath) {
    return _db.collection(collectionPath).snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        return {'id': doc.id, ...doc.data()};
      }).toList();
    });
  }
}
