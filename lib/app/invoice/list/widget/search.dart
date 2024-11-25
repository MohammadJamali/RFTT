import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timetracker/app/invoice/list/bloc/list_bloc.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (query) => context.read<InvoiceListBloc>().add(
            InvoiceListEvent.search(query),
          ),
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        hintText: 'Search Invoice...',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
      ),
    );
  }
}
