# Jalena API Project

This is a guide to my restaurant review API! This API allows you to discover restaurants with their reviews, the review's author, the owner, the address of the restaurant, and more! 

It has the following models:
- A restaurant model that stores the name of the restaurant and it's specialty
- An address model that has the street_name, number, city, country, province, restaurant_id
- An author model that has the reviewer's name
- An owner model for the restaurant's owner
- A restaurant_reviews model that is used for through associations
- The review model has a title, content, date, and author_id
- There is review and restaurant controller

Some things it can do:
- CRUD the reviews on the restaurants
- CRUD the restaurant's attributes
- Find out the address, reviews, and owner of a given restaurant

# Review Controller
## GET
URL <https://jalena-api-project.myshopify.io/api/v1/reviews/1>

RESPONSE 
```
[
    {
        "id": 1,
        "name": "Super Sushi",
        "specialty": "Japanese",
        "owner_id": 1,
        "address": {
            "id": 1,
            "street_name": "Jalan M Husni Thamrin 1",
            "number": 1,
            "city": "Jakarta Pusat",
            "province": "Daerah Khusus Ibukota Jakarta",
            "country": "id",
            "restaurant_id": 1
        },
        "reviews": [],
        "owner": {
            "id": 1,
            "name": "Emma"
        }
    },
    {
        "id": 2,
        "name": "Bomb BBQ",
        "specialty": "Southern",
        "owner_id": 5,
        "address": {
            "id": 2,
            "street_name": "Prinsengracht 267",
            "number": 2,
            "city": "Amsterdam",
            "province": "Noord-Holland",
            "country": "nl",
            "restaurant_id": 2
        },
        "reviews": [],
        "owner": {
            "id": 5,
            "name": "Sally"
        }
    },
    {
        "id": 3,
        "name": "Tasty Tacos",
        "specialty": "Mexican",
        "owner_id": 2,
        "address": {
            "id": 3,
            "street_name": "1400 S Congress Ave",
            "number": 3,
            "city": "Austin",
            "province": "TX",
            "country": "US",
            "restaurant_id": 3
        },
        "reviews": [],
        "owner": {
            "id": 2,
            "name": "Lola"
        }
    },
    {
        "id": 4,
        "name": "Perfect Pasta",
        "specialty": "Italian",
        "owner_id": 4,
        "address": {
            "id": 4,
            "street_name": "3667 Las Vegas Blvd S",
            "number": 4,
            "city": "Las Vegas",
            "province": "NV",
            "country": "US",
            "restaurant_id": 4
        },
        "reviews": [],
        "owner": {
            "id": 4,
            "name": "Dill"
        }
    },
    {
        "id": 5,
        "name": "Notable Noodles",
        "specialty": "Asian",
        "owner_id": 3,
        "address": {
            "id": 5,
            "street_name": "3204 Seawall Blvd",
            "number": 5,
            "city": "Galveston",
            "province": "TX",
            "country": "US",
            "restaurant_id": 5
        },
        "reviews": [],
        "owner": {
            "id": 3,
            "name": "Brad"
        }
    },
    {
        "id": 6,
        "name": "Mighty Mexican",
        "specialty": "Asian",
        "owner_id": 4,
        "address": {
            "id": 6,
            "street_name": "Skylon Tower",
            "number": 61,
            "city": "Niagara Falls",
            "province": "ON",
            "country": "CA",
            "restaurant_id": 6
        },
        "reviews": [],
        "owner": {
            "id": 4,
            "name": "Dill"
        }
    },
    {
        "id": 7,
        "name": "Hello Halal",
        "specialty": "Halal",
        "owner_id": 5,
        "address": {
            "id": 7,
            "street_name": "Dinosaur Bar-B-Que",
            "number": 7,
            "city": "Syracuse",
            "province": "NY",
            "country": "US",
            "restaurant_id": 7
        },
        "reviews": [],
        "owner": {
            "id": 5,
            "name": "Sally"
        }
    },
    {
        "id": 8,
        "name": "Pink Pizza",
        "specialty": "Italian",
        "owner_id": 6,
        "address": {
            "id": 8,
            "street_name": "Shady Maple Smorgasbord",
            "number": 8,
            "city": "East Earl",
            "province": "PA",
            "country": "US",
            "restaurant_id": 8
        },
        "reviews": [],
        "owner": {
            "id": 6,
            "name": "Billy"
        }
    },
    {
        "id": 9,
        "name": "Gonfu Bao",
        "specialty": "Asian",
        "owner_id": 7,
        "address": {
            "id": 9,
            "street_name": "The Ledbury",
            "number": 9,
            "city": "Notting Hill",
            "province": "London",
            "country": "GB",
            "restaurant_id": 9
        },
        "reviews": [],
        "owner": {
            "id": 7,
            "name": "Dilly"
        }
    },
    {
        "id": 10,
        "name": "Panda Express",
        "specialty": "Asian",
        "owner_id": 8,
        "address": {
            "id": 10,
            "street_name": "Hill Country",
            "number": 10,
            "city": "New York",
            "province": "NY",
            "country": "US",
            "restaurant_id": 10
        },
        "reviews": [],
        "owner": {
            "id": 8,
            "name": "Dolly"
        }
    },
    {
        "id": 11,
        "name": "Coco",
        "specialty": "Bubble Tea",
        "owner_id": 9,
        "address": {
            "id": 11,
            "street_name": "Founding Farmers",
            "number": 11,
            "city": "Washington",
            "province": "DC",
            "country": "US",
            "restaurant_id": 11
        },
        "reviews": [],
        "owner": {
            "id": 9,
            "name": "Joe"
        }
    },
    {
        "id": 12,
        "name": "Chatime",
        "specialty": "Bubble Tea",
        "owner_id": 10,
        "address": {
            "id": 12,
            "street_name": "Andina",
            "number": 12,
            "city": "Portland",
            "province": "OR",
            "country": "OR",
            "restaurant_id": 12
        },
        "reviews": [],
        "owner": {
            "id": 10,
            "name": "bob"
        }
    }
]
```

