import 'package:get/get.dart';
import 'package:flutter_application_1/models/team_model.dart';
import 'package:http/http.dart' as http;

class FeatController extends GetxController{
     
     var isLoading = false.obs;
     var teamList = <Team> [].obs;

     @override
     void onInit(){
        super.onInit();
        fetchTeams();
     }

  void fetchTeams() async{
    try{
      isLoading.value = true;
      final url = Uri.parse("https://www.thesportsdb.com/api/v1/json/123/search_all_teams.php?l=English%20Premier%20League");
      final response = await http.get(url);

      if(response.statusCode == 200){
        final result = premierLeagueModelFromJson(response.body);
        teamList.value = result.teams;
      } else {
        Get.snackbar("Error", "Failed to fetch teams. Status code: ${response.statusCode}");
      }
    } catch (e){
      Get.snackbar("Error", e.toString());
    } finally{
      isLoading.value = false;
    }

  }
}