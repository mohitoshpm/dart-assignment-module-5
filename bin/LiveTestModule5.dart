class Media{
  void play(){
    print("Playing media...");
  }
}


class Song extends Media{
  String artist="";
  Song({required this.artist});

  void play(){
    print("Playing song by $artist...");
  }
}


void main(){

  Media media=new Media();
  media.play();
  
  Song song=new Song(artist: "Nachiketa Chakraborty");
  song.play();

}