## PATCH / PUT
URL <https://jalena-api-project.myshopify.io/api/v1/reviews/2>

REQUEST 
```
{
	"title": "Hello Halal"
}
```
RESPONSE
```
{
    "id": 2,
    "title": "Hello Halal",
    "content": " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknow",
    "date": "2020-03-05T20:58:01.000Z",
    "author_id": 2,
    "restaurants": [],
    "author": {
        "id": 2,
        "name": "Johnny"
    }
}
```

## POST 
URL <https://jalena-api-project.myshopify.io/api/v1/reviews/>

REQUEST 
```
{
    "title": "MyString",
    "content": "MyText",
    "date": "2020-03-02 11:38:59",
    "author_id": "1"
}
```

RESPONSE
```
{
    "id": 10,
    "title": "MyString",
    "content": "MyText",
    "date": "2020-03-02T11:38:59.000Z",
    "author_id": 1,
    "restaurants": [],
    "author": {
        "id": 1,
        "name": "Jalena"
    }
}
```
## DELETE 
URL <https://jalena-api-project.myshopify.io/api/v1/reviews/2>

RESPONSE
```
{
    "message": "Review was successfully destroyed"
}
```

# Restaurant Controller
## GET    
URL <https://jalena-api-project.myshopify.io/api/v1/restaurants>

