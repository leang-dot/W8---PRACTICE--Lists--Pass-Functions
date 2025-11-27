import 'package:flutter/material.dart';
import '../model/profile_tile_model.dart';

ProfileData meProfile = ProfileData(
  name: "Leang",
  position: "Super Code",
  avatarUrl: 'assets/me.jpg',
  tiles: [
    TileData(icon: Icons.phone, title: "Phone Number", value: "+123 456 7890"),
    TileData(icon: Icons.location_on, title: "Address", value: "123 Cambodia"),
    TileData(icon: Icons.email, title: "Mail", value: "leangochii@tmail.co"),
  ],
);

ProfileData ronaldoProfile = ProfileData(
  name: "Ronaldo",
  position: "Super Penalty",
  avatarUrl: "assets/ronaldo.jpg",
  tiles: [
    TileData(icon: Icons.phone, title: "Phone Number", value: "+855 123 1010"),
    TileData(icon: Icons.location_on, title: "Address", value: "123 Cambodia"),
    TileData(icon: Icons.email , title: "Mail" , value: "yessss@cambo.cypher"),
  ],
);
List profileData = [meProfile , ronaldoProfile];
