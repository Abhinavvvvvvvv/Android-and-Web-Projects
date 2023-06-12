import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileView extends StatefulWidget {
  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(FontAwesomeIcons.cartShopping),
            onPressed: () {
              print('Basket window');
            },
          )
        ],
        backgroundColor: Colors.black,
        title: Text(
          'Account',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 300.0,
                  width: 400.0,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Our Project',
                          style: TextStyle(color: Colors.white, fontSize: 24.0),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(FontAwesomeIcons.google,
                                  color: Colors.white),
                              Text(
                                'spotify.verse@gmail.com',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 20.0),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: MaterialButton(
                            onPressed: () {},
                            child: Text(
                              'Become an instructor',
                              style: TextStyle(
                                  color: Colors.lightBlue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ]),
                ),
                Text(
                  'Video Preference',
                  style: TextStyle(color: Colors.grey, fontSize: 14.0),
                ),
                ListTile(
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Download Options',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
                ListTile(
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Video Playback Options',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
                Text(
                  'Account Settings',
                  style: TextStyle(color: Colors.grey, fontSize: 14.0),
                ),
                ListTile(
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Account Security',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
                ListTile(
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Email Notification Preferences',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
                Text(
                  'Support',
                  style: TextStyle(color: Colors.grey, fontSize: 14.0),
                ),
                ListTile(
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                  title: Text(
                    'About Courseverse',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
                ListTile(
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                  title: Text(
                    'About Courseverse for Business',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
                ListTile(
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                  title: Text(
                    'FAQs',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
                ListTile(
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Share the Courseverse App',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
                Center(
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      'Sign Out',
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Center(
                    child: Text(
                      'Spotify v1.0.0',
                      style: TextStyle(color: Colors.grey, fontSize: 14.0),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
