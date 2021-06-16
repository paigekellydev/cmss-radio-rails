# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# boss = User.create(
#     username: "boss",
#     email: "boss@cmss.com",
#     first_name: "Bossy",
#     last_name: "Boss",
#     password: "bossy"
# )

artist1 = Artist.create(
    name: "Drift Diffusion"
)
artist2 = Artist.create(
    name: "Egghead9"
)
artist3 = Artist.create(
    name: "Gerald Fjord"
)
artist4 = Artist.create(
    name: "Kentucky"
)
artist5 = Artist.create(
    name: "LoFi FreQ"
)
artist6 = Artist.create(
    name: "Memorybell"
)
artist7 = Artist.create(
    name: "Mike Estlick"
)
artist8 = Artist.create(
    name: "Mike Thomas"
)
artist9 = Artist.create(
    name: "Monoscene"
)
artist10 = Artist.create(
    name: "Moss Pig"
)
artist11 = Artist.create(
    name: "Richard Trona"
)
artist12 = Artist.create(
    name: "Romulus and Remus"
)
artist13 = Artist.create(
    name: "Saddest Valves"
)
artist14 = Artist.create(
    name: "Sine Mountain"
)
artist15 = Artist.create(
    name: "The Aefonic"
)
artist16 = Artist.create(
    name: "Tonotopic"
)
artist17 = Artist.create(
    name: "Witchbutter"
)

genre1 = Genre.create(
    name: "Glitch",
    img_url: "https://i.imgur.com/8mTi3cM.png"
)
genre2 = Genre.create(
    name: "House",
    img_url: "https://i.imgur.com/T0JLPDy.png"
)
genre3 = Genre.create(
    name: "Ambient",
    img_url: "https://i.imgur.com/g8Divcr.png"
)
genre4 = Genre.create(
    name: "Industrial",
    img_url: "https://i.imgur.com/Heqyifn.png"
)
genre5 = Genre.create(
    name: "Aggrotech",
    img_url: "https://i.imgur.com/snbj66H.png"
)
genre6 = Genre.create(
    name: "Outrun",
    img_url: "https://i.imgur.com/2PQTxFM.png"
)
genre7 = Genre.create(
    name: "Spacewave",
    img_url: "https://i.imgur.com/QbgxWBd.png"
)
genre8 = Genre.create(
    name: "Retro",
    img_url: "https://i.imgur.com/A1lh6fh.png"
)
genre9 = Genre.create(
    name: "Cyber Punk",
    img_url: "https://i.imgur.com/Cf7p7tl.png"
)

