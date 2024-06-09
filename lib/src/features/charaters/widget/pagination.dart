import 'package:flutter/material.dart';
import 'package:rick_and_morty_flutter/src/features/charaters/providers/list_charaters_provider.dart';

class Pagination extends StatelessWidget {
  const Pagination({required this.listCharatersProvider, super.key});
  final ListCharatersProvider listCharatersProvider;

  @override
  Widget build(BuildContext context) {
    String currentPage = listCharatersProvider.currentPage.toString();
    String totalPages = listCharatersProvider.totalPages.toString();

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextButton(
          onPressed: () {
            listCharatersProvider.previousPage();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
          ),
          child: Icon(
            Icons.arrow_back_rounded,
            color: Colors.lime[400],
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          currentPage,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        TextButton(
          onPressed: () {
            listCharatersProvider.nextPage();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
          ),
          child: Icon(
            Icons.arrow_forward_rounded,
            color: Colors.lime[400],
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          totalPages,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
