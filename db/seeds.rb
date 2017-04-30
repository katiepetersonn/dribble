User.destroy_all

creative = User.create({
    name: "Creativedash",
    location: "San Francisco",
    skills: "Web design",
    image: "https://s-media-cache-ak0.pinimg.com/736x/57/9d/17/579d17a5433418e436375a0ea31efafc.jpg",
    email: "creativedash@email.com"
  })

  slater = User.create({
      name: "Nick Slater",
      location: "Palo Alto",
      skills: "Icons",
      image: "https://pbs.twimg.com/profile_images/639150833670615040/1SCJ9Jrg.png",
      email: "nick@email.com"
    })


  focus = User.create ({
      name: "Focus Labs",
      location: "Savannah",
      skills: "branding",
      image: "http://focuslabllc.com/images/logo.min.svg",
      email: "focuslabs@email.com"
  })

  damme = User.create ({
      name: "Tim Van Damme",
      location: "San Francisco",
      skills: "web",
      image: "https://media.licdn.com/mpr/mpr/shrinknp_200_200/AAEAAQAAAAAAAAhZAAAAJGRjMjBiNjVlLTQwYzYtNDFmNC04ZDZmLTQ1NTNkZmE3MWQ5YQ.jpg",
      email: "timvandamme@email.com"
  })

  vic = User.create ({
      name: "Vic Bell",
      location: "Durham",
      skills: "illustration",
      image: "https://static1.squarespace.com/static/52e01ffbe4b0edca9ba2f513/t/530dbc40e4b0769bdb49aa26/1393409089581/HeaderIllo.png",
      email: "vic@email.com"
  })

puts "User Count: #{ User.all.count }"

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

puts "Project Count: #{Project.all.count}"
