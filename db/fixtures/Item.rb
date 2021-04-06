Item.seed do |s|
  s.id = 2
  s.name = "Cheese Cake"
  s.genre_id = 1
  s.image_id = Rails.root.join("app/assets/images/noimage.png").open
  s.introduction = "Delicious"
  s.price = 300
end

Item.seed do |s|
  s.id = 3
  s.name = "Chocolate Cake"
  s.genre_id = 1
  s.image_id = Rails.root.join("app/assets/images/noimage.png").open
  s.introduction = "Made by Chocoholic"
  s.price = 450
end
