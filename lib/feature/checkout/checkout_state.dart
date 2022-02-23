part of 'checkout_cubit.dart';

@immutable
abstract class CheckoutState {}

class CheckoutInitial extends CheckoutState {}
class CheckoutChangCheckBox extends CheckoutState {}
class CheckoutChangAddress extends CheckoutState {}
