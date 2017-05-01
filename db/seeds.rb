User.destroy_all

creative = User.create({
    name: "Creativedash",
    location: "San Francisco",
    skills: "Web design",
    image: "https://s-media-cache-ak0.pinimg.com/736x/57/9d/17/579d17a5433418e436375a0ea31efafc.jpg",
    email: "creativedash@email.com",
    #  password: "chicken",
    #  password_confirmation: "chicken"
  })

  slater = User.create({
      name: "Nick Slater",
      location: "Palo Alto",
      skills: "Icons",
      image: "https://pbs.twimg.com/profile_images/639150833670615040/1SCJ9Jrg.png",
      email: "nick@email.com",
      # password: "chicken",
      # password_confirmation: "chicken"
    })


  focus = User.create ({
      name: "Focus Labs",
      location: "Savannah",
      skills: "branding",
      image: "http://focuslabllc.com/images/logo.min.svg",
      email: "focuslabs@email.com",
      # password: "chicken",
      # password_confirmation: "chicken"
  })

  damme = User.create ({
      name: "Tim Van Damme",
      location: "San Francisco",
      skills: "web",
      image: "https://media.licdn.com/mpr/mpr/shrinknp_200_200/AAEAAQAAAAAAAAhZAAAAJGRjMjBiNjVlLTQwYzYtNDFmNC04ZDZmLTQ1NTNkZmE3MWQ5YQ.jpg",
      email: "timvandamme@email.com",
      # password: "chicken",
      # password_confirmation: "chicken"
  })

  vic = User.create ({
      name: "Vic Bell",
      location: "Durham",
      skills: "illustration",
      image: "https://static1.squarespace.com/static/52e01ffbe4b0edca9ba2f513/t/530dbc40e4b0769bdb49aa26/1393409089581/HeaderIllo.png",
      email: "vic@email.com"
      # password: "chicken",
      # password_confirmation: "chicken"
  })

puts "User Count: #{User.all.count }"

Project.destroy_all

  p1 = Project.create({
    title: "Yummies",
    date: '26-Apr-2017',
    image: 'https://cdn.dribbble.com/users/107759/screenshots/3462737/yummies_1x.png',
    user_id: creative.id
  })

  p2 = Project.create({
    title: "New York City",
    date: '01-Oct-2015',
    image: 'http://imgs.abduzeedo.com/files/articles/more-slick-artworks-nick-slater/nyc_1x.png',
    user_id: slater.id
  })

  p3 = Project.create({
    title: "Never Stop Learning",
    date: '26-Apr-2017',
    image: 'https://cdn.dribbble.com/users/742099/screenshots/3457961/neverstoplearning_teaser.jpg',
    user_id: focus.id
  })

  p4 = Project.create({
    title: "Mailbox Icons",
    date: '10-Apr-2014',
    image: 'https://cdn.dribbble.com/users/22/screenshots/1503589/mailbox-icons.png',
    user_id: damme.id
  })

  p5 = Project.create({
    title: "HeyTaco City",
    date: '28-Apr-2017',
    image: 'https://cdn.dribbble.com/users/37530/screenshots/3463470/heytaco-city-linework.png',
    user_id: vic.id
  })

  p6 = Project.create({
    title: "Designer Profile UI",
    date: '12-Apr-2017',
    image: 'https://cdn.dribbble.com/users/107759/screenshots/3430245/designer-profile.png',
    user_id: creative.id
  })

  p7 = Project.create({
    title: "Quiet Signs",
    date: '05-Dec-2016',
    image: 'https://cdn.dribbble.com/users/31752/screenshots/3138227/quiet-signs_1x.jpg',
    user_id: slater.id
  })

  p8 = Project.create({
    title: "LABS - Caffeinated",
    date: '24-09-2015',
    image: 'https://s-media-cache-ak0.pinimg.com/originals/54/a6/17/54a617714ba0b7e436d0011e0e9d23c0.jpg',
    user_id: focus.id
  })

  p9 = Project.create({
    title: "Designer Profile UI",
    date: '12-Apr-2017',
    image: 'https://cdn.dribbble.com/users/107759/screenshots/3430245/designer-profile.png',
    user_id: damme.id
  })

  p10 = Project.create({
    title: "Sketch Component Workflow Illustration",
    date: '12-Apr-2017',
    image: 'https://s-media-cache-ak0.pinimg.com/originals/50/ce/02/50ce02bb28969bb319bb8a454166db9a.png',
    user_id: vic.id
  })

  puts "Project Count: #{Project.all.count}"

  Comment.destroy_all

    c1 = Comment.create ({
      name: "Comment One",
      post: "Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
      user_id: creative.id
    })


    c2 = Comment.create ({
      name: "Comment One",
      post: "Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
      user_id: slater.id
    })

    c3 = Comment.create ({
      name: "Comment One",
      post: "Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
      user_id: focus.id
    })

    c4 = Comment.create ({
      name: "Comment One",
      post: "Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
      user_id: damme.id
    })

    c5 = Comment.create ({
      name: "Comment One",
      post: "Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
      user_id: vic.id
    })

  puts "Comment Count: #{Comment.all.count}"
