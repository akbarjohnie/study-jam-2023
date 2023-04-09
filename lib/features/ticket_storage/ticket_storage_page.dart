import 'package:flutter/material.dart';
import 'package:surf_flutter_study_jam_2023/dialogs/add_ticket_dialog.dart';

/// Экран “Хранения билетов”.
class TicketStoragePage extends StatelessWidget {
  const TicketStoragePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Хранилище данных'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 207, 62, 240),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: _TicketsCardWidget(),
        ),
      ),
      floatingActionButton: const _AddFileWidget(),
    );
  }
}

class _AddFileWidget extends StatelessWidget {
  const _AddFileWidget();

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: const Color.fromARGB(255, 207, 62, 240),
      label: const Text(
        'Добавить',
        style: TextStyle(
          fontSize: 16,
        ),
      ),
      icon: const Icon(Icons.add),
      onPressed: () {
        addTicketDialog(context);
      },
    );
  }
}

class _TicketsCardWidget extends StatelessWidget {
  const _TicketsCardWidget();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                onTap: () {},
                leading: const Icon(Icons.picture_as_pdf_rounded),
                title: const Text('The Enchanted Nightingale'),
                subtitle: const LinearProgressIndicator(
                  value: 0.3,
                  backgroundColor: Colors.grey,
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.cloud_download_outlined),
                  splashRadius: 25,
                ),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(
          height: 0,
          color: Colors.transparent,
        );
      },
      itemCount: 2,
    );
  }
}
