// ignore_for_file: must_be_immutable

part of 'registration_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Registration widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RegistrationEvent extends Equatable {}

/// Event that is dispatched when the Registration widget is first created.
class RegistrationInitialEvent extends RegistrationEvent {
  @override
  List<Object?> get props => [];
}
