// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomePageEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomePageEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomePageEvent()';
}


}

/// @nodoc
class $HomePageEventCopyWith<$Res>  {
$HomePageEventCopyWith(HomePageEvent _, $Res Function(HomePageEvent) __);
}


/// Adds pattern-matching-related methods to [HomePageEvent].
extension HomePageEventPatterns on HomePageEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _AddWeightRecord value)?  addWeightRecord,TResult Function( _ChangeSelectedDay value)?  changeSelectedDay,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _AddWeightRecord() when addWeightRecord != null:
return addWeightRecord(_that);case _ChangeSelectedDay() when changeSelectedDay != null:
return changeSelectedDay(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _AddWeightRecord value)  addWeightRecord,required TResult Function( _ChangeSelectedDay value)  changeSelectedDay,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _AddWeightRecord():
return addWeightRecord(_that);case _ChangeSelectedDay():
return changeSelectedDay(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _AddWeightRecord value)?  addWeightRecord,TResult? Function( _ChangeSelectedDay value)?  changeSelectedDay,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _AddWeightRecord() when addWeightRecord != null:
return addWeightRecord(_that);case _ChangeSelectedDay() when changeSelectedDay != null:
return changeSelectedDay(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( WeightRecordModel weightRecord)?  addWeightRecord,TResult Function( DateTime selectedDay)?  changeSelectedDay,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _AddWeightRecord() when addWeightRecord != null:
return addWeightRecord(_that.weightRecord);case _ChangeSelectedDay() when changeSelectedDay != null:
return changeSelectedDay(_that.selectedDay);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( WeightRecordModel weightRecord)  addWeightRecord,required TResult Function( DateTime selectedDay)  changeSelectedDay,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _AddWeightRecord():
return addWeightRecord(_that.weightRecord);case _ChangeSelectedDay():
return changeSelectedDay(_that.selectedDay);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( WeightRecordModel weightRecord)?  addWeightRecord,TResult? Function( DateTime selectedDay)?  changeSelectedDay,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _AddWeightRecord() when addWeightRecord != null:
return addWeightRecord(_that.weightRecord);case _ChangeSelectedDay() when changeSelectedDay != null:
return changeSelectedDay(_that.selectedDay);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements HomePageEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomePageEvent.started()';
}


}




/// @nodoc


class _AddWeightRecord implements HomePageEvent {
  const _AddWeightRecord({required this.weightRecord});
  

 final  WeightRecordModel weightRecord;

/// Create a copy of HomePageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddWeightRecordCopyWith<_AddWeightRecord> get copyWith => __$AddWeightRecordCopyWithImpl<_AddWeightRecord>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddWeightRecord&&(identical(other.weightRecord, weightRecord) || other.weightRecord == weightRecord));
}


@override
int get hashCode => Object.hash(runtimeType,weightRecord);

@override
String toString() {
  return 'HomePageEvent.addWeightRecord(weightRecord: $weightRecord)';
}


}

/// @nodoc
abstract mixin class _$AddWeightRecordCopyWith<$Res> implements $HomePageEventCopyWith<$Res> {
  factory _$AddWeightRecordCopyWith(_AddWeightRecord value, $Res Function(_AddWeightRecord) _then) = __$AddWeightRecordCopyWithImpl;
@useResult
$Res call({
 WeightRecordModel weightRecord
});




}
/// @nodoc
class __$AddWeightRecordCopyWithImpl<$Res>
    implements _$AddWeightRecordCopyWith<$Res> {
  __$AddWeightRecordCopyWithImpl(this._self, this._then);

  final _AddWeightRecord _self;
  final $Res Function(_AddWeightRecord) _then;

/// Create a copy of HomePageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? weightRecord = null,}) {
  return _then(_AddWeightRecord(
weightRecord: null == weightRecord ? _self.weightRecord : weightRecord // ignore: cast_nullable_to_non_nullable
as WeightRecordModel,
  ));
}


}

/// @nodoc


class _ChangeSelectedDay implements HomePageEvent {
  const _ChangeSelectedDay({required this.selectedDay});
  

 final  DateTime selectedDay;

/// Create a copy of HomePageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeSelectedDayCopyWith<_ChangeSelectedDay> get copyWith => __$ChangeSelectedDayCopyWithImpl<_ChangeSelectedDay>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeSelectedDay&&(identical(other.selectedDay, selectedDay) || other.selectedDay == selectedDay));
}


@override
int get hashCode => Object.hash(runtimeType,selectedDay);

@override
String toString() {
  return 'HomePageEvent.changeSelectedDay(selectedDay: $selectedDay)';
}


}

