import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  /// Get the current user
  User? get currentUser => _firebaseAuth.currentUser;

  /// Sign up with email and password
  Future<User?> signUp({
    required String email,
    required String password,
    required String fullName,
  }) async {
    try {
      final UserCredential credential =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Update user profile with full name
      await credential.user?.updateDisplayName(fullName);

      return credential.user;
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'weak-password':
          throw Exception('The password provided is too weak.');
        case 'email-already-in-use':
          throw Exception('An account already exists for that email.');
        default:
          throw Exception('Error: ${e.message}');
      }
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }

  /// Log in with email and password
  Future<User?> login({
    required String email,
    required String password,
  }) async {
    try {
      final UserCredential credential =
          await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      return credential.user;
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'user-not-found':
          throw Exception('No user found for that email.');
        case 'wrong-password':
          throw Exception('Wrong password provided for that user.');
        case 'user-disabled':
          throw Exception('The user account has been disabled.');
        case 'too-many-requests':
          throw Exception('Too many login attempts. Try again later.');
        default:
          throw Exception('Error: ${e.message}');
      }
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }

  /// Log out the current user
  Future<void> logout() async {
    try {
      await _firebaseAuth.signOut();
    } catch (e) {
      throw Exception('Error logging out: $e');
    }
  }

  /// Reset password with email
  Future<void> resetPassword({required String email}) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
    } catch (e) {
      throw Exception('Error sending password reset email: $e');
    }
  }

  /// Get the current user ID
  String? get currentUserId => _firebaseAuth.currentUser?.uid;

  /// Check if user is authenticated
  bool get isAuthenticated => _firebaseAuth.currentUser != null;

  /// Listen to authentication state changes
  Stream<User?> authStateChanges() => _firebaseAuth.authStateChanges();
}
