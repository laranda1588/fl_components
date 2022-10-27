
import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';


class CardScreen extends StatelessWidget {

  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric( horizontal:  20, vertical: 10),
        children: const[

          CustomCardType1(),
          SizedBox( height: 10,),
          CustomCardType2(imageUrl: 'https://tekcrispy.com/wp-content/uploads/2022/08/conciencia.png', name: 'Consciencia (conocimiento de la propia existencia)',),
          SizedBox( height: 10,),
          CustomCardType2(imageUrl: 'https://misteriored.com/wp-content/uploads/2020/10/9302839-14866916-1-2048x1151.jpg', name: 'Constantemente, estés donde estés, recuérdate a ti mismo.'),
          SizedBox( height: 10,),
          CustomCardType2(imageUrl: 'https://elsemanario.com/wp-content/uploads/2019/05/ego-yo-self.jpg',name: 'Ser consciente de “quién soy y cómo soy”',),
        ],
      )
    );
  }
}

