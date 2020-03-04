require 'faker'

Address.delete_all
Author.delete_all
Owner.delete_all
Restaurant.delete_all
Review.delete_all

# Owner creation 
@emma = Owner.create(name: 'Emma')
@lola = Owner.create(name: 'Lola')
@brad = Owner.create(name: 'Brad')
@dill = Owner.create(name: 'Dill')
@sally = Owner.create(name: "Sally")

# Restaurant creation 
@super_sushi = Restaurant.create(name: 'Super Sushi', specialty: 'Japanese', owner_id:@emma.id)
@bomb_bbq = Restaurant.create(name: 'Bomb BBQ', specialty: 'Southern', owner_id:@sally.id)
@tasty_tacos = Restaurant.create(name: 'Tasty Tacos', specialty: 'Mexican', owner_id:@lola.id)
@perfect_pasta = Restaurant.create(name: 'Perfect Pasta', specialty: 'Italian', owner_id:@dill.id)
@notable_noodles = Restaurant.create(name: 'Notable Noodles', specialty: 'Asian', owner_id:@brad.id)

# Author creation 
@jalena = Author.create(name: 'Jalena')
@johnny_appleseed = Author.create(name: 'Johnny')
@chad = Author.create(name: 'Chad')

# Address creation 
Address.create([
  {
    street_name: 'Jalan M Husni Thamrin 1',
    city: 'Jakarta Pusat',
    province: 'Daerah Khusus Ibukota Jakarta',
    country: 'id',
    restaurant_id: @super_sushi.id
  },
  {
    street_name: 'Prinsengracht 267',
    city: 'Amsterdam',
    province: 'Noord-Holland',
    country: 'nl',
    restaurant_id: @bomb_bbq.id
  },
  {
    street_name: '1400 S Congress Ave',
    city: 'Austin',
    province: 'TX',
    country: 'US',
    restaurant_id: @tasty_tacos.id
  },
  {
    street_name: '3667 Las Vegas Blvd S',
    city: 'Las Vegas',
    province: 'NV',
    country: 'US',

    restaurant_id: @perfect_pasta.id
  },
  {
    street_name: '3204 Seawall Blvd',
    city: 'Galveston',
    province: 'TX',
    country: 'US',
    restaurant_id: @notable_noodles.id
  }
  ]) 

# Review creation (not sure if this is right)
# Add in restaurant id
Review.create({
  title: "best Bakery",
  content: "here is some review on something",
  date: DateTime.now(), 
  author_id: @jalena.id}) 
