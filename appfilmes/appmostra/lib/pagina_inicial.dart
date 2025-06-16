import 'package:flutter/material.dart';

class TelaInicio extends StatefulWidget {
  const TelaInicio({super.key});

  @override
  State<TelaInicio> createState() => _TelaInicioState();
}

class _TelaInicioState extends State<TelaInicio> {
  late PageController pageCtrl;
  final List<String> imagens = [
    'assets/img/postercaran.jpeg',
    'assets/img/postercher.jpg',
    'assets/img/posteroppen.jpg',
    'assets/img/postersilent.jpg',
    'assets/img/posterfnaf.jpg',
  ];

 


  @override
  void initState() {
    pageCtrl = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageCtrl.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 26, 26, 35),
      appBar: AppBar(
        title: const Text('Filmes',
        style: TextStyle( color: Colors.white,),
       ),
        backgroundColor: const Color.fromARGB(255, 94, 86, 141),
         leading: 
               IconButton(onPressed: () {} , icon:const Icon(Icons.menu),),
        ),
        
        body: Column(
          
          children: [
            Expanded(
              child: PageView(
    controller: pageCtrl,
    children: imagens.map((imagePath) => 
     Align(
                alignment: Alignment.topLeft,
                 // alinhamento no canto superior esquerdo
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, top: 16), // margem lateral
                  child: Image.asset(
                    imagePath,
                    height: 950,
                    width: 450,
                    fit: BoxFit.cover,
                  ),
                  
                ),
                
                
              ), 
              
    ).toList(),
    
              ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: () => pageCtrl.previousPage(
                    duration: const Duration(milliseconds: 300 ), curve: Curves.linear), 
                    child: const Text('Anterior'),
                    ),
                    TextButton(onPressed: () => pageCtrl.nextPage(
                    duration: const Duration(milliseconds: 500 ), curve: Curves.linear), 
                    child: const Text('Próximo'),
                    )
                ],
              ),
              
          ],
          
        ),
        
        
    );
  }
}