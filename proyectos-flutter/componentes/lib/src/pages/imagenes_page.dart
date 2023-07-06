import 'package:flutter/material.dart';

class ImagenesPage extends StatelessWidget {
  const ImagenesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imagenes'),
      ),
      body: const SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/logo-unah-vs-github.jpg'),
                width: 350,
                fit: BoxFit.cover,
              ),
              // Image.asset('assets/logo-unah-vs-github.jpg')
              SizedBox(
                width: double.infinity,
                child: Card(
                  color: Colors.blue,
                  child: Image(
                    image: NetworkImage(
                      'https://1.bp.blogspot.com/-9EQ8GPdCjU0/XA2ZtxaVbGI/AAAAAAAAPV4/lYHRhWPRuFYZ-kAb5vANsHp-olPTRRz7ACLcBGAs/s640/LOGO%2BUNAH%2BPHOTOSHOP.png',
                    ),
                    height: 200,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
