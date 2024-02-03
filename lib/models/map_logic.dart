import 'package:flutter/cupertino.dart';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:google_maps_webservice/places.dart';

Future<String> ShowGoogleAutoComplete(BuildContext context)
async {
  const kGoogleApiKey = "AIzaSyCW5KX0P0lEAGhYwvWfrqaKcwXKMvFrSv8";

  Prediction? p = await PlacesAutocomplete.show(
      offset: 0,
      radius: 1000,
      strictbounds: false,
      region: "us",
      language: "en",
      context: context,
      mode: Mode.overlay,
      apiKey: kGoogleApiKey,
      components: [new Component(Component.country, "us")],
      types: ["(cities)"],
      hint: "Search City");
  return p!.description!;
}