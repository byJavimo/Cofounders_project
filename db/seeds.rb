user1=User.create user_image:"http://www.budgetwebsitelatenmaken.nl/wp-content/uploads/2013/08/webdesign.jpg", user_name:"Peter", user_last_name:"Andersen",  user_email:"peter.anderse@mail.com", password_digest: "12345", user_education: "Degree in Architecture", user_position: "Graphic Designer", user_skills: "Photoshop, Creative Thinking, Leand Manufacturing, HTML5, CSS", user_cofounder: true, user_employee: true
user2=User.create user_image:"http://www.collegequest.com/wp-content/uploads/what-do-graphic-designers-do.jpg", user_name:"Pedro", user_last_name:"Ramírez",  user_email:"pedro.ramirez@mail.com", password_digest: "12345", user_education: "Degree in Informatic", user_position: "Programmer", user_skills: "Python,Ruby,PHP,JavaScript,BootStrap, HTML5, CSS", user_cofounder: true, user_employee: true
user3=User.create user_image:"http://cdn.allartschools.com/wp-content/uploads/sites/3/2014/09/outlook-graphic-design-jobs.jpg", user_name:"María", user_last_name:"Albar",  user_email:"maria.albar@mail.com", user_education: "Degree in Architecture", user_position: "Digital Marketing", user_skills: "Photoshop, SEO, SEM, Analitycs", user_cofounder: true, user_employee: false
user4=User.create user_image:"http://www.budgetwebsitelatenmaken.nl/wp-content/uploads/2013/08/webdesign.jpg", user_name:"Peter", user_last_name:"Andersen",  user_email:"peter.anderse@mail.com", password_digest: "12345", user_education: "Degree in Architecture", user_position: "Graphic Designer", user_skills: "Photoshop, Creative Thinking, Leand Manufacturing, HTML5, CSS", user_cofounder: false, user_employee: true
user5=User.create user_image:"http://www.budgetwebsitelatenmaken.nl/wp-content/uploads/2013/08/webdesign.jpg", user_name:"Peter", user_last_name:"Andersen",  user_email:"peter.anderse@mail.com", password_digest: "12345", user_education: "Degree in Architecture", user_position: "Graphic Designer", user_skills: "Photoshop, Creative Thinking, Leand Manufacturing, HTML5, CSS", user_cofounder: true, user_employee: true
user6=User.create user_image:"http://www.budgetwebsitelatenmaken.nl/wp-content/uploads/2013/08/webdesign.jpg", user_name:"Peter", user_last_name:"Andersen",  user_email:"peter.anderse@mail.com", password_digest: "12345", user_education: "Degree in Architecture", user_position: "Graphic Designer", user_skills: "Photoshop, Creative Thinking, Leand Manufacturing, HTML5, CSS", user_cofounder: false, user_employee: true
user7=User.create user_image:"http://www.budgetwebsitelatenmaken.nl/wp-content/uploads/2013/08/webdesign.jpg", user_name:"Peter", user_last_name:"Andersen",  user_email:"peter.anderse@mail.com", password_digest: "12345", user_education: "Degree in Architecture", user_position: "Graphic Designer", user_skills: "Photoshop, Creative Thinking, Leand Manufacturing, HTML5, CSS", user_cofounder: true, user_employee: false
user8=User.create user_image:"http://www.budgetwebsitelatenmaken.nl/wp-content/uploads/2013/08/webdesign.jpg", user_name:"Peter", user_last_name:"Andersen",  user_email:"peter.anderse@mail.com", password_digest: "12345", user_education: "Degree in Architecture", user_position: "Graphic Designer", user_skills: "Photoshop, Creative Thinking, Leand Manufacturing, HTML5, CSS", user_cofounder: false, user_employee: true
user9=User.create user_image:"http://www.budgetwebsitelatenmaken.nl/wp-content/uploads/2013/08/webdesign.jpg", user_name:"Peter", user_last_name:"Andersen",  user_email:"peter.anderse@mail.com", password_digest: "12345", user_education: "Degree in Architecture", user_position: "Graphic Designer", user_skills: "Photoshop, Creative Thinking, Leand Manufacturing, HTML5, CSS", user_cofounder: false, user_employee: true
user10=User.create user_image:"http://www.budgetwebsitelatenmaken.nl/wp-content/uploads/2013/08/webdesign.jpg", user_name:"Peter", user_last_name:"Andersen", user_email:"peter.anderse@mail.com", password_digest: "12345", user_education: "Degree in Architecture", user_position: "Graphic Designer", user_skills: "Photoshop, Creative Thinking, Leand Manufacturing, HTML5, CSS", user_cofounder: true, user_employee: true

project1= Project.create project_image:"http://www.oln.org/wp-content/uploads/2015/01/graphic-designer-career.s600x6001.jpg", project_name:"Dropbox", project_position:"Frontend Developer", project_skills:"HTML5, JavaScript, CSS", project_cofounder: false, project_employee: true
project2= Project.create project_image:"http://cp91279.biography.com/1000509261001/1000509261001_1822909398001_BIO-Biography-29-Innovators-Mark-Zuckerberg-115956-SF.jpg", project_name:"Facebook", project_position:"Programmer", project_skills:"HTML5, JavaScript, CSS", project_cofounder: true, project_employee: false
project3= Project.create project_image:"http://www.capital.cl/wp-content/uploads/2013/12/elon-musk.jpg",project_name:"Tesla",  project_position:"Marketing", project_skills:"HTML5, JavaScript, CSS", project_cofounder: false, project_employee: true
project4= Project.create project_image:"http://www.oln.org/wp-content/uploads/2015/01/graphic-designer-career.s600x6001.jpg", project_name:"Dropbox", project_position:"Frontend Developer", project_skills:"HTML5, JavaScript, CSS", project_cofounder: false, project_employee: true
project5= Project.create project_image:"http://www.oln.org/wp-content/uploads/2015/01/graphic-designer-career.s600x6001.jpg", project_name:"Dropbox", project_position:"Frontend Developer", project_skills:"HTML5, JavaScript, CSS", project_cofounder: true, project_employee: false
project6= Project.create project_image:"http://www.oln.org/wp-content/uploads/2015/01/graphic-designer-career.s600x6001.jpg", project_name:"Dropbox", project_position:"Frontend Developer", project_skills:"HTML5, JavaScript, CSS", project_cofounder: false, project_employee: true
=begin 

user1.projects << project3
user2.projects << project1
user2.projects << project3
user3.projects << project1
user4.projects << project3
user4.projects << project3

=end






























# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)