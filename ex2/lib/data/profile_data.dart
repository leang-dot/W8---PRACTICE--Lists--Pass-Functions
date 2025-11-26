import 'package:flutter/material.dart';
import '../model/profile_tile_model.dart';

ProfileData ronanProfile = ProfileData(
  name: "Ronan",
  position: "Flutter Developer",
  avatarUrl: 'assets/ronan.png',
  tiles: [
    TileData(icon: Icons.phone, title: "Phone Number", value: "+123 456 7890"),
    TileData(icon: Icons.location_on, title: "Address", value: "123 Cambodia"),
    TileData(icon: Icons.email, title: "Mail", value: "ronan.ogogr@cadt.edu"),
  ],
);

ProfileData kwanProfile = ProfileData(
  name: "Kwan",
  position: "FullStack Developer At RaingKosal",
  avatarUrl: "assets/kwan.png",
  tiles: [
    TileData(icon: Icons.phone, title: "Phone Number", value: "+855 123 1010"),
    TileData(icon: Icons.location_on, title: "Address", value: "123 Cambodia"),
    TileData(icon: Icons.email , title: "Mail" , value: "yoljlomby.kwan@cadt.edu"),
  ],
);
List profileData = [ronanProfile , kwanProfile];