Song.create([
    {
        title: "Case Shock",
        genre_id: genre1.id,
        artist_id: artist1.id,
        song_url: "https://firebasestorage.googleapis.com/v0/b/cmss-radio.appspot.com/o/1.mp3?alt=media&token=a71e9224-b085-4f89-8eec-9384a48b27f7"
    },
    {
        title: "Quilt",
        genre_id: genre2.id,
        artist_id: artist2.id,
        song_url: "https://firebasestorage.googleapis.com/v0/b/cmss-radio.appspot.com/o/2.mp3?alt=media&token=ed7d74c6-a240-496d-8a4e-fc385b05db9d"
    },
    {
        title: "Silence of the Sea",
        genre_id: genre2.id,
        artist_id: artist3.id,
        song_url: "https://firebasestorage.googleapis.com/v0/b/cmss-radio.appspot.com/o/3.mp3?alt=media&token=f4b63cf7-7e89-47f2-87b1-fee4c7ca08c6"
    },
    {
        title: "Knots",
        genre_id: genre4.id,
        artist_id: artist4.id,
        song_url: "https://firebasestorage.googleapis.com/v0/b/cmss-radio.appspot.com/o/4.mp3?alt=media&token=cbab2ac3-8f9f-41cb-8eb3-00850325fd42"
    },
    {
        title: "When the Time is Right",
        genre_id: genre2.id,
        artist_id: artist5.id,
        song_url: "https://firebasestorage.googleapis.com/v0/b/cmss-radio.appspot.com/o/5.mp3?alt=media&token=87553a7a-586b-4620-a670-a682d0ba2291"
    },
    {
        title: "Desire Line",
        genre_id: genre3.id,
        artist_id: artist6.id,
        song_url: "https://firebasestorage.googleapis.com/v0/b/cmss-radio.appspot.com/o/6.mp3?alt=media&token=cddea5fd-6cbe-4c51-942b-1fd77220a01b"
    },
    {
        title: "REV4",
        genre_id: genre5.id,
        artist_id: artist7.id,
        song_url: "https://firebasestorage.googleapis.com/v0/b/cmss-radio.appspot.com/o/7.mp3?alt=media&token=7873fe7b-6773-4764-ba2c-a7c287a46f32"
    },
    {
        title: "Past Andromeda",
        genre_id: genre7.id,
        artist_id: artist8.id,
        song_url: "https://firebasestorage.googleapis.com/v0/b/cmss-radio.appspot.com/o/8.mp3?alt=media&token=0de487ed-ca8a-4edd-8eb5-544f10529c55"
    },
    {
        title: "A World Without a Name",
        genre_id: genre1.id,
        artist_id: artist9.id,
        song_url: "https://firebasestorage.googleapis.com/v0/b/cmss-radio.appspot.com/o/9.mp3?alt=media&token=58417b47-8af2-48bf-9c3f-7d6c5e3835c4"
    },
    {
        title: "Goodbye Wilderness Place",
        genre_id: genre6.id,
        artist_id: artist10.id,
        song_url: "https://firebasestorage.googleapis.com/v0/b/cmss-radio.appspot.com/o/10.mp3?alt=media&token=c9fea48c-d668-4833-8e15-fccd43bce020"
    },
    {
        title: "Aciid P4nts",
        genre_id: genre9.id,
        artist_id: artist11.id,
        song_url: "https://firebasestorage.googleapis.com/v0/b/cmss-radio.appspot.com/o/11.mp3?alt=media&token=a7dd87db-fd6b-4002-b915-7e1ffee49940"
    },
    {
        title: "Long Drive",
        genre_id: genre8.id,
        artist_id: artist12.id,
        song_url: "https://firebasestorage.googleapis.com/v0/b/cmss-radio.appspot.com/o/12.mp3?alt=media&token=c6d962bd-066c-43ce-a8a9-743acd9658e4"
    },
    {
        title: "Bear-Man Day",
        genre_id: genre1.id,
        artist_id: artist13.id,
        song_url: "https://firebasestorage.googleapis.com/v0/b/cmss-radio.appspot.com/o/13.mp3?alt=media&token=e033423d-34af-4833-8e93-0c93c10e71a1"
    },
    {
        title: "Minor Planets",
        genre_id: genre7.id,
        artist_id: artist14.id,
        song_url: "https://firebasestorage.googleapis.com/v0/b/cmss-radio.appspot.com/o/14.mp3?alt=media&token=98b44bb2-6ed2-468f-987f-d73c6bd46e0a"
    },
    {
        title: "Lifting the Light",
        genre_id: genre2.id,
        artist_id: artist15.id,
        song_url: "https://firebasestorage.googleapis.com/v0/b/cmss-radio.appspot.com/o/15.mp3?alt=media&token=f56f22e1-5a71-4d5e-a7ac-cc98696d0f61"
    },
    {
        title: "Ordinary Galaxy",
        genre_id: genre7.id,
        artist_id: artist16.id,
        song_url: "https://firebasestorage.googleapis.com/v0/b/cmss-radio.appspot.com/o/16.mp3?alt=media&token=2b9fb293-8f7c-42d2-b91c-566fc56d10c4"
    },
    {
        title: "Hopscotch",
        genre_id: genre3.id,
        artist_id: artist17.id,
        song_url: "https://firebasestorage.googleapis.com/v0/b/cmss-radio.appspot.com/o/17.mp3?alt=media&token=557705c6-0e29-4895-bf2a-de396c5f167c"
    }
])