```
[
    {
        "id": 1,
        "name": "Super Sushi",
        "specialty": "Japanese",
        "owner_id": 1,
        "address": {
            "id": 1,
            "street_name": "Jalan M Husni Thamrin 1",
            "number": null,
            "city": "Jakarta Pusat",
            "province": "Daerah Khusus Ibukota Jakarta",
            "country": "id",
            "restaurant_id": 1
        },
        "reviews": [],
        "owner": {
            "id": 1,
            "name": "Emma"
        }
    },
    {
        "id": 2,
        "name": "Bomb BBQ",
        "specialty": "Southern",
        "owner_id": 5,
        "address": {
            "id": 2,
            "street_name": "Prinsengracht 267",
            "number": null,
            "city": "Amsterdam",
            "province": "Noord-Holland",
            "country": "nl",
            "restaurant_id": 2
        },
        "reviews": [],
        "owner": {
            "id": 5,
            "name": "Sally"
        }
    },
    {
        "id": 3,
        "name": "Tasty Tacos",
        "specialty": "Mexican",
        "owner_id": 2,
        "address": {
            "id": 3,
            "street_name": "1400 S Congress Ave",
            "number": null,
            "city": "Austin",
            "province": "TX",
            "country": "US",
            "restaurant_id": 3
        },
        "reviews": [],
        "owner": {
            "id": 2,
            "name": "Lola"
        }
    },
    {
        "id": 4,
        "name": "Perfect Pasta",
        "specialty": "Italian",
        "owner_id": 4,
        "address": {
            "id": 4,
            "street_name": "3667 Las Vegas Blvd S",
            "number": null,
            "city": "Las Vegas",
            "province": "NV",
            "country": "US",
            "restaurant_id": 4
        },
        "reviews": [],
        "owner": {
            "id": 4,
            "name": "Dill"
        }
    },
    {
        "id": 5,
        "name": "Notable Noodles",
        "specialty": "Asian",
        "owner_id": 3,
        "address": {
            "id": 5,
            "street_name": "3204 Seawall Blvd",
            "number": null,
            "city": "Galveston",
            "province": "TX",
            "country": "US",
            "restaurant_id": 5
        },
        "reviews": [],
        "owner": {
            "id": 3,
            "name": "Brad"
        }
    },
    {
        "id": 6,
        "name": "Pink Pizza",
        "specialty": "Italian",
        "owner_id": 6,
        "address": {
            "id": 6,
            "street_name": "Shady Maple Smorgasbord",
            "number": null,
            "city": "East Earl",
            "province": "PA",
            "country": "US",
            "restaurant_id": 6
        },
        "reviews": [],
        "owner": {
            "id": 6,
            "name": "Billy"
        }
    },
    {
        "id": 7,
        "name": "Gonfu Bao",
        "specialty": "Asian",
        "owner_id": 7,
        "address": {
            "id": 7,
            "street_name": "The Ledbury",
            "number": null,
            "city": "Notting Hill",
            "province": "London",
            "country": "GB",
            "restaurant_id": 7
        },
        "reviews": [],
        "owner": {
            "id": 7,
            "name": "Dilly"
        }
    },
    {
        "id": 8,
        "name": "Panda Express",
        "specialty": "Asian",
        "owner_id": 8,
        "address": {
            "id": 8,
            "street_name": "Hill Country",
            "number": null,
            "city": "New York",
            "province": "NY",
            "country": "US",
            "restaurant_id": 8
        },
        "reviews": [],
        "owner": {
            "id": 8,
            "name": "Dolly"
        }
    },
    {
        "id": 9,
        "name": "Coco",
        "specialty": "Bubble Tea",
        "owner_id": 9,
        "address": {
            "id": 9,
            "street_name": "Founding Farmers",
            "number": null,
            "city": "Washington",
            "province": "DC",
            "country": "US",
            "restaurant_id": 9
        },
        "reviews": [],
        "owner": {
            "id": 9,
            "name": "Joe"
        }
    },
    {
        "id": 10,
        "name": "Chatime",
        "specialty": "Bubble Tea",
        "owner_id": 10,
        "address": {
            "id": 10,
            "street_name": "Andina",
            "number": null,
            "city": "Portland",
            "province": "OR",
            "country": "OR",
            "restaurant_id": 10
        },
        "reviews": [],
        "owner": {
            "id": 10,
            "name": "bob"
        }
    }
]
```

## POST
URL <https://jalena-api-project.myshopify.io/api/v1/restaurants>

REQUEST 
```
{
    "name": "MyString",
    "specialty": "MyString",
    "owner_id": "1"
}
```

RESPONSE 
```
{
    "id": 11,
    "name": "MyString",
    "specialty": "MyString",
    "owner_id": 1,
    "address": null,
    "reviews": [],
    "owner": {
        "id": 1,
        "name": "Emma"
    }
}
```

## PATCH
URL <https://jalena-api-project.myshopify.io/api/v1/restaurants/1>

REQUEST
```
{
    "name": "MyString"
}
```

RESPONSE
```
{
    "id": 1,
    "name": "MyString",
    "specialty": "Japanese",
    "owner_id": 1,
    "address": {
        "id": 1,
        "street_name": "Jalan M Husni Thamrin 1",
        "number": null,
        "city": "Jakarta Pusat",
        "province": "Daerah Khusus Ibukota Jakarta",
        "country": "id",
        "restaurant_id": 1
    },
    "reviews": [],
    "owner": {
        "id": 1,
        "name": "Emma"
    }
}
```

## DELETE 

URL <https://jalena-api-project.myshopify.io/api/v1/restaurants/1>

RESPONSE
```
{
    "message": "Restaurant was successfully destroyed"
}
```