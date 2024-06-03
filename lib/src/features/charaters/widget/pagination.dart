import 'package:flutter/material.dart';
import 'package:rick_and_morty_flutter/src/features/charaters/bloc/list_charaters_bloc.dart';

class Pagination extends StatelessWidget {
  const Pagination({required this.listCharatersBloc, super.key});
  final ListCharatersBloc listCharatersBloc;

  @override
  Widget build(BuildContext context) {
    String currentPage = listCharatersBloc.currentPage.toString();
    String totalPages = listCharatersBloc.totalPages.toString();

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextButton(
          onPressed: () {
            listCharatersBloc.previousPage();
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
            listCharatersBloc.nextPage();
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
