import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          flexibleSpace: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Text(
                    'Communities',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.qr_code_scanner_outlined, color: Colors.black),
                  ),
                  PopupMenuButton(
                    icon: const Icon(Icons.more_vert, color: Colors.black),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    itemBuilder: (context) {
                      return const [
                        PopupMenuItem(child: Text('New Group')),
                        PopupMenuItem(child: Text('New Broadcast')),
                        PopupMenuItem(child: Text('Linked Devices')),
                        PopupMenuItem(child: Text('Starred Messages')),
                        PopupMenuItem(child: Text('Settings')),
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
          Column(
          children: [
              ListTile(
                  onTap: () { },
                  leading: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
            borderRadius: BorderRadius.circular(12), 
            border: Border.all( color: Colors.grey,width:  0),
                    ),
                    child: IconButton(onPressed:(){}, 
                      icon: Icon(Icons.groups_2_outlined,color: Colors.grey[100],),
                      ),
                  ),
                  title: Text('New Community'),
                ),
              
              Container(
                height: 10,   
                color: Colors.grey[100],
              ),
              ListTile(
                leading: CircleAvatar(radius: 20,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6rx2OQUsLOEALnaG2ar9cpBJ2ETkhQomI_Q&s'),),
                title: Text('FULL STACK AY 2023-2027'),
              ),
              Divider(),
              ListTile(
                onTap: (){},
                leading: CircleAvatar(radius: 20,backgroundImage: NetworkImage('https://c8.alamy.com/comp/W384AF/announcement-ribbon-announcement-isolated-sign-announcement-banner-W384AF.jpg'),),
                title: Text('Announcements'),
                subtitle: Text('~coding support'),
                trailing: Text('Yesterday'),
              ),
              ListTile(
                onTap: (){},
                leading: CircleAvatar(radius: 20,backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxQZ-DB8BiI6P7KAgkEADa6Q9mQcq_CWDh7g&s'),),
                title: Text('Doubt clarrification full stack',overflow: TextOverflow.ellipsis,),
                subtitle: Text('~coding support'),
                trailing: Text('Yesterday'),
              ),
              ListTile(
                onTap: (){},
                leading: Text('>'),
                title: Text('View all'),
              ),
              Container(
                height: 10,   
                color: Colors.grey[100],
              ),
          ],
        ),
        ],
      ),
    );
  }
}
