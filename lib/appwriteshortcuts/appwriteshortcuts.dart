import 'package:appwrite/appwrite.dart';

class AppwriteShortcuts {
  static const String projectID = '64b9240bd7939d3f858f';
  static const String endpoint = 'http://68.183.92.66/v1';
  static const String usersCollection = '64cd55aa2ea9f21ea521';
  static const String databaseID = '64cd55aa2ea9f21ea521';
}

Client client = Client(
  endPoint: AppwriteShortcuts.endpoint,
  selfSigned: true,
);

Account account = Account(client);

Databases database = Databases(client);

void fun() async {
  await database.createDocument(
      collectionId: AppwriteShortcuts.usersCollection,
      data: {'name': 'John Doe', 'email': ''},
      databaseId: AppwriteShortcuts.databaseID,
      documentId: ID.unique());
}
