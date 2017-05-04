User.destroy_all

admin = User.create({
    name: "Fred",
    location: "Sydney",
    skills: "Web, Illustration, Identity",
    image: "https://cottonbureau.imgix.net/sellers/originals/5331_simon-sek_jcDv.jpg?bg=FFF&chromasub=444&fit=max&fm=pjpg&ixlib=php-1.1.0&q=50&usm=10&usmrad=2.5&w=300",
    email: "admin@email.com",
    password: "chicken",
    password_confirmation: "chicken"
  })

creative = User.create({
    name: "Creativedash",
    location: "San Francisco",
    skills: "Web design, Animation, Graphics",
    image: "https://cdn.dribbble.com/users/107759/screenshots/3442108/galactic_1x.png",
    email: "creativedash@email.com",
     password: "chicken",
     password_confirmation: "chicken"
  })

  slater = User.create({
      name: "Nick Slater",
      location: "Palo Alto",
      skills: "Icons" "Logos",
      image: "https://cdn.dribbble.com/users/31752/screenshots/3395152/japan.png",
      email: "nick@email.com",
      password: "chicken",
      password_confirmation: "chicken"
    })


  focus = User.create ({
      name: "Focus Labs",
      location: "Savannah",
      skills: "Branding, Websites" ,
      image: "http://focuslabllc.com/images/logo.min.svg",
      email: "focuslabs@email.com",
      password: "chicken",
      password_confirmation: "chicken"
  })

  damme = User.create ({
      name: "Tim Van Damme",
      location: "San Francisco",
      skills: "web, animations, logos, graphic design",
      image: "https://s-media-cache-ak0.pinimg.com/236x/cc/8d/e9/cc8de9c18f28c7a5c477b25bf53bf1a1.jpg",
      email: "timvandamme@email.com",
      password: "chicken",
      password_confirmation: "chicken"
  })

  vic = User.create ({
      name: "Vic Bell",
      location: "Durham",
      skills: "illustration, typography",
      image: "https://static1.squarespace.com/static/52e01ffbe4b0edca9ba2f513/t/530dbc40e4b0769bdb49aa26/1393409089581/HeaderIllo.png",
      email: "vic@email.com",
      password: "chicken",
      password_confirmation: "chicken"
  })

puts "User Count: #{User.all.count }"

Project.destroy_all

  p1 = Project.create({
    title: "Yummies",
    date: '26-Apr-2017',
    description: "A small preview of our scrumptiously yummy & colorful food icons for Sketch and Illustrator.",
    image: 'https://cdn.dribbble.com/users/107759/screenshots/3462737/yummies_1x.png',
    user_id: creative.id
  })

  p2 = Project.create({
    title: "New York City",
    date: '01-Oct-2015',
    description: "I miss New York ",
    image: 'http://imgs.abduzeedo.com/files/articles/more-slick-artworks-nick-slater/nyc_1x.png',
    user_id: slater.id
  })

  p3 = Project.create({
    title: "Never Stop Learning",
    date: '26-Apr-2017',
    description: "Keep on learning!",
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
    description: "City life drawn in pen.",
    image: 'https://cdn.dribbble.com/users/37530/screenshots/3463470/heytaco-city-linework.png',
    user_id: vic.id
  })

  p6 = Project.create({
    title: "Designer Profile UI",
    date: '12-Apr-2017',
    description: "Simple interface for a new client.",
    image: 'https://cdn.dribbble.com/users/107759/screenshots/3430245/designer-profile.png',
    user_id: creative.id
  })

  p7 = Project.create({
    title: "Quiet Signs",
    date: '05-Dec-2016',
    description: "Library signs to ensure that the library remains a peaceful place to work.",
    image: 'https://cdn.dribbble.com/users/31752/screenshots/3138227/quiet-signs_1x.jpg',
    user_id: slater.id
  })

  p8 = Project.create({
    title: "LABS - Caffeinated",
    date: '24-09-2015',
    description: "Simple branding for a local coffee company.",
    image: 'https://s-media-cache-ak0.pinimg.com/originals/54/a6/17/54a617714ba0b7e436d0011e0e9d23c0.jpg',
    user_id: focus.id
  })

  p9 = Project.create({
    title: "COCORICO!UI",
    date: '12-Apr-2017',
    description: "The Gallic Rooster is the most famous symbol of France. Cocorico is the french word for your english Cock-a-doodle-doo",
    image: 'https://cdn.dribbble.com/users/926927/screenshots/3471974/stickermule_france_contest_1x.jpg',
    user_id: admin.id
  })

  p10 = Project.create({
    title: "Sketch Component Workflow Illustration",
    date: '12-Apr-2017',
    description: "Workflow overview",
    image: 'https://s-media-cache-ak0.pinimg.com/originals/50/ce/02/50ce02bb28969bb319bb8a454166db9a.png',
    user_id: vic.id
  })

  puts "Project Count: #{Project.all.count}"

  # Comment.destroy_all

    c1 = Comment.create ({
      name: "Alba Fernández",
      post: "aww! They are so cute :3 Love it!",
      user_id: creative.id,
      project_id: p1.id
    })

    c2 = Comment.create ({
      name: "Domestic Society Design Co.",
      post: "This is cool man.",
      user_id: slater.id,
      project_id: p2.id
    })

    c3 = Comment.create ({
      name: "Lauren Beltramo",
      post: "Nice!",
      user_id: focus.id,
      project_id: p3.id
    })

    c4 = Comment.create ({
      name: "Bud Thomas",
      post: "Oh, I LIKE THATT.",
      user_id: damme.id,
      project_id: p4.id
    })

    c5 = Comment.create ({
      name: "Jorge Cisterna",
      post: "Amazing project, congratulations!!",
      user_id: vic.id,
      project_id: p5.id
    })

puts "Comment Count: #{Comment.all.count}"

# puts "Creative projects: #{ creative.projects.count }"
