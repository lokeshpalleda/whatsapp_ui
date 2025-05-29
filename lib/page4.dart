import 'package:flutter/material.dart';

class Chat {
  final String name;
  final IconData trailingicon;
  final String time;
  final String avatarUrl;
  final bool coming;

  Chat({
    required this.name,
    required this.trailingicon,
    required this.time,
    required this.avatarUrl,
    required this.coming,
  });
}

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  final List<Chat> chatList = [
    Chat(
      name: 'hemanth',
      trailingicon: Icons.call,
      time: 'Today 10:30AM',
      coming: true,
      avatarUrl: '',
    ),
    Chat(
      name: 'Puneeth',
      trailingicon: Icons.video_call,
      time:'Today 10:30AM',
      coming: true,
      avatarUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcKTWMuV7FwdpafLlU9Wqbf1Cw8lBElkgWpw&s',
    ),
    Chat(
      name: 'hemanth',
      trailingicon: Icons.call,
      time:'Today 10:30AM',
      coming: true,
      avatarUrl: '',
    ),
    Chat(
      name: 'Puneeth',
      trailingicon: Icons.call,
      time:'Today 10:30AM',
      coming: false,
      avatarUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcKTWMuV7FwdpafLlU9Wqbf1Cw8lBElkgWpw&s',
    ),
    Chat(
      name: 'sai',
      trailingicon: Icons.call,
      time:'Today 10:30AM',
      coming: true,
      avatarUrl: '',
    ),
    Chat(
      name: 'Puneeth',
      trailingicon: Icons.call,
      time:'Today 10:30AM',
      coming: true,
      avatarUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcKTWMuV7FwdpafLlU9Wqbf1Cw8lBElkgWpw&s',
    ),
    Chat(
      name: '207',
      trailingicon: Icons.video_call,
      time:'Today 10:30AM',
      coming: true,
      avatarUrl: '',
    ),
    Chat(
      name: 'Manobhi',
      trailingicon: Icons.call,
      time:'Today 10:30AM',
      coming: true,
      avatarUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVebUXmj8YQ7bBTxE3xe4rRPBBmqYk7ZT5cw&s',
    ),
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
                    'Calls',
                    style: TextStyle(
                      fontWeight: FontWeight.w100,
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Favorites',
                  style: TextStyle(fontWeight: FontWeight.w100, fontSize: 24),
                ),
                ListTile(
  leading: Container(
    decoration: BoxDecoration(
      color: Colors.green,
      borderRadius: BorderRadius.circular(50),
    ),
    padding: const EdgeInsets.all(8),
    child: const Icon(
      Icons.favorite,
      color: Colors.white,
      size: 20,
    ),
  ),
  title: const Text(
    'Add Favorite',
    style: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 16,
    ),
  ),
),
                Text(
                  'Recent',
                  style: TextStyle(fontWeight: FontWeight.w100, fontSize: 24),
                ),
                ListView.builder(
                  shrinkWrap: true, 
            physics: NeverScrollableScrollPhysics(),
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    final chat = chatList[index];
                    return ListTile(
                      leading: CircleAvatar(
    radius: 20,
    backgroundColor: Colors.grey[400],
    backgroundImage: ( chat.avatarUrl.isNotEmpty)
        ? (chat.avatarUrl.startsWith('http')
            ? NetworkImage(chat.avatarUrl)
            : AssetImage(chat.avatarUrl) as ImageProvider)
        : null,
    child: (chat.avatarUrl.isEmpty)
        ? const Icon(
            Icons.person,
            color: Colors.white,
            size: 18,
          )
        : null,
  ),
                      title: Text(chat.name),
                      subtitle: Row(
                        children: [
                          Icon(
                            chat.coming ? Icons.call_received : Icons.call_made,
                            size: 16,
                            color: chat.coming ? Colors.green : Colors.red,
                          ),
                          const SizedBox(width: 4),
                          Expanded(child: Text(chat.time)),
                        ],
                      ),
                      trailing: Icon(chat.trailingicon),
                    );
                  },
                ),
              ],
            ),
          ),
          ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
      backgroundColor: Colors.green,
      child: Icon(Icons.phone,color: Colors.black,),),
    );
  }
}
