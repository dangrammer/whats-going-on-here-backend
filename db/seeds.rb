Picture.destroy_all
Caption.destroy_all

picture_one = Picture.create(img_url: 'https://vignette.wikia.nocookie.net/pdsh/images/d/d4/Martianspacebandits.jpg/revision/latest/scale-to-width-down/640?cb=20161012120017')

caption_one = Caption.create(content: 'This has got to be pepperoni.', likes: 0, picture_id: picture_one.id)
caption_two = Caption.create(content: 'I don\'t know about you, but this is the last time I\'m eating here.', likes: 0, picture_id: picture_one.id)

puts 'seeded🌱'