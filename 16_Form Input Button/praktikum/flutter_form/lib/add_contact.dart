import 'package:flutter/material.dart';
import 'package:flutter_form/list_contact.dart';

class AddContact extends StatefulWidget{
  const AddContact({Key? key}) : super(key: key);

  @override 
  _AddContactState createState()=> _AddContactState();
}

class _AddContactState extends State<AddContact>{
  final _formKey = GlobalKey<FormState>();
  TextEditingController controller = TextEditingController();
  TextEditingController controller1 = TextEditingController();

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: const Text('Input Your data'),
        leading: InkWell(
          onTap: (){Navigator.pop(context);},
          child: const Icon(Icons.chevron_left),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            inputForm(),
            ElevatedButton.icon(
              onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => Listcontact(
                namaUser : controller.text,
                nomorUser : controller1.text,
                )));
              },
              icon: const Icon(Icons.save),
              label: const Text('Save your data')),
          ],
        ),
        ),
    );
  }

  Widget inputForm(){
    return Form(
      key: _formKey,
      child: Container(
        padding: const EdgeInsets.all(60),
      child: Column(
        children: [
          TextFormField(
            controller: controller,
            keyboardType: TextInputType.name,
            autofocus: true,
            decoration: InputDecoration(
              hintText: "Masukkan nama anda",
              labelText: 'Nama Anda',
              icon: const Icon(Icons.people),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            validator: (value){
              if(value!.isEmpty){
                return 'Nama tidak boleh kosong';
              }
              return null;
            },
          ),
          TextFormField(
            controller: controller1,
            keyboardType: TextInputType.phone,
            autofocus: true,
            decoration: InputDecoration(
              hintText: "0821xxxxxxxxx",
              labelText: 'Nomor Telepon',
              icon: const Icon(Icons.phone),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            validator: (value){
              if(value!.isEmpty){
                return 'Nomor tidak boleh kosong';
              }
              return null;
            },
          ),
        ],
      ),
      ),
    );
  }
}