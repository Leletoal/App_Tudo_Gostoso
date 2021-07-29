
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tudo_gostoso/models/recipe.dart';
import 'package:tudo_gostoso/style.dart';

class Details extends StatelessWidget{
  final Recipe recipeObj;
  Details(this.recipeObj);
  @override
  Widget build(BuildContext context) {
    
    return Container(
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 16,
          ),
          color: orangeTheme,
          child: Column(
             children: [
            Text(
              recipeObj.name,
            style: TextStyle(
              fontSize: 34,
              color: Colors.white,
            ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children:[
                    FaIcon(FontAwesomeIcons.solidClock,
                    color: Colors.white,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                        
                      ),
                      child: Text("Preparo",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,

                      ),
                      ),
                    ),
                    Text(
                      "${recipeObj.preparationTime} Min",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                    
                    ),                ]
                ),
                // 2° Coluna
                Column(
                  children: [
                    FaIcon(FontAwesomeIcons.cheese,
                    color: Colors.white,

                    
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                      ),
                      child: Text(
                        "RENDIMENTO",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.bold

                        ),


                      ),
                    ),
                    Text(
                      "${recipeObj.income} PORÇÕES",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,

                      ),
                    )

                  ],

                  
                ),
                // 3°Coluna
                Column(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.solidHeart,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                      ),
                      child: Text(
                        "FAVORITOS",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                      
                    ),
                    Text(
                        recipeObj.numberOfFavorites.
                        toString(),

                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,


                        ),
                      ),
                  ],

                ),
                // 4° Coluna
                Column (
                  children: [
                    FaIcon(
                      FontAwesomeIcons.solidCommentAlt,
                    color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical:5,
                      ),
                      child: Text("COMENTÁRIOS",
                   style: TextStyle(
                       color: Colors.white,
                       fontSize: 12,
                       fontWeight: FontWeight.bold,
                   )
                   
                   ),
                    ),
                    Text(
                      recipeObj.numberOfComments.
                      toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,

                      ),
                    ),
                   
                  ],
                )


             ],
            ),
          ],
          ),
        );
  }

}