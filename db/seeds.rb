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
@billy = Owner.create(name: "Billy")
@dilly = Owner.create(name: "Dilly")
@dolly = Owner.create(name: "Dolly")
@joe = Owner.create(name: "Joe")
@bob = Owner.create(name: "bob")

# Restaurant creation 
@super_sushi = Restaurant.create(name: 'Super Sushi', specialty: 'Japanese', owner_id:@emma.id)
@bomb_bbq = Restaurant.create(name: 'Bomb BBQ', specialty: 'Southern', owner_id:@sally.id)
@tasty_tacos = Restaurant.create(name: 'Tasty Tacos', specialty: 'Mexican', owner_id:@lola.id)
@perfect_pasta = Restaurant.create(name: 'Perfect Pasta', specialty: 'Italian', owner_id:@dill.id)
@notable_noodles = Restaurant.create(name: 'Notable Noodles', specialty: 'Asian', owner_id:@brad.id)
@mighty_mexican = Restaurant.create(name: 'Mighty Mexican', specialty: 'Asian', owner_id:@dill.id)
@hello_halal = Restaurant.create(name: 'Hello Halal', specialty: 'Halal', owner_id:@sally.id)
@pink_pizza = Restaurant.create(name: 'Pink Pizza', specialty: 'Italian', owner_id:@billy.id)
@gongfu_bao = Restaurant.create(name: 'Gonfu Bao', specialty: 'Asian', owner_id:@dilly.id)
@panda_express = Restaurant.create(name: 'Panda Express', specialty: 'Asian', owner_id:@dolly.id)
@coco = Restaurant.create(name: 'Coco', specialty: 'Bubble Tea', owner_id:@joe.id)
@chatime = Restaurant.create(name: 'Chatime', specialty: 'Bubble Tea', owner_id:@bob.id)

# Author creation 
@jalena = Author.create(name: 'Jalena')
@johnny_appleseed = Author.create(name: 'Johnny')
@chad = Author.create(name: 'Chad')
@jeffrey = Author.create(name: 'Jeffrey')
@gina = Author.create(name: 'Gina')
@helen = Author.create(name: 'Helen')
@raymond = Author.create(name: 'Raymond')
@derek = Author.create(name: 'Derek')
@erin = Author.create(name: 'Erin')

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
  },
  {
    street_name: 'Skylon Tower',
    city: 'Niagara Falls',
    province: 'ON',
    country: 'CA',
    restaurant_id: @mighty_mexican.id
  },
  {
    street_name: 'Dinosaur Bar-B-Que',
    city: 'Syracuse',
    province: 'NY',
    country: 'US',
    restaurant_id: @hello_halal.id
  },
  {
    street_name: 'Shady Maple Smorgasbord',
    city: 'East Earl',
    province: 'PA',
    country: 'US',
    restaurant_id: @pink_pizza.id
  },
  {
    street_name: 'The Ledbury',
    city: 'Notting Hill',
    province: 'London',
    country: 'GB',
    restaurant_id: @gongfu_bao.id
  },
  {
    street_name: 'Hill Country',
    city: 'New York',
    province: 'NY',
    country: 'US',
    restaurant_id: @panda_express.id
  },
  {
    street_name: 'Founding Farmers',
    city: 'Washington',
    province: 'DC',
    country: 'US',
    restaurant_id: @coco.id
  },
  {
    street_name: 'Andina',
    city: 'Portland',
    province: 'OR',
    country: 'OR',
    restaurant_id: @chatime.id 
  }
  ]) 

# Review creation (not sure if this is right)
# Add in restaurant id
Review.create([
  {
  title: "best Bakery",
  content: "here is some review on something",
  date: DateTime.now(), 
  author_id: @jalena.id, 
},
{
  title: "terrible service",
  content: " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknow",
  date: DateTime.now(), 
  author_id: @johnny_appleseed.id,
}, 
{
  title: "nicest server",
  content: "printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was po",
  date: DateTime.now(), 
  author_id: @chad.id,
},
{
title: "best decorations",
content: "roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, look",
date: DateTime.now(), 
author_id: @jeffrey.id,
}, 
{
  title: "yummy baos",
  content: "hey hi there's foods here yummy yummy",
  date: DateTime.now(), 
  author_id: @gina.id,
}, 
{
  title: "bubble gaga",
  content: "yummiest coco because there is passionfruit yummy yummy",
  date: DateTime.now(), 
  author_id: @helen.id,
},
{
  title: "chatime vs coco",
  content: "there is coco here in ottawa now new one on the block! ",
  date: DateTime.now(), 
  author_id: @raymond.id,
}, 
{
  title: "gongfu boa",
  content: "gongfu bao is yummy ",
  date: DateTime.now(), 
  author_id: @derek.id,
}, 
{
  title: "panda express",
  content: "this ain't authentic",
  date: DateTime.now(), 
  author_id: @erin.id,
}
]) 
