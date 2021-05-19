import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

class LearnerHomeScreen extends StatefulWidget {
  @override
  _LearnerHomeScreenState createState() => _LearnerHomeScreenState();
}

class _LearnerHomeScreenState extends State<LearnerHomeScreen> {


  void generateVideoThumbnails() async {
    final uint8list = await VideoThumbnail.thumbnailData(
      video: 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
      imageFormat: ImageFormat.JPEG,
      maxWidth: 128, // specify the width of the thumbnail, let the height auto-scaled to keep the source aspect ratio
      quality: 25,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'What Are you looking for today?',
                  style: TextStyle(
                    fontSize: 18
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:Container(
                    height: 50,
                    child: ListView(

                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Chip(
                            labelPadding: EdgeInsets.all(2.0),
                            label: Text(
                              'Mathematics',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            backgroundColor: Colors.grey[60],
                            shadowColor: Colors.grey[60],
                            padding: EdgeInsets.all(8.0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Chip(
                            labelPadding: EdgeInsets.all(2.0),
                            label: Text(
                              'Life Orientation',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            backgroundColor: Colors.grey[60],
                            shadowColor: Colors.grey[60],
                            padding: EdgeInsets.all(8.0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Chip(
                            labelPadding: EdgeInsets.all(2.0),
                            label: Text(
                              'Geography',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            backgroundColor: Colors.grey[60],
                            shadowColor: Colors.grey[60],
                            padding: EdgeInsets.all(8.0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Chip(
                            labelPadding: EdgeInsets.all(2.0),
                            label: Text(
                              'Engineering Graphics Design',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            backgroundColor: Colors.grey[60],
                            shadowColor: Colors.grey[60],
                            padding: EdgeInsets.all(8.0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Chip(
                            labelPadding: EdgeInsets.all(2.0),
                            label: Text(
                              'English FAL',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            backgroundColor: Colors.grey[60],
                            shadowColor: Colors.grey[60],
                            padding: EdgeInsets.all(8.0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Chip(
                            labelPadding: EdgeInsets.all(2.0),
                            label: Text(
                              'Business Studies',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            backgroundColor: Colors.grey[60],
                            shadowColor: Colors.grey[60],
                            padding: EdgeInsets.all(8.0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Chip(
                            labelPadding: EdgeInsets.all(2.0),
                            label: Text(
                              'History',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            backgroundColor: Colors.grey[60],
                            shadowColor: Colors.grey[60],
                            padding: EdgeInsets.all(8.0),
                          ),
                        ),

                      ],
                    ),
                  )
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Nearby Tutors',
                  style: TextStyle(
                      fontSize: 18
                  ),
                ),
                Container(
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.teal,
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/images/placeholders/appdev.jpeg'),
                              radius: 38,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.teal,
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/images/placeholders/appdev.jpeg'),
                              radius: 38,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.teal,
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/images/placeholders/appdev.jpeg'),
                              radius: 38,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.teal,
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/images/placeholders/appdev.jpeg'),
                              radius: 38,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.teal,
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/images/placeholders/appdev.jpeg'),
                              radius: 38,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.teal,
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/images/placeholders/appdev.jpeg'),
                              radius: 38,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                      'assets/images/placeholders/placeholder_home_banner.jpeg',
                  ),
                ),
                Text(
                  'Videos',
                  style: TextStyle(
                      fontSize: 18
                  ),
                ),
                Container(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset('assets/images/placeholders/placeholder_home_video.jpg',
                          width: 150,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset('assets/images/placeholders/placeholder_home_video.jpg',
                          width: 150,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset('assets/images/placeholders/placeholder_home_video.jpg',
                          width: 150,),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
