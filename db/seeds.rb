user1=User.create user_image:"http://housetohome.media.ipcdigital.co.uk/96/00000feee/7d7d_orh550w550/YOUNG-DESIGNER-ALEX-BRADLEY.jpg", user_name:"Peter", user_last_name:"Andersen",  user_email:"peter.anderse@mail.com", password:"12345", user_education: "Degree in Architecture", user_position: "Graphic Designer", user_skills: "Photoshop, Creative Thinking, Leand Manufacturing, HTML5, CSS", user_cofounder: true, user_employee: true
user2=User.create user_image:"http://www.collegequest.com/wp-content/uploads/what-do-graphic-designers-do.jpg", user_name:"Pedro", user_last_name:"Ramírez",  user_email:"pedro.ramirez@mail.com", password: "12345", user_education: "Degree in Informatic", user_position: "Programmer", user_skills: "Python,Ruby,PHP,JavaScript,BootStrap, HTML5, CSS", user_cofounder: true, user_employee: true
user3=User.create user_image:"http://cdn.allartschools.com/wp-content/uploads/sites/3/2014/09/outlook-graphic-design-jobs.jpg", user_name:"María", user_last_name:"Albar",  user_email:"maria.albar@mail.com", password: "12345", user_education: "Degree in Architecture", user_position: "Digital Marketing", user_skills: "Photoshop, SEO, SEM, Analitycs", user_cofounder: true, user_employee: false
user4=User.create user_image:"http://consultorescomercioexterior.es/wp-content/uploads/2014/10/freelance-.jpg", user_name:"Jorge", user_last_name:"Perez",  user_email:"jorge.perez@mail.com", password: "12345", user_education: "Degree in Art", user_position: "Graphic Designer", user_skills: "Photoshop, Creative Thinking, In Design, HTML5, CSS", user_cofounder: false, user_employee: true
user5=User.create user_image:"http://pas-wordpress-media.s3.amazonaws.com/wp-content/uploads/2014/01/Freelance-Writer-1024x743.jpg", user_name:"Louis", user_last_name:"Lusan",  user_email:"Louis.lusan@mail.com", password: "12345", user_education: "Degree in Architecture", user_position: "Graphic Designer", user_skills: "Photoshop, Creative Thinking, Leand Manufacturing, HTML5, CSS", user_cofounder: true, user_employee: true
user6=User.create user_image:"http://freelanceshow.com/wp-content/uploads/2010/01/freelance-ft.jpg", user_name:"Joanna", user_last_name:"Blizz",  user_email:"joanna.blizz@mail.com", password: "12345", user_education: "Degree in Marketing", user_position: "Business Developer", user_skills: "Sales, Business Development, Public Speaking", user_cofounder: false, user_employee: true


project1= Project.create project_image:"http://www.redusers.com/noticias/wp-content/uploads/2013/01/dropbox1.png", project_name:"Dropbox", project_position:"Frontend Developer", project_skills:"HTML5, JavaScript, CSS", project_cofounder: false, project_employee: true
project2= Project.create project_image:"http://a3.mzstatic.com/eu/r30/Purple1/v4/25/8c/2f/258c2f5b-e9c2-fd25-c940-a9bd936a9df2/icon320x320.jpeg", project_name:"Facebook", project_position:"Programmer", project_skills:"HTML5, JavaScript, CSS", project_cofounder: true, project_employee: false
project3= Project.create project_image:"http://www.car-brand-names.com/wp-content/uploads/2015/05/Tesla-Motors-logo-2.jpg",project_name:"Tesla",  project_position:"Marketing", project_skills:"HTML5, JavaScript, CSS", project_cofounder: false, project_employee: true
project4= Project.create project_image:"https://pbs.twimg.com/profile_images/571076061169868800/2dDdk-Uh.png", project_name:"Twitter", project_position:"Frontend Developer", project_skills:"HTML5, JavaScript, CSS", project_cofounder: false, project_employee: true
project5= Project.create project_image:"http://coach2coach.es/wp-content/uploads/2015/02/wordpress-logo-680x400.png", project_name:"Wordpress", project_position:"Programmer", project_skills:"JavaScript, Ruby, Ruby On Rails", project_cofounder: true, project_employee: false
project6= Project.create project_image:"http://www.siliconnews.es/wp-content/uploads/2015/04/sohpify-logo.jpg", project_name:"Shopify", project_position:"Accountant", project_skills:"Excel, SAP", project_cofounder: false, project_employee: true




user1.projects_created << project1



user2.projects_created << project3
user2.projects_created << project4


user3.projects_created << project5

user5.projects_created << project6




event1 =Event.create name:"Startup Weekend" , image:"http://www.fold.lv/uploads/2014/01/Startup-Weekend-00-1007x1106.png", description:"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,

", date: Date.today, price: 30, url: "http://startupweekend.org/"

event2 =Event.create name:"Google Campus Opening" , image:"http://talks.friendite.com/wp-content/uploads/2015/05/google-campus-building.jpg", description:" Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,

", date: Date.today + 4, price: 0, url: "https://www.campus.co/madrid/es"

event3 =Event.create name:"Networking Breakfast" , image:"http://coworkingspain.es/sites/default/files/ooo.jpg", description:"Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,

", date: Date.today + 35, price: 120.5, url: "http://www.negociosynetworking.net/"




















# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)