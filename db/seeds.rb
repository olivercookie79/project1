User.destroy_all

  u1 = User.create! name: 'Oliver', email: 'oliverjcook3d@gmail.com', password:'chicken'
  u2 = User.create! name: 'Luke', email: 'Luke@ga.co', password:'chicken'
  u3 = User.create! name: 'Nookie', email: 'nooknook@ga.co', password:'chicken'

  puts "Created #{ User.count } users  "

  Project.destroy_all

  p1 = Project.create! title: 'Test1', user_id: u1.id, image: ''
  p2 = Project.create! title: 'Test2', user_id: u1.id
  p3 = Project.create! title: 'Test3', user_id: u2.id


  puts "User #{  User.first.name} has projects: #{   User.first.projects.pluck(:title).join (', ') }"

  Revision.destroy_all

  r1 = Revision.create! description: 'Rev1', project_id: p1.id, image: ''
  r2 = Revision.create! description: 'Rev2', project_id: p1.id
  r3 = Revision.create! description: 'Rev3', project_id: p2.id

  puts "Project #{  Project.first.title} has revisions: #{   Project.first.revisions.pluck(:description).join (', ') }"
