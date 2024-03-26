void main() {
 /*  // Data uji
  List<int> scoresLumbaLumba = [96, 108, 89];
  List<int> scoresKoala = [88, 91, 110]; */

  //Data uji Bonus 1
  List<int> scoresLumbaLumba = [ 97, 112, 101];
  List<int> scoresKoala = [109, 95, 123];

  /* //Data uji Bonus 2
  List<int> scoresLumbaLumba = [ 97, 112, 101];
  List<int> scoresKoala = [109, 95, 106]; */
  
  
  int minimumScore = 100;
  
  //Perhitungan rata rata
  double averageScoreLumbaLumba = scoresLumbaLumba.reduce((a, b) => a + b) / scoresLumbaLumba.length;
  double averageScoreKoala = scoresKoala.reduce((a, b) => a + b) / scoresKoala.length;
  
  // Bandingkan skor rata-rata untuk menentukan pemenang kompetisi
  if (averageScoreLumbaLumba >= minimumScore || averageScoreKoala >= minimumScore) {
    if (averageScoreLumbaLumba > averageScoreKoala && averageScoreLumbaLumba >= minimumScore) {
      print('Tim Lumba-lumba memenangkan kompetisi dengan skor rata-rata ${averageScoreLumbaLumba.toStringAsFixed(2)}');
    } else if (averageScoreKoala > averageScoreLumbaLumba && averageScoreKoala >= minimumScore) {
      print('Tim Koala memenangkan kompetisi dengan skor rata-rata ${averageScoreKoala.toStringAsFixed(2)}');
    } else if (averageScoreLumbaLumba == averageScoreKoala && averageScoreLumbaLumba >= minimumScore && averageScoreKoala >= minimumScore) {
      print('Hasil kompetisi seri dengan skor rata-rata ${averageScoreLumbaLumba.toStringAsFixed(2)}');
    } else {
      print('Tidak ada tim yang memenuhi syarat skor minimum untuk memenangkan trofi');
    }
  } else {
    print('Tidak ada tim yang memenuhi syarat skor minimum untuk memenangkan trofi');
  }
}
