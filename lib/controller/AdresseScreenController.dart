import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:livraison_app/Controller/LoginScreenController.dart';


class AdresseScreenController extends GetxController{
@override
  void onClose() {
    Adresse.dispose();
    super.onClose();
  }
  bool submitAdresse=false;
  final Adresse= new TextEditingController();
  void onSubmitAdresse() {
    submitAdresse=Adresse.text.isNotEmpty;
    update();
  }

 /* static const kGoogleApiKey = "AIzaSyD4jXJ0UNr_OR-fsAwK9gjp6eRYLDX0aR8";
  void onError(PlacesAutocompleteResponse response) {
      Get.snackbar('', '${response.errorMessage}');
  }

  Future<void> handlePressButton(BuildContext context) async {
    Prediction? p = await PlacesAutocomplete.show(
        context: context,
        onError: onError,
        apiKey:kGoogleApiKey,
        mode: Mode.overlay,
        language: "fr",
        decoration: InputDecoration(
          hintText: 'Search',
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
        ),
        components: [new Component(Component.country, "fr")]);
  }

  Future<Null> displayPrediction(Prediction p) async {
    if (p != null) {
      // get detail (lat/lng)
      GoogleMapsPlaces _places = GoogleMapsPlaces(
        apiKey: kGoogleApiKey,
        apiHeaders: await GoogleApiHeaders().getHeaders(),
      );
      PlacesDetailsResponse detail = await _places.getDetailsByPlaceId(p.placeId!);
      final lat = detail.result.geometry?.location.lat;
      final lng = detail.result.geometry?.location.lng;

      Get.snackbar("${p.description} - ","$lat/$lng" );
    }
  }

   void PlaceAutocomplete(String query)async {
    Uri uri=Uri.https(
        'maps.googleapis.com',
        '/maps/api/place/autocomplete/json',{
           "input":query,
           "key":apiKey,
        });
    String ? response=await NetworkUtility.fetchUrl(uri);
    if(response!=null) print(response);

  }*/
void addAdresseUser(String adresse){
  LoginScreenController.user.Adresse=adresse;
}

}