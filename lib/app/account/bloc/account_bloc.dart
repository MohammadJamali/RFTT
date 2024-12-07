import 'package:bloc/bloc.dart';
import 'package:timetracker_api/timetracker_api.dart';

class AccountFormBloc extends Cubit<Account> {
  AccountFormBloc({Account state = const Account(id: '')}) : super(state);

  void updateAccountDetails({String? email, String? name}) {
    emit(state.copyWith(email: email, name: name));
  }

  void updateProfilePicture(String? base64) {
    emit(state.copyWith(profilePicture: base64));
  }

  void addTransactionActor(TransactionActor actor) {
    final updatedActors = [
      ...state.transactionActors ?? <TransactionActor>[],
      actor,
    ];
    emit(state.copyWith(transactionActors: updatedActors));
  }

  void removeTransactionActor(int index) {
    final updatedActors = List<TransactionActor>.from(
      state.transactionActors ?? [],
    )..removeAt(index);
    emit(state.copyWith(transactionActors: updatedActors));
  }

  void updateAccount(Account account) {
    emit(account);
  }
}