/// @nodoc
abstract mixin class _$ChangeSelectedDayCopyWith<$Res> implements $HomePageEventCopyWith<$Res> {
  factory _$ChangeSelectedDayCopyWith(_ChangeSelectedDay value, $Res Function(_ChangeSelectedDay) _then) = __$ChangeSelectedDayCopyWithImpl;
@useResult
$Res call({
 DateTime selectedDay
});




}
/// @nodoc
class __$ChangeSelectedDayCopyWithImpl<$Res>
    implements _$ChangeSelectedDayCopyWith<$Res> {
  __$ChangeSelectedDayCopyWithImpl(this._self, this._then);

  final _ChangeSelectedDay _self;
  final $Res Function(_ChangeSelectedDay) _then;

/// Create a copy of HomePageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedDay = null,}) {
  return _then(_ChangeSelectedDay(
selectedDay: null == selectedDay ? _self.selectedDay : selectedDay // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc
mixin _$HomePageState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomePageState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomePageState()';
}


}

/// @nodoc
class $HomePageStateCopyWith<$Res>  {
$HomePageStateCopyWith(HomePageState _, $Res Function(HomePageState) __);
}


/// Adds pattern-matching-related methods to [HomePageState].
extension HomePageStatePatterns on HomePageState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _Success value)?  success,TResult Function( _Failure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Success() when success != null:
return success(_that);case _Failure() when failure != null:
return failure(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _Success value)  success,required TResult Function( _Failure value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _Success():
return success(_that);case _Failure():
return failure(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Success value)?  success,TResult? Function( _Failure value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Success() when success != null:
return success(_that);case _Failure() when failure != null:
return failure(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( DateTime? selectedDay)?  loaded,TResult Function( String message)?  success,TResult Function( String errorMessage,  List<WeightRecordModel>? weightRecords)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.selectedDay);case _Success() when success != null:
return success(_that.message);case _Failure() when failure != null:
return failure(_that.errorMessage,_that.weightRecords);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( DateTime? selectedDay)  loaded,required TResult Function( String message)  success,required TResult Function( String errorMessage,  List<WeightRecordModel>? weightRecords)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Loaded():
return loaded(_that.selectedDay);case _Success():
return success(_that.message);case _Failure():
return failure(_that.errorMessage,_that.weightRecords);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( DateTime? selectedDay)?  loaded,TResult? Function( String message)?  success,TResult? Function( String errorMessage,  List<WeightRecordModel>? weightRecords)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.selectedDay);case _Success() when success != null:
return success(_that.message);case _Failure() when failure != null:
return failure(_that.errorMessage,_that.weightRecords);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements HomePageState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomePageState.initial()';
}


}




/// @nodoc


class _Loading implements HomePageState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomePageState.loading()';
}


}




/// @nodoc


class _Loaded implements HomePageState {
  const _Loaded({this.selectedDay});
  

 final  DateTime? selectedDay;

/// Create a copy of HomePageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&(identical(other.selectedDay, selectedDay) || other.selectedDay == selectedDay));
}


@override
int get hashCode => Object.hash(runtimeType,selectedDay);

@override
String toString() {
  return 'HomePageState.loaded(selectedDay: $selectedDay)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $HomePageStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 DateTime? selectedDay
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of HomePageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedDay = freezed,}) {
  return _then(_Loaded(
selectedDay: freezed == selectedDay ? _self.selectedDay : selectedDay // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc


class _Success implements HomePageState {
  const _Success({required this.message});
  

 final  String message;

/// Create a copy of HomePageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessCopyWith<_Success> get copyWith => __$SuccessCopyWithImpl<_Success>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'HomePageState.success(message: $message)';
}


}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res> implements $HomePageStateCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) _then) = __$SuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(this._self, this._then);

  final _Success _self;
  final $Res Function(_Success) _then;

/// Create a copy of HomePageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Success(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Failure implements HomePageState {
  const _Failure({required this.errorMessage, final  List<WeightRecordModel>? weightRecords}): _weightRecords = weightRecords;
  

 final  String errorMessage;
 final  List<WeightRecordModel>? _weightRecords;
 List<WeightRecordModel>? get weightRecords {
  final value = _weightRecords;
  if (value == null) return null;
  if (_weightRecords is EqualUnmodifiableListView) return _weightRecords;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of HomePageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailureCopyWith<_Failure> get copyWith => __$FailureCopyWithImpl<_Failure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Failure&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other._weightRecords, _weightRecords));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage,const DeepCollectionEquality().hash(_weightRecords));

@override
String toString() {
  return 'HomePageState.failure(errorMessage: $errorMessage, weightRecords: $weightRecords)';
}


}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res> implements $HomePageStateCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) _then) = __$FailureCopyWithImpl;
@useResult
$Res call({
 String errorMessage, List<WeightRecordModel>? weightRecords
});




}
/// @nodoc
class __$FailureCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(this._self, this._then);

  final _Failure _self;
  final $Res Function(_Failure) _then;

/// Create a copy of HomePageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,Object? weightRecords = freezed,}) {
  return _then(_Failure(
errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,weightRecords: freezed == weightRecords ? _self._weightRecords : weightRecords // ignore: cast_nullable_to_non_nullable
as List<WeightRecordModel>?,
  ));
}


}

// dart format on
