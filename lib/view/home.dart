import 'package:fltr_mockito_null_safety/controller/user_ctrl.dart';
import 'package:fltr_mockito_null_safety/locator.dart';
import 'package:fltr_mockito_null_safety/model/user.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users '),
      ),
      body: Container(
        child: FutureBuilder<List<User>>(
          future: getIt<UserController>().getUsers(),
          builder: (BuildContext context, AsyncSnapshot<List<User>> snapshot) {
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  if (snapshot.connectionState == ConnectionState.waiting)
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  if (snapshot.hasData) if (snapshot.data!.isNotEmpty &&
                      snapshot.connectionState == ConnectionState.done)
                    return Row(
                      children: [
                        Text('My name is ${snapshot.data![index].name}, '),
                        Text(
                            'and i am ${snapshot.data![index].age.toString()}'),
                      ],
                    );
                  else
                    return Center(
                      child: Text('No data exist'),
                    );
                  else
                    return Center(
                      child: Text('No data exist'),
                    );
                });
          },
        ),
      ),
    );
  }
}
