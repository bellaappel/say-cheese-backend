#app where users can upload headhshots and get feedback

# models
-users
    - username:string
    -password_digest:string
    -name:string
-photos
    -image_src:string
    caption:text

-comments
    -comment:text

    users have many photos
    users have many comments

    photos belong to user
    comments belong to user