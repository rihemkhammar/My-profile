class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
 
  final String technologie ;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.technologie,
    
  });
}

// ###############
// HOBBY PROJECTS
List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/signin.png',
    title: 'Recommendation System',
    subtitle:
        'Healthcare recommendation system implemented as a desktop application ',
    technologie: 'NEO4J, Flutter, NodeJs'    
  ),  
  ProjectUtils(
    image: 'assets/projects/hopital.png',
    title: 'Website Development for Hospital',
    subtitle:
        'Designed and developed a user-friendly website  ',
    technologie: 'HTML, CSS, JS, Marzipano'
  ),
 

];

// ###############
// WORK PROJECTS
List<ProjectUtils> hobbyProjectUtils  = [
  ProjectUtils(
    image: 'assets/projects/huwai.png',
    title: 'HCAI-AI V3.5',
    subtitle:
        ' certification AI Huawei',
    technologie: 'IA',
  ),
  ProjectUtils(
    image: 'assets/projects/certifcat_docker.png',
    title: 'certification Docker ',
    subtitle:
        'This is a responsive online shop web application for car engine oil.',
    technologie: 'Docker',
  ),
 
];