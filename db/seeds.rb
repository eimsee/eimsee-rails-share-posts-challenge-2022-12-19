# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Post.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Post.destroy_all
User.destroy_all
Comment.destroy_all
users = [
  { email: 'eimsee_eesmie@live.fr', password: '123456', nickname: 'Eimsee' },
  { email: 'jean@test.com', password: '123456', nickname: 'Jean' },
  { email: 'javert@live.fr', password: '123456', nickname: 'Javert' },
  { email: 'cosette@live.fr', password: '123456', nickname: 'Cosette' },
  { email: 'marius@gmail.com', password: '123456', nickname: 'Marius' },
  { email: 'enjolras@gmail.com', password: '123456', nickname: 'Enjolras' },
  { email: 'fantine@gmail.com', password: '123456', nickname: 'Fantine' },
]

users.each do |user|
  User.create!(user)
end

puts "Creating posts..."
Post.create!(title: "Mascara", content: "Ce mascara Maybelline noir extreme sera la touche idéale pour votre make-up. Il apporte un effet volumineux et intense pour celles qui ont des cils fins.", url: "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1655981828-tarte-1655981821.jpg?crop=1xw:1xh;center,top&resize=768:*", user: User.all.sample )
Post.create!(title: "Fond de teint", content: "Fluide, léger et confortable, il apporte une touche de lumière au visage. Son effet soyeux et velouté sublime le teint qui retrouve à la fois éclat et fraîcheur.", url: "https://tse4.mm.bing.net/th?id=OIP.a-eMUO4LhBrcDICnOGQn-gHaFj&pid=Api&P=0", user: User.all.sample )
Post.create!(title: "Démaquillant", content: "Ce produit est composé d’une partie aqueuse et une partie huileuse. Il est très efficace pour enlever facilement le maquillage résistant à l’eau, sans avoir besoin de frotter.", url: "https://tse2.mm.bing.net/th?id=OIP.z7LzvhCwHoPtkmxVNqXCPgHaHa&pid=Api&P=0", user: User.all.sample )
Post.create!(title: "Fard à paupière", content: "La promesse d’une texture sensorielle extraordinaire, d’un effet couleur intense et d’une couvrance maximale et longue durée!", url: "https://tse3.mm.bing.net/th?id=OIP.-C5Esv8dOVEpfLRwokOe6QHaEK&pid=Api&P=0", user: User.all.sample )
Post.create!(title: "Shampoing", content: "Ce shampoing permet de reconstruire l’élasticité, la souplesse et la brillance de votre chevelure. Ce produit est effectivement destiné pour les types de cheveux fragiles ou très secs", url: "https://tse4.mm.bing.net/th?id=OIP.1lUTlzk2-0TbiqXRkNF6oQHaHa&pid=Api&P=0", user: User.all.sample )
Post.create!(title: "Anti-cerne", content: "Multifonction, il camoufle vos cernes, corrige les imperfections, sculpte le regard et sans oublier le visage. Il illuminera votre teint tout en dissimulant vos rides.", url: "https://tse2.mm.bing.net/th?id=OIP.PtzBofH6AnCoJuFKlX3x5AAAAA&pid=Api&P=0", user: User.all.sample )
Post.create!(title: "Nettoyant visage", content: "Un nettoyant légèrement exfoliant, il élimine les substances potentiellement obstruant les pores, comme les cellules mortes et la crasse", url: "https://tse1.mm.bing.net/th?id=OIP._moJLxc30SrmZ-4C79HY7QHaHa&pid=Api&P=0", user: User.all.sample )
Post.create!(title: "Rouge à lèvre", content: "les nuances et les textures de rouge à lèvres idéales en toute occasion, des teintes riches et crémeuses qui raviveront ta passion pour la couleur", url: "https://tse4.mm.bing.net/th?id=OIP.ct3-_NIHDh6JC8THdBPmTQHaNd&pid=Api&P=0", user: User.all.sample )

# List.create(name:"Action")
# List.create(name:"Dramatique")
# List.create(name:"Dramatique")
# List.create(name:"Comedie")

puts "Created"

puts "Finished!"
