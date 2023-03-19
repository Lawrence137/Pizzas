10.times do
    Restaurant.create!(
      name: Faker::Restaurant.name,
      address: Faker::Address.full_address
    )
  end

  5.times do
    Pizza.create!(
      name: Faker::Food.dish,
      ingredients: Faker::Food.ingredient
    )
  end

  20.times do
    RestaurantPizza.create!(
      restaurant_id: rand(1..10),
      pizza_id: rand(1..5),
      price: rand(1..30)
    )
  end