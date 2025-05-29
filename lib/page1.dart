import 'package:flutter/material.dart';

class Chat {
  final String name;
  final String lastMessage;
  final String time;
  final String avatarUrl;

  Chat({
    required this.name,
    required this.lastMessage,
    required this.time,
    required this.avatarUrl,
  });
}

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _HomeState();
}

class _HomeState extends State<Page1> {
  final List<Chat> chatList = [
    Chat(
      name: 'Me',
      lastMessage: 'Hey, how are you?',
      time: '10:30 AM',
      avatarUrl: '',
    ),
    Chat(
      name: 'Puneeth',
      lastMessage: '19rupees recharge cheyra',
      time: '9:15 AM',
      avatarUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcKTWMuV7FwdpafLlU9Wqbf1Cw8lBElkgWpw&s',
    ),
    Chat(
      name: 'Hemanth',
      lastMessage: 'Bapatla hemanth',
      time: '9:00 AM',
      avatarUrl: '',
    ),
    Chat(
      name: 'Sai',
      lastMessage: 'all ok!',
      time: 'yesterday',
      avatarUrl: '',
    ),
    Chat(
      name: 'Manobhi',
      lastMessage: 'tarvatha msg chesta',
      time: 'yesterday',
      avatarUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVebUXmj8YQ7bBTxE3xe4rRPBBmqYk7ZT5cw&s',
    ),
    Chat(
      name: 'Adi',
      lastMessage: 'web dev',
      time: 'yesterday',
      avatarUrl: '',
    ),
    Chat(
      name: 'Naveen 150',
      lastMessage: 'srikakulam',
      time: 'yesterday',
      avatarUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpCaoBehfoOLw86XE0uaDfRbBgU2I13jVsUg&s',
    ),
    Chat(
      name: 'vivek sleepercell',
      lastMessage: 'okay',
      time: 'yesterday',
      avatarUrl: '',
    ),
    Chat(
      name: 'sarath',
      lastMessage: 'web dev',
      time: 'yesterday',
      avatarUrl: 'https://rukminim2.flixcart.com/image/850/1000/xif0q/action-figure/e/8/s/5-set-of-6-tom-and-jerry-action-figure-or-cake-topper-showpiece-original-imagg9ejgjcmgd9g.jpeg?q=90&crop=false',
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
                    'WhatsApp',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.green,
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                prefixIcon: Icon(Icons.search),
                hintText: 'Ask Meta AI or Search',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 9,
              itemBuilder: (context, index) {
                final chat = chatList[index];
                return ListTile(
  leading: CircleAvatar(
    radius: 20,
    backgroundColor: Colors.grey[400],
    backgroundImage: (chat.avatarUrl.isNotEmpty)
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
  subtitle: Text(chat.lastMessage),
  trailing: Text(chat.time),
);

              },
            ),
          ),
         
        ],
      ),
       floatingActionButton: FloatingActionButton(onPressed: (){},
       backgroundColor: Colors.green,
       child: Icon(Icons.chat,color: Colors.black,),
       ),
    );
  }
}
