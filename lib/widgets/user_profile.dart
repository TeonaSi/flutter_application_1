import 'package:flutter/material.dart';

class _UserNicknameWidget extends StatelessWidget {
  const _UserNicknameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('@JonFir',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 17,
        ));
  }
}

class _UserPhoneWidget extends StatelessWidget {
  const _UserPhoneWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('+ 380980612992',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 18,
        ));
  }
}

class _UserNameWidget extends StatelessWidget {
  const _UserNameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Teona Sichinava <Teo> Merabivna',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ));
  }
}

class _AvatarWidget extends StatelessWidget {
  const _AvatarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(width: 100, height: 100, child: Placeholder());
  }
}

class MenuRowData {
  final IconData icon;
  final String text;

  MenuRowData(this.icon, this.text);
}

class _MenuWidget extends StatelessWidget {
  final List<MenuRowData> menuRow;
  const _MenuWidget({
    Key? key,
    required this.menuRow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: menuRow.map((data) => _MenuWidgetRow(data: data)).toList(),
      ),
    );
  }
}

class _MenuWidgetRow extends StatelessWidget {
  final MenuRowData data;

  const _MenuWidgetRow({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(data.icon),
          SizedBox(width: 15),
          Expanded(child: Text(data.text)),
          Icon(Icons.chevron_right_sharp),
        ],
      ),
    );
  }
}

class UserProfile extends StatelessWidget {
  List<MenuRowData> firstmenuRow = [
    MenuRowData(Icons.favorite, 'Избранное'),
    MenuRowData(Icons.call, 'Звонки'),
    MenuRowData(Icons.computer, 'Устройства'),
    MenuRowData(Icons.folder, 'Папка с чатами'),
  ];
  List<MenuRowData> secondtmenuRow = [
    MenuRowData(Icons.notifications, 'Уведомление и звуки'),
    MenuRowData(Icons.privacy_tip, 'Конфидециальность'),
    MenuRowData(Icons.date_range, 'Данние и память'),
    MenuRowData(Icons.brush, 'Оформление'),
    MenuRowData(Icons.language, 'Язык'),
  ];

  List<MenuRowData> thridMenuRow = [
    MenuRowData(Icons.lock_clock, 'Apple Watch'),
  ];
  List<MenuRowData> fourtMenuRow = [
    MenuRowData(Icons.help, 'Помощь'),
    MenuRowData(Icons.question_answer, 'Вопроси в Телеграм'),
  ];

  UserProfile();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('Настройки')),
      body: Container(
        width: double.infinity,
        child: ListView(
          children: [
            // _UserInfo(),
            SizedBox(height: 30),
            _MenuWidget(menuRow: firstmenuRow),
            SizedBox(height: 30),
            _MenuWidget(menuRow: secondtmenuRow),
            SizedBox(height: 30),
            _MenuWidget(menuRow: thridMenuRow),
            SizedBox(height: 30),
            _MenuWidget(menuRow: fourtMenuRow),
          ],
        ),
      ),
    );
  }
}
