# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

return if Rails.env.production?
users = [
    User.new(full_name: 'Admin User', email: 'admin.user@gmail.com', password: 'password@1'),
    User.new(full_name: 'Mark Aresty', email: 'mark.aresty@gmail.com', password: 'password@1'),
    User.new(full_name: 'John Smith', email: 'john.smith@gmail.com', password: 'password@1'),
    User.new(full_name: 'Peter Larson', email: 'peter.larson@gmail.com', password: 'password@1'),
    User.new(full_name: 'Adrien Moore', email: 'adrien.moore@gmail.com', password: 'password@1'),
    User.new(full_name: 'Kevin Westley', email: 'kevin.westley@gmail.com', password: 'password@1')
]

users.each(&:skip_confirmation!)
users.each(&:save)
users.each(&:confirm)

categories = [
    Category.create(title: 'Computer Science', description: 'Computer Science description', active: true),
    Category.create(title: 'Business', description: 'Business studies', active: true),
    Category.create(title: 'Finance and Accounting', description: 'Finance and Accounting', active: true)
]

category = categories.first
user = User.find(1)
user2 = User.find(2)
courses = [
    category.courses.create!(
      title: 'Python Programming',
      body: 'Python Programming fundamentals',
      short_description: 'Python Programming fundamentals',
      course_highlights: 'Python Programming fundamentals',
      duration: '3 months',
      no_of_lessons: 20,
      level: 'Beginner',
      website: 'https://google.com',
      price: 2000,
      course_for: 'Recent Graduates',
      user_id: user2.id
    ),
    category.courses.create!(
      title: 'java Fundamentals',
      body: 'Java fundamentals',
      short_description: 'Java fundamentals',
      course_highlights: 'Java fundamentals',
      duration: '2 months',
      no_of_lessons: 15,
      level: 'Intermediate',
      website: 'https://google.com',
      price: 1200,
      course_for: 'Recent Graduates',
      user_id: user.id
    ),
    category.courses.create!(
      title: 'Machine Learning',
      body: 'Machine Learning',
      short_description: 'Machine Learning',
      course_highlights: 'Machine Learning',
      duration: '4 months',
      no_of_lessons: 30,
      level: 'Advanced',
      website: 'https://google.com',
      price: 2500,
      course_for: 'Recent Graduates',
      user_id: user.id
    )
]

course = courses.first
chapter1 = course.chapters.create(title: 'Chapter 1')
chapter2 = course.chapters.create(title: 'Chapter 2')

chapter1.course_contents.create(
    title: 'Course Overview',
    description: 'Introduction, overview and content',
    duration: '1 week'
)

chapter1.course_contents.create(
    title: 'Installation steps',
    description: 'Setting up the view, Running code, finding help, Getting the notebook and course material',
    duration: '2 weeks',
)

chapter2.course_contents.create(
    title: 'Modules and Packages',
    description: 'Packages, libraries, MVPs etc',
    duration: '2.5 weeks',
)
chapter2.course_contents.create(
    title: 'Finishing up and further reading',
    description: 'Practical applications, further reading etc.',
    duration: '2 weeks',
)

user2.educations.create(name_of_institution: 'Harvard University', year_start: 2006, year_end: 2010, title: 'Bachelor of Computer Science', location: 'Boston', country: 'USA')
user2.educations.create(name_of_institution: 'Stanford University', year_start: 2010, year_end: 2012, title: 'Masters in Artificial Intelligence', location: 'San Francisco', country: 'USA')
user2.experiences.create(name_of_institution: 'Google', year_start: 2012, year_end: 2016, title: 'Software Engineer', location: 'Mountain View', country: 'USA')
user2.experiences.create(name_of_institution: 'Facebook', year_start: 2010, year_end: 2012, title: 'Senior Software Engineer', location: 'Menlo Park', country: 'USA')

courses.each(&:approve)
courses[0..1].each do |course|
  users[1..2].each do |user|
    course.enrolled_users << user unless course.user_id == user.id
    course.general_conversation.users << user
  end
end

first_course = courses.first

users[3..5].each do |user|
  first_course.enrolled_users << user
  first_course.general_conversation.users << user
end
