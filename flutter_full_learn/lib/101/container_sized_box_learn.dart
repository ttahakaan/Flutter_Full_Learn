import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({Key? key}) : super(key: key);

  get margin => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: Text('a' * 500),
          ),
           const SizedBox.shrink(),
           SizedBox.square(dimension: 50,
           child: Text("b" * 50) ,),
           Container(
            constraints: const BoxConstraints(maxWidth: 200,minWidth: 100, minHeight: 25,maxHeight: 120,),
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.all(5),
            decoration: ProjectUtility.boxDecoration,
            child: Text("aa" * 100,maxLines: 2,),

            



            ),

           
           
           
           
        ],
      ),
    );
  }
}
class ProjectUtility {
static BoxDecoration boxDecoration = BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            // ignore: prefer_const_literals_to_create_immutables
            gradient:const LinearGradient(colors:[Colors.red,Colors.black] ) ,
            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [const BoxShadow(
              color: Colors.green,
              offset: Offset(0.1,1),
              blurRadius: 12
            )],
            border: Border.all(width: 10,color: Colors.white12));
  
}
class ProjectContainerDecoration extends BoxDecoration {

  ProjectContainerDecoration():super(
    borderRadius: BorderRadius.circular(15),
            // ignore: prefer_const_literals_to_create_immutables
            gradient:const LinearGradient(colors:[Colors.red,Colors.black] ) ,
            boxShadow: [const BoxShadow(
              color: Colors.green,
              offset: Offset(0.1,1),
              blurRadius: 12
            )],
            border: Border.all(width: 10,color: Colors.white12));
    

    
  
}