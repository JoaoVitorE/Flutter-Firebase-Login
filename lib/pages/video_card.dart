import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  const VideoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      child: Column(
        children: <Widget>[
          Image.network(
            'https://sempreupdate.com.br/wp-content/uploads/2016/10/download-de-todos-papeis-de-parede-ubuntu-wallpapers.jpg',
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.10,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      'https://scontent.fqps3-1.fna.fbcdn.net/v/t1.18169-9/10435589_757234294316260_9140050509581570353_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=174925&_nc_ohc=yEcsjXX8CfgAX8utJZq&_nc_ht=scontent.fqps3-1.fna&oh=00_AT_ifdP8UrSHhfUvtIXt_fcKjhzOMULpi--wVjStLruf2g&oe=62709593',
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
