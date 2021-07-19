import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:loja/components/custon_drawer/page_tile.dart';
import 'package:loja/stores/page_store.dart';


class PageSection extends StatelessWidget {

  final PageStore pageStore = GetIt.I<PageStore>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PageTile(
          label: "Anúncios",
          iconData: Icons.list,
          onTap: (){
            pageStore.setPage(0);
          },
          highlihted: pageStore == 0,
        ),
        PageTile(
            label: "Inserir Anúncios",
            iconData: Icons.edit,
            onTap: (){
              pageStore.setPage(1);
            },
            highlihted: pageStore == 1,
        ),
        PageTile(
            label: "Chat",
            iconData: Icons.chat,
            onTap: (){
              pageStore.setPage(2);
            },
            highlihted: pageStore == 2,
        ),
        PageTile(
            label: "Favoritos",
            iconData: Icons.favorite,
            onTap: (){
              pageStore.setPage(3);
            },
            highlihted: pageStore == 3,
        ),
        PageTile(
            label: "Minha Conta",
            iconData: Icons.person,
            onTap: (){
              pageStore.setPage(4);
            },
            highlihted: pageStore == 4,
        )
      ],
    );
  }
}
