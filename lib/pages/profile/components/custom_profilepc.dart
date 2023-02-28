import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://uploads.laborx.com/gig/thumb_cropped_1080x1080_NJY_CgEvC2TVDS7Olu0bRxcXa8aUEQge.jpeg'),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              height: 36,
              width: 36,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(50),
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.camera_alt,
                  color: Colors.black45,
                  size: 20,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
