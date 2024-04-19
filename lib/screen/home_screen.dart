// main.dart
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:robotsandpencils/app.dart';

import '../models/rpannotation.dart';
import '../models/rpcomment.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final remoteStore = ref.watch(remoteStoreRepositoryProvider);
    final TextEditingController commentController = TextEditingController();
    final TextEditingController annotationController = TextEditingController();

    void addComment() {
      final comment = RPComment('1', commentController.text);
      remoteStore.saveComment(comment).then((_) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Comment added successfully'),
          ),
        );
      }).catchError((error) {
        // Handle error if API call fails
        if (kDebugMode) {
          print('Error adding comment: $error');
        }
      });
    }

    void addAnnotation() {
      final annotation = RPAnnotation('1', annotationController.text);
      remoteStore.saveAnnotation(annotation).then((_) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Annotation added successfully'),
          ),
        );
      }).catchError((error) {
        // Handle error if API call fails
        if (kDebugMode) {
          print('Error adding annotation: $error');
        }
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Api Caller'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: commentController,
              decoration: const InputDecoration(
                labelText: 'Add Comment',
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: addComment,
              child: const Text('Submit Comment'),
            ),
            const SizedBox(height: 32.0),
            TextField(
              controller: annotationController,
              decoration: const InputDecoration(
                labelText: "Add Annotation",
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: addAnnotation,
              child: const Text('Submit Annotation'),
            ),
          ],
        ),
      ),
    );
  }
}
