import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class VideoUploader extends StatefulWidget {
  final Function(File) onUpload;
  const VideoUploader({super.key, required this.onUpload});

  @override
  State<VideoUploader> createState() => _VideoUploaderState();
}

class _VideoUploaderState extends State<VideoUploader> {
  File? _videoFile;

  Future<void> _pickVideo() async {
    final picker = ImagePicker();
    final XFile? file = await picker.pickVideo(source: ImageSource.gallery);
    if (file == null) return;
    setState(() => _videoFile = File(file.path));
    widget.onUpload(_videoFile!);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (_videoFile != null) ...[
          Text('تم اختيار فيديو: \${_videoFile!.path.split('/').last}'),
          const SizedBox(height: 8),
        ],
        ElevatedButton(onPressed: _pickVideo, child: const Text('اختر فيديو/صورة')),
      ],
    );
  }
}
