import 'package:flutter/material.dart';

class People extends StatelessWidget {
  const People({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _random = ModalRoute.of(context)!.settings.arguments as int;
    List<Pieple> allPeople = List.generate(
        _random,
        (index) => Pieple(index + 1, (index * 2).toString(),
            (_random / (index + 1)).toString()));
    return Scaffold(
      appBar: AppBar(
          title: Text("People"), centerTitle: true, leading: BackButton()),
      body: ListView.builder(
          itemCount: allPeople.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  var taped = allPeople[index];
                  Navigator.pushNamed(context, "/detailPieple",
                      arguments: taped);
                },
                leading: CircleAvatar(),
                title: Text(allPeople[index].id.toString()),
                subtitle: Text(allPeople[index].name),
                trailing: Text(allPeople[index].srname),
              ),
            );
          }),
    );
  }
}

class Pieple {
  int id = 0;
  String name = "";
  String srname = "";

  Pieple(this.id, this.name, this.srname);
}
