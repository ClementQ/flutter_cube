
class Article{
  final int Id;
  final String Title;
  final String Overview;
  final DateTime ReleaseDate;
  final String ImageUrl;
  final double Vote;

  Article({this.Id,this.Title,this.Overview,this.ReleaseDate,this.ImageUrl,this.Vote});

  //Méthode static Retourne une liste d'articles depuis l'API
  static List<Article> articleFromApi(Map<String,dynamic> body){
    List<Article> l =[];

    body["results"].forEach((articleJson){
      Article article = Article(
        Id:articleJson["id"],
        Title:articleJson["title"],
        ImageUrl: articleJson["poster_path"],
        Overview: articleJson["overview"],
        ReleaseDate: DateTime.parse(articleJson["release_date"]),
        Vote: double.tryParse(articleJson["vote_average"].toString())
      );
      l.add(article);
    });
    return l;
  }
}