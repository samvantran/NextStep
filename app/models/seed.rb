class Seed   
  attr_accessor :titles, :companies, :industries, :locations
  attr_reader :sorted_titles, :sorted_companies, :sorted_industries, :sorted_locations, :company_name

   def initialize
      @sorted_companies=
        [["Flatiron School", 6],
         ["XO Group Inc.", 2],
         ["AlphaSights", 2],
         ["Flatiron Labs", 2],
         ["Lifebooker", 2],
         ["RedOwl Analytics", 2],
         ["Paperless Post", 2],
         ["Time Inc.", 2],
         ["YCharts", 1],
         ["Dopamine", 1],
         ["Homepolish", 1],
         ["Cord Project Inc", 1],
         ["Dow Jones", 1],
         ["Hoosthere", 1],
         ["StreetEasy", 1],
         ["Boeing Company", 1],
         ["EnHatch Orthopaedics", 1],
         ["Bark & Co.", 1],
         ["Mediaocean", 1],
         ["Gust", 1],
         ["Carrot - a VICE company", 1],
         ["Stylitics", 1],
         ["Novalsys, Inc", 1],
         ["Constant Contact", 1],
         ["Huge", 1],
         ["Maimonides Medical Center", 1],
         ["Fog Creek Software", 1],
         ["YellowHammer", 1],
         ["CardFlight", 1],
         ["Contently", 1],
         ["MakerBot®", 1],
         ["Enhatch", 1],
         ["WSJ.com", 1],
         ["Posse", 1],
         ["Penton Media", 1],
         ["GoWatchIt", 1],
         ["Handy", 1],
         ["JPS High School, Intern", 1],
         ["Crush & Lovely", 1],
         ["BuzzFeed", 1],
         ["News Corp", 1],
         ["Doorsteps", 1],
         ["Splash", 1],
         ["Greenhouse Software, Inc.", 1],
         ["MAUI NEW YORK", 1],
         ["SevenFifty", 1],
         ["Fundera", 1],
         ["J.Crew / Full Stack Web Developer", 1],
         ["Zearn", 1],
         ["Catapult", 1],
         ["VHX. Former Product Manager", 1],
         ["New York Times", 1],
         ["Winter Wyman & Company Inc.", 1],
         ["Venmo", 1],
         [nil, 1],
         ["BlackRock", 1]]

      @sorted_titles=
        [["Software Engineer", 17],
         ["Web Developer", 7],
         ["Software Developer", 6],
         ["Developer", 5],
         ["iOS Developer", 4],
         ["Full Stack Web Developer", 3],
         ["Full-Stack Web Developer", 2],
         ["Software Engineer Apprentice", 2],
         ["Product Manager", 2],
         ["Ruby Developer", 2],
         ["Web Engineer", 2],
         ["Web Development Fellow", 2],
         ["Node Engineer", 1],
         ["Front End Developer", 1],
         ["Ruby on Rails Developer", 1],
         ["iOS Engineer", 1],
         ["Student, Flatiron School", 1],
         ["Principal Engineer", 1],
         ["Developer and Puppy Loving Consultant", 1],
         ["Intern", 1],
         ["Contractor", 1],
         ["Mobile Software Engineer", 1],
         ["Ruby/Rails Developer", 1],
         ["Web Development", 1],
         ["Senior Developer", 1],
         ["Full Stack Web Devleoper", 1],
         ["Interactive Graphics Editor / News Apps Developer", 1],
         ["Earth Systems Scientist and Software Developer", 1],
         ["freelance web developer, wordpress developer, ruby developer, painter, conceptual artist", 1],
         ["Front-End Developer", 1],
         ["Tech Consultant", 1],
         ["Junior Back-end Engineer", 1],
         ["I do a lot of things.", 1],
         ["Associate Social Media Editor", 1],
         ["Software Development Apprentice", 1],
         ["Automation Engineer & Release Manager", 1],
         ["Ruby on Rails and Javascript Developer", 1],
         ["Frontend Developer, Project Manager", 1],
         ["Full-stack Web Developer", 1],
         ["Full-stack developer from graphic design on down to programming. Currently, Stack Exchange Fellow.", 1],
         ["Developer, Educator, Organizer", 1],
         ["Engineer", 1],
         ["CTO @ DreamCollabo, Owner @ Subvrt, LLC", 1],
         ["Front End Web Developer", 1],
         ["Fellow", 1],
         ["Founder & Managing Director", 1],
         ["Student", 1],
         ["Founder, Go STEM Girls Press & Alliance for Girls in STEM", 1],
         ["Principal", 1],
         ["Flatiron School", 1],
         ["Developer's Apprentice", 1],
         ["iOS Developer, Student and Entrepreneur", 1],
         ["Lead Instructor of the Kids Course", 1],
         ["Software Development", 1],
         ["The Flatiron School", 1],
         ["Teacher", 1],
         ["Junior Web Developer", 1],
         ["Full-Stack Developer", 1]]

      @sorted_industries=
        [["Computer Software", 40],
         ["Internet", 33],
         ["Information Technology and Services", 7],
         ["Online Media", 3],
         ["Marketing and Advertising", 3],
         ["Graphic Design", 1],
         ["Nonprofit Organization Management", 1],
         ["Financial Services", 1],
         ["Music", 1],
         ["Medical Devices", 1],
         ["Writing and Editing", 1],
         ["Education Management", 1],
         ["Design", 1],
         ["Staffing and Recruiting", 1],
         ["Research", 1],
         ["Consumer Electronics", 1],
         ["Media Production", 1],
         ["Higher Education", 1]]

      @sorted_locations=
       [["Greater New York City Area", 99]]
    end

 end