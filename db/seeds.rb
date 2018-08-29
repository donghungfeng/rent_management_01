user = User.create(name: "Phuc", phone: "123123123", email: "phuc1@gmail.com", address: "Hai Duong", stk: "123123", account: "Phuc", password: "123123", password_confirmation: "123123", role: "customer")
user.save
home = Home.create(user_id: 1,address:"Ha Noi", room_number: 50, room_empty: 25, description: "Phòng đẹp")
home.save
home = Home.create(user_id: 1,address:"Hai Phong", room_number: 50, room_empty: 25, description: "Phòng đẹp")
home.save
home = Home.create(user_id: 2,address:"Bac Giang", room_number: 50, room_empty: 25, description: "Phòng đẹp")
home.save
home = Home.create(user_id: 3,address:"Hà Nội", room_number: 34, room_empty: 25, description: "Phòng đẹp")
home.save
room = Room.create(name: "P_402", area: 12, number_room: 2, state: "trống", price: "20tr", description: "vl")
room.save
room = Room.create(name: "P_401", area: 11, number_room: 3, state: "trống", price: "12tr", description: "sfg")
room.save
room = Room.create(name: "P_403", area: 13, number_room: 4, state: "trống", price: "13tr", description: "fsdjfgs")
room.save
room = Room.create(name: "P_404", area: 14, number_room: 5, state: "trống", price: "14tr", description: "ạgfhas")
room.save
room = Room.create(name: "P_405", area: 15, number_room: 6, state: "trống", price: "15tr", description: "áoifjs")
room.save
user = User.create(name: "tai", phone: 12345, email: "a123@gmail.com", address: "sakfhjd", stk: "123456", account: "jsafwergj", password: "123456", password_confirmation: "123456", role: "customer")
user.save
user = User.create(name: "hung", phone: 156445, email: "b123@gmail.com", address: "sasgfd", stk: "1235456", account: "jsasffgj", password: "1234456", password_confirmation: "1234456", role: "owner")
user.save
user = User.create(name: "quang", phone: 125789345, email: "n123@gmail.com", address: "sasjd", stk: "123545456", account: "jsafg4j", password: "123446556", password_confirmation: "123456", role: "custemer")
user.save
user = User.create(name: "tiep", phone: 12345445, email: "g123@gmail.com", address: "sahjd", stk: "123454556", account: "j54safgj", password: "123456", password_confirmation: "123456", role: "admin")
user.save
post = Post.create(user_id: 1, content: "mot hai ba bon nam sau")
post.save
comment = Comment.create( content: "Ez game", user_id: 5, post_id: 22)
