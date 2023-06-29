class HomepageContents {
  String img;
  String title;

  HomepageContents({required this.img, required this.title});
}

List<HomepageContents> contents = [
  HomepageContents(
    img: 'https://images.unsplash.com/photo-1631002165167-8fe92607c00e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80', 
    title: 'Jalan Malioboro'),
  
  HomepageContents(img: 'https://images.unsplash.com/photo-1566559631133-969041fc5583?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=327&q=80',
   title: 'Candi Prambanan'),

   HomepageContents(img: 'https://images.unsplash.com/photo-1630214801769-24784bfd2b9c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=871&q=80', 
   title: 'Taman Sari'),

   HomepageContents(img: 'https://images.unsplash.com/flagged/photo-1571588896019-ac4b46e88edb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80', 
   title: 'Pantai Parangtritis')
];