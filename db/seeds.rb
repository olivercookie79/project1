User.destroy_all

  u1 = User.create! name: 'Oliver', email: 'oliverjcook3d@gmail.com', password:'chicken'
  u2 = User.create! name: 'Luke', email: 'Luke@ga.co', password:'chicken'
  u3 = User.create! name: 'Nookie', email: 'nooknook@ga.co', password:'chicken'

    puts "Created #{ User.count } users  "


    puts "User #{  User.first.name} has projects: #{   User.first.projects.pluck(:title).join (', ') }"
