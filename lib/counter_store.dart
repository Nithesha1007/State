import 'package:mobx/mobx.dart';
import 'package:flutter/material.dart';
import 'package:state/counter_store.dart';
part 'counter_store.g.dart';

// ignore: library_private_types_in_public_api
class CounterStore = _CounterStore with _$CounterStore;

abstract class _CounterStore with Store{
  @observable
  int count =0;

  @action
  void increment(){
    count++;
  }
  @action
  void decrement(){
    count--;
  }

  @computed
  bool get isEven => count % 2 ==0;
}

