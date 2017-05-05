# README

What I solved:

  A platform for designers to share their work.

User stories:

    As a user I would like to create a project so I can share my work.
    As a user I would like to edit a project so I can modify my work.
    As a user I would like to delete a project so I can remove my work.
    As a user I would like to comment on other people's project so I can offer feedback.
    As a user I would like to delete comments on other people's project.

Wireframes:



Demo:

  Sign in/ sign up (new user)
  New project
  Update profile
  Update project (only if you are the author of that project)
  Comment on a project
  Delete comment
  Sign out

Schema:

  Users table
  Project table
  Comments table

Models:

  A user has many projects.
  A user has many comments.

  A project belongs to a user.
  A project has many comments.

  A comment belongs to a project.

Awkward bits:

  Associations and the cryptic errors.

Awesome bits:

  Building a real world application and the ability to build upon features.

Where next:

  Make it responsive.
  Allow followers.

Thanks:

  To Jack and Kane for their incredible guidance, answering ridiculous questions and endless bug fixing.
