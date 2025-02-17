part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

final class NotesInitial extends NotesState {}

// final class NotesLoading extends NotesState {}

final class NotesSuccess extends NotesState {}

// final class NotesFailuer extends NotesState {
//   final String errMessage;

//   NotesFailuer(this.errMessage);
// }
