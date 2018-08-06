# README

This is the backend server for the Foodquest javascript project. It is a Rails server that persists Google Places Api information, to avoid repeat API calls.
## Front end repo here:
https://github.com/kschlunz/foodquest_frontend

## Installation:

-bundle Install

-start rails server by running rails s

-open index.html in the front end

## Requests:

#### GET:
A GET to localhost:3000/users/(user_id)/restaurants 
will return an array of all restaurants objects, reflecting places the User has saved

````
[
{
id: 13,
name: "Underdog",
address: "55 Stone St, New York, NY 10004, USA",
hours: [
"Monday: 11:30 AM – 4:00 AM",
"Tuesday: 11:30 AM – 4:00 AM",
"Wednesday: 11:30 AM – 4:00 AM",
"Thursday: 11:30 AM – 4:00 AM",
"Friday: 11:30 AM – 4:00 AM",
"Saturday: 11:30 AM – 4:00 AM",
"Sunday: 11:30 AM – 4:00 AM"
],
location: {
lat: "40.704475",
lng: "-74.01043400000003"
},
have_visited: null,
want_to_visit: null,
user: {
id: 1,
name: "Manuel",
location: "idunnoxyfucku",
email: "test@test.com"
}
},
{
id: 64,
name: "Sapps",
address: "27-26 Jackson Ave, Long Island City, NY 11101, USA",
hours: [
"Monday: 11:30 AM – 10:00 PM",
"Tuesday: 11:30 AM – 10:00 PM",
"Wednesday: 11:30 AM – 10:00 PM",
"Thursday: 11:30 AM – 10:00 PM",
"Friday: 11:30 AM – 10:30 PM",
"Saturday: 12:30 – 10:30 PM",
"Sunday: 4:30 – 10:00 PM"
],
location: {
lat: "40.7476259",
lng: "-73.94008400000001"
},
have_visited: false,
want_to_visit: true,
user: {
id: 1,
name: "Manuel",
location: "idunnoxyfucku",
email: "test@test.com"
}
}
]
````

## Contributors:


#### Technologies:
API only RAILS implementation
POSTGRESQL database

Manuel Grullon, [Github](https://github.com/menudevelopment)

Kate Schlunz, [Github](https://github.com/kschlun)
