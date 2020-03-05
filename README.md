# Jalena API Project

This README documents how my API works!

Things you may want to cover:

# Review Controller
## GET    
URL <https://jalena-api-project.myshopify.io/api/v1/reviews/1>

RESPONSE 
```
[
    {
        "id": 1,
        "title": "best Bakery",
        "content": "here is some review on something",
        "date": "2020-03-05T20:58:01.000Z",
        "author_id": 1,
        "restaurants": [],
        "author": {
            "id": 1,
            "name": "Jalena"
        }
    },
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
    },
    {
        "id": 3,
        "title": "nicest server",
        "content": "printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was po",
        "date": "2020-03-05T20:58:01.000Z",
        "author_id": 3,
        "restaurants": [],
        "author": {
            "id": 3,
            "name": "Chad"
        }
    },
    {
        "id": 4,
        "title": "best decorations",
        "content": "roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, look",
        "date": "2020-03-05T20:58:01.000Z",
        "author_id": 4,
        "restaurants": [],
        "author": {
            "id": 4,
            "name": "Jeffrey"
        }
    },
    {
        "id": 5,
        "title": "yummy baos",
        "content": "hey hi there's foods here yummy yummy",
        "date": "2020-03-05T20:58:01.000Z",
        "author_id": 5,
        "restaurants": [],
        "author": {
            "id": 5,
            "name": "Gina"
        }
    },
    {
        "id": 6,
        "title": "bubble gaga",
        "content": "yummiest coco because there is passionfruit yummy yummy",
        "date": "2020-03-05T20:58:01.000Z",
        "author_id": 6,
        "restaurants": [],
        "author": {
            "id": 6,
            "name": "Helen"
        }
    },
    {
        "id": 7,
        "title": "chatime vs coco",
        "content": "there is coco here in ottawa now new one on the block! ",
        "date": "2020-03-05T20:58:01.000Z",
        "author_id": 7,
        "restaurants": [],
        "author": {
            "id": 7,
            "name": "Raymond"
        }
    },
    {
        "id": 8,
        "title": "gongfu boa",
        "content": "gongfu bao is yummy ",
        "date": "2020-03-05T20:58:01.000Z",
        "author_id": 8,
        "restaurants": [],
        "author": {
            "id": 8,
            "name": "Derek"
        }
    },
    {
        "id": 9,
        "title": "panda express",
        "content": "this ain't authentic",
        "date": "2020-03-05T20:58:01.000Z",
        "author_id": 9,
        "restaurants": [],
        "author": {
            "id": 9,
            "name": "Erin"
        }
    },
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