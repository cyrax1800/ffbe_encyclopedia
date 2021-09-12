import 'package:cached_network_image/cached_network_image.dart';
import 'package:ffbe/gen/assets.gen.dart';
import 'package:ffbe/home/encyclopedia/model/encyclopediaViewPatam.dart';
import 'package:ffbe/model/type/ailmentType.dart';
import 'package:ffbe/model/type/element.dart';
import 'package:ffbe/model/type/equipmentType.dart';
import 'package:ffbe/model/type/race.dart';
import 'package:flutter/material.dart';

class ItemEncyclopedia extends StatelessWidget {
  final EncyclopediaViewParam encyclopediaViewParam;

  ItemEncyclopedia({required this.encyclopediaViewParam});

  @override
  Widget build(BuildContext context) {
    String stats = encyclopediaViewParam.stats.formatString();
    String additionalStats = encyclopediaViewParam.additionalStats.formatString();

    return Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      Assets.graphics.emptyIcon.path,
                      width: 64,
                      height: 64,
                      fit: BoxFit.fill,
                    ),
                    CachedNetworkImage(
                        imageUrl: encyclopediaViewParam.iconUrl,
                        fadeInDuration: Duration(milliseconds: 100),
                        width: 64,
                        height: 64,
                        fit: BoxFit.scaleDown),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 24,
                          height: 24,
                          child: Stack(
                            alignment: AlignmentDirectional.center,
                            children: [
                              Icon(Icons.star_rounded,
                                  color: Color(0xFFFFDF00)),
                              Text(
                                encyclopediaViewParam.rarity.toString(),
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Image.asset(
                      getEquipmentType(encyclopediaViewParam.type).image,
                      width: 20,
                      height: 20,
                    ),
                    if (encyclopediaViewParam.isTwoHanded)
                      Positioned.fill(
                          child: Align(
                        alignment: Alignment.bottomRight,
                        child: Image.asset(
                          Assets.graphics.weaponTwoHanded.path,
                          width: 20,
                          height: 20,
                          fit: BoxFit.contain,
                        ),
                      )),
                    if (encyclopediaViewParam.isNonStackable)
                      Positioned.fill(
                          child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                            color: Colors.white,
                            child: Icon(Icons.filter_1, size: 16.0)),
                      ))
                  ],
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        encyclopediaViewParam.name,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      if (stats.isNotEmpty) Text(stats),
                      if (additionalStats.isNotEmpty) Text(additionalStats),
                    ],
                  ),
                ),
              ],
            ),
            if (encyclopediaViewParam.elementInflict.isNotEmpty)
              Row(
                children: encyclopediaViewParam.elementInflict
                    .map((e) => _ItemDetailWidget(
                          imagePath: e.item.image,
                          value: e.value,
                          itemTypeImagePath: Assets.graphics.sword.path,
                        ))
                    .toList(),
              ),
            if (encyclopediaViewParam.elementResistance.isNotEmpty)
              Row(
                children: encyclopediaViewParam.elementResistance
                    .map((e) => _ItemDetailWidget(
                          imagePath: e.item.image,
                          value: e.value,
                          itemTypeImagePath: Assets.graphics.heavyShield.path,
                        ))
                    .toList(),
              ),
            if (encyclopediaViewParam.ailmentInflict.isNotEmpty)
              Row(
                children: encyclopediaViewParam.ailmentInflict
                    .map((e) => _ItemDetailWidget(
                          imagePath: e.item.image,
                          value: e.value,
                          itemTypeImagePath: Assets.graphics.sword.path,
                        ))
                    .toList(),
              ),
            if (encyclopediaViewParam.ailmentResistance.isNotEmpty)
              Row(
                children: encyclopediaViewParam.ailmentResistance
                    .map((e) => _ItemDetailWidget(
                          imagePath: e.item.image,
                          value: e.value,
                          itemTypeImagePath: Assets.graphics.heavyShield.path,
                        ))
                    .toList(),
              ),
            if (encyclopediaViewParam.physicalKiller.isNotEmpty)
              Row(
                children: encyclopediaViewParam.physicalKiller
                    .map((e) => Column(
                          children: [
                            Image.asset(e.item.physicalKillerImage,
                                width: 28, height: 28, fit: BoxFit.contain),
                            Text(
                              e.value.toString() + "%",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            )
                          ],
                        ))
                    .toList(),
              ),
            if (encyclopediaViewParam.magicalKiller.isNotEmpty)
              Row(
                children: encyclopediaViewParam.magicalKiller
                    .map(
                      (e) => Column(
                        children: [
                          Image.asset(e.item.magicalKillerImage,
                              width: 28, height: 28, fit: BoxFit.contain),
                          Text(
                            e.value.toString() + "%",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                    .toList(),
              ),
            if (encyclopediaViewParam.description.isNotEmpty)
              ...encyclopediaViewParam.description.map((e) =>
                  _ItemDescriptionWidget(
                      description: e.value, imageUrl: e.imageUrl)),
          ],
        ));
  }
}

class _ItemDetailWidget extends StatelessWidget {
  final String imagePath;
  final String itemTypeImagePath;
  final int value;

  _ItemDetailWidget(
      {required this.imagePath,
      required this.value,
      this.itemTypeImagePath = ""});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28,
      height: 28,
      child: Stack(
        children: [
          Image.asset(Assets.graphics.emptyIcon.path,
              width: 28, height: 28, fit: BoxFit.contain),
          Image.asset(imagePath, width: 16, height: 16, fit: BoxFit.contain),
          if (itemTypeImagePath.isNotEmpty)
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(itemTypeImagePath,
                  width: 12, height: 12, fit: BoxFit.contain),
            ),
          Container(
            margin: EdgeInsets.only(bottom: 4),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                value.toString() + "%",
                style: TextStyle(
                    fontSize: 10,
                    color: (value > 0) ? Colors.greenAccent : Colors.redAccent,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _ItemDescriptionWidget extends StatelessWidget {
  final String imageUrl;
  final String description;

  const _ItemDescriptionWidget(
      {Key? key, this.imageUrl = "", required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (imageUrl.isNotEmpty)
          CachedNetworkImage(
              imageUrl: imageUrl,
              fadeInDuration: Duration(milliseconds: 100),
              width: 24,
              height: 24,
              fit: BoxFit.scaleDown),
        Text(description)
      ],
    );
  }
}
