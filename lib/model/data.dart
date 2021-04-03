//NOTE: THIS IS THE MOCK DATA THAT WILL USE INSIDE THE APP

import 'package:flutter/material.dart';

class User {
  final String givenName;
  final String familyName;
  final String imageUrl;
  const User({
    @required this.givenName,
    @required this.familyName,
    @required this.imageUrl,
  });
}

// NOTE: Current user data
const User currentUser = User(
  givenName: "Denny",
  familyName: "Raymond",
  imageUrl:
      "https://images.unsplash.com/photo-1616971655744-cf17111e57ed?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=651&q=80",
);

const List<User> _allUsers = [
  User(
    givenName: "Aurellia",
    familyName: "Darmawan",
    imageUrl:
        "https://images.unsplash.com/photo-1537111166787-cac8c5491c6c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
  ),
  User(
    givenName: "Billy",
    familyName: "Ferdinandus",
    imageUrl:
        "https://images.unsplash.com/photo-1614958708511-3fa50b0bdd8f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=320&q=80",
  ),
  User(
    givenName: "David",
    familyName: "Hermawan",
    imageUrl:
        "https://images.unsplash.com/photo-1579776638229-1f37ebebcf8f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
  ),
  User(
    givenName: "Angie",
    familyName: "David",
    imageUrl:
        "https://images.unsplash.com/photo-1616896232762-2a8d62a8ee2d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=80",
  ),
  User(
    givenName: "Valentin",
    familyName: "Lacoste",
    imageUrl:
        "https://images.unsplash.com/photo-1606823803245-666d84c5d13c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
  ),
  User(
    givenName: "Joshua",
    familyName: "Mcarthur",
    imageUrl:
        "https://images.unsplash.com/photo-1616621288142-15340a92ef37?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
  ),
  User(
    givenName: "Jakob",
    familyName: "Rosen",
    imageUrl:
        "https://images.unsplash.com/photo-1616702577614-70b4c988ddd4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
  ),
];

class Room {
  final String name;
  final String club;
  final String time;
  final List<User> speaker;
  final List<User> followedBySpeakers;
  final List<User> others;
  const Room({
    @required this.name,
    @required this.club,
    this.time,
    this.speaker,
    this.followedBySpeakers,
    this.others,
  });
}

const List<Room> upcomingRoomsList = [
  Room(
    name: "Dunia masa kini",
    club: "Social problem",
    time: '3.00 PM',
  ),
  Room(
    name: "What's new in Flutter",
    club: "Flutter",
    time: '1.00 PM',
  ),
  Room(
    name: "Good news from Indonesia",
    club: "Indonesia Youth Society",
    time: '6.00 PM',
  ),
  Room(
    name: "Techie Wacky",
    club: "",
    time: '8.00 PM',
  ),
];

final List<Room> roomsList = [
  Room(
    name: "What happen in holy week?",
    club: "Church 2.0",
    speaker: (List<User>.from(_allUsers)..shuffle()).getRange(0, 3).toList(),
    followedBySpeakers: List<User>.from(_allUsers)..shuffle(),
    others: List<User>.from(_allUsers)..shuffle(),
  ),
  Room(
    name: "What is minimalist?",
    club: "Minimalist culture",
    speaker: (List<User>.from(_allUsers)..shuffle()).getRange(0, 3).toList(),
    followedBySpeakers: List<User>.from(_allUsers)..shuffle(),
    others: List<User>.from(_allUsers)..shuffle(),
  ),
  Room(
    name: "Apa kabar Indonesia? 🏳",
    club: "GNFI Society",
    speaker: (List<User>.from(_allUsers)..shuffle()).getRange(0, 3).toList(),
    followedBySpeakers: List<User>.from(_allUsers)..shuffle(),
    others: List<User>.from(_allUsers)..shuffle(),
  ),
];
