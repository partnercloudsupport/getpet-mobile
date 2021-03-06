// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pets.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Shelter _$ShelterFromJson(Map<String, dynamic> json) {
  return Shelter(
      id: json['id'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String);
}

Map<String, dynamic> _$ShelterToJson(Shelter instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone
    };

PetPhoto _$PetPhotoFromJson(Map<String, dynamic> json) {
  return PetPhoto(photo: json['photo'] as String);
}

Map<String, dynamic> _$PetPhotoToJson(PetPhoto instance) =>
    <String, dynamic>{'photo': instance.photo};

Pet _$PetFromJson(Map<String, dynamic> json) {
  return Pet(
      id: json['id'] as int,
      name: json['name'] as String,
      shortDescription: json['short_description'] as String,
      description: json['description'] as String,
      photos: (json['profile_photos'] as List)
          ?.map((e) =>
              e == null ? null : PetPhoto.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      profilePhoto: json['photo'] as String,
      shelter: json['shelter'] == null
          ? null
          : Shelter.fromJson(json['shelter'] as Map<String, dynamic>),
      available: json['is_available'] as bool);
}

Map<String, dynamic> _$PetToJson(Pet instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'is_available': instance.available,
      'short_description': instance.shortDescription,
      'photo': instance.profilePhoto,
      'description': instance.description,
      'profile_photos': instance.photos,
      'shelter': instance.shelter
    };
