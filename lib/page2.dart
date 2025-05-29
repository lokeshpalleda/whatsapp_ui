import 'package:flutter/material.dart';

class Chat {
  final String name;
  final String url;
  final Color colour;
  Chat({required this.colour,required this.name, required this.url});
}

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  final List<Chat> chatList = [
    Chat(name: 'My Status', url: '',colour: Colors.grey.shade200),
    Chat(name: 'puneeth', url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcKTWMuV7FwdpafLlU9Wqbf1Cw8lBElkgWpw&s',colour: Colors.blue.shade100),
    Chat(name: 'manobhi', url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVebUXmj8YQ7bBTxE3xe4rRPBBmqYk7ZT5cw&s',colour: Colors.green.shade100),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55),
        child: AppBar(
          flexibleSpace: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'Updates',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.qr_code_scanner_outlined),
                  ),
                  SizedBox(width: 10),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.camera_alt_outlined),
                  ),
                  PopupMenuButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    itemBuilder: (context) {
                      return [
                        const PopupMenuItem(child: Text('New Group')),
                        const PopupMenuItem(child: Text('New Broadcast')),
                        const PopupMenuItem(child: Text('Linked Devices')),
                        const PopupMenuItem(child: Text('Starred Messages')),
                        const PopupMenuItem(child: Text('Settings')),
                      ];
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Status',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
            ),
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                final chat = chatList[index];
                return Container(
                  width: 100,
                  padding: EdgeInsets.only(left: 4),
                  child: Card(
                    color: chat.colour,
                    elevation: 1,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 8,
                          top: 8,
                          child: CircleAvatar(
                           minRadius: 15,
                          backgroundColor: Colors.grey.shade300,
                          backgroundImage: (chat.url.isNotEmpty)
                           ? (chat.url.startsWith('http') 
                          ? NetworkImage(chat.url) 
                         : AssetImage(chat.url) as ImageProvider)
                        : null,
                         child: (chat.url.isEmpty)
                       ? Icon(Icons.person, size: 20, color: Colors.grey.shade700)
                        : null,
                        ),
                        ),
                        Positioned(
                          left: 8,
                          bottom: 8,
                          child: Text(
                            chat.name,
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Channels',
                  style: TextStyle(fontWeight: FontWeight.w100, fontSize: 24),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Explore',
                    style: TextStyle(fontWeight: FontWeight.w100, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/9/94/TV9TeluguLogo.jpg',
              ),
            ),
            title: Text('TV9 Telugu'),
            subtitle: Text('News Channel'),
            trailing: Text('yesterday'),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQW__LeJsnrSCy0twaCt-Mb8ew21k1ob41nZg&s',
              ),
            ),
            title: Text('IPL'),
            subtitle: Text('RCB won by 6 wickets'),
            trailing: Text('yesterday'),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZfmbHipRXXkG9dkBV1XCPVimbiGrVcRhNtQ&s',
              ),
            ),
            title: Text('CN'),
            subtitle: Text('Cartoon at 9AM'),
            trailing: Text('Today'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: Icon(Icons.add_a_photo_sharp, color: Colors.black),
      ),
    );
  }
}
