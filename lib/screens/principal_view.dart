import 'package:flutter/material.dart';

class PrincipalView extends StatelessWidget {
  const PrincipalView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: const [
        FadeInImage(
            fit: BoxFit.cover,
            width: double.infinity,
            height: 300,
            placeholder: AssetImage(
                'https://media.istockphoto.com/id/924949200/vector/404-error-page-or-file-not-found-icon.jpg?s=170667a&w=0&k=20&c=gsR5TEhp1tfg-qj1DAYdghj9NfM0ldfNEMJUfAzHGtU='),
            image: NetworkImage(
                'https://viajes.nationalgeographic.com.es/medio/2019/01/30/stock-photo-canoe-52030162_ebe8ef72_1200x630.jpg')),
        CustomListTitleWidget(),
        ContainerIconsAndText(),
        ContainerDescriptionsTexts(),
      ],
    ));
  }
}

class CustomListTitleWidget extends StatelessWidget {
  const CustomListTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          const Expanded(
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 0),
              title: Text('Oeschginen Laken Campground'),
              subtitle: Text('Kendersteg, Switzerland'),
              trailing: Icon(color: Colors.red, Icons.star),
            ),
          ),
          Text(style: TextStyle(fontSize: 16, color: Colors.blue[400]), '41'),
        ],
      ),
    );
  }
}

class ContainerIconsAndText extends StatelessWidget {
  const ContainerIconsAndText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        IconWithText(icono: Icons.call, title: 'CALL'),
        IconWithText(icono: Icons.arrow_circle_left_outlined, title: 'ROUTE'),
        IconWithText(icono: Icons.share, title: 'SHARE'),
      ],
    );
  }
}

class ContainerDescriptionsTexts extends StatelessWidget {
  const ContainerDescriptionsTexts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
      child: Column(
        children: const [
          Text(
              overflow: TextOverflow.fade,
              textAlign: TextAlign.justify,
              'Lake Campground offers an excellent escape from the city, just a short drive northeast of the Los Angeles metro area. Its set on the shores of Jackson Lake, providing a scenic, peaceful setting for fishing, swimming and canoeing in Angeles National Forest. '),
          SizedBox(
            height: 20,
          ),
          Text(
              overflow: TextOverflow.fade,
              textAlign: TextAlign.justify,
              'Visitors enjoy exploring the Angeles Crest Scenic Byway, which offers incredible views of oak thickets, high desert landscapes, chaparral and pine forests. '),
        ],
      ),
    );
  }
}

class IconWithText extends StatelessWidget {
  final IconData icono;
  final String title;

  const IconWithText({
    super.key,
    required this.icono,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(size: 30, color: Colors.blue[400], icono),
        Text(style: TextStyle(fontSize: 16, color: Colors.blue[400]), title),
      ],
    );
  }
}
