class OnboardingContent {
  String image;
  String title;
  String desc;

  OnboardingContent({required this.image, required this.title, required this.desc});
}

List<OnboardingContent> contents = [
  OnboardingContent(
    title:'Mudahnya Informasi' ,
    image: 'assets/people_travel1.png',
    desc: "Susah mencari Informasi wisata di Jogja?"
          "pakai Jtour hanya dengan sekali cari!"
  ),

  OnboardingContent(
    title:'Tanpa Ribet' ,
    image: 'assets/people_travel2.png',
    desc: "Gaperlu ribet pake aplikasi Jtour"
          " cukup hubungan kamu sama aku aja hehe :)"
  ),

  OnboardingContent(
    title:'Cepat & Pintar' ,
    image: 'assets/people_travel3.png',
    desc: "Jadilah master dalam wisata dan pandu"
          " teman-teman dan keluarga kamu mengelilingi"
          " Provinsi Jogja"
  ),
];