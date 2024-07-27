import 'package:flutter/material.dart';
class CategoryItem extends StatelessWidget {
  final String name;
  final String image;
  final String id;
  final String fullName;

  const CategoryItem({super.key, required this.name, required this.image, required this.id, required this.fullName});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){
          Navigator.pushNamed(context, "meals",arguments: {
            "name" : name,
            "id" : id,
            "image" : image,
            "fullName" : fullName,
          });
        },
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(image),fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(20)
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              decoration:  const BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
              ),
              width: double.infinity,
             child: Text(name,style: const TextStyle(color: Colors.white,fontSize: 30,fontStyle: FontStyle.italic),),
            )
          ],
        ),
      ),
    );
  }
}
