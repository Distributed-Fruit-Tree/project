Original App Design Project - README Template
===
<img src='https://github.com/Distributed-Fruit-Tree/project/blob/main/ezgif.com-gif-maker%20(10).gif' title='Work in Progress' width='' alt='App Walkthrough' />

# Distributed Fruit Tree App

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
Distributed Fruit Tree connects people who have fruit trees with people who want locally-grown organic fruit.
A single fruit tree can produce 100's of pounds of fruit a year. Most owners of fruit trees do not consume all of the fruit produced, and most of the fruit is left to rot on the tree or on the ground. At the same time, there is a growing market for sustainably sourced local, organic produce. This app connects producers with more fruit than they need, with foragers who are looking for resources.


**Possible Names:**
-Fruitshare
-Harvest
-FruitNearMe


**Brainstorming**
User Stories: 

Basic: 
* Want to allow owners of fruit trees/garden to sell produce
* Want to allow people who want fruit to find the fruit being sold
* Map View
* List View

Question/thought: Should all users have ability to sell, or should users be separated and have different interfaces depending on whether they are a buyer or a seller?

Idea: Shoppers and Producers have:
    Profile: Picture, description/intro, instructions, Reviews/ratings (stars), location, 

   Necessary:
    
* Can rate sellers and fruit
* Map View: Have a map of where the fruit trees (producers) are located, and where the user is located (GPS and Map Layer) Fruit Trees are represented by icons of the trees. Clicking on an icon would open up the profile of the owner along with associated information (Name of owner, picture of fruit, Rating of Fruit/Owner, price of resource, times available?) Fruiting Season
* Profile with pics of fruit and tree 
* Search function with filters (species of fruit, rating, price, distance
* Option to view from both the buyer and seller's perspective
* User (Forager) can see a map view of resources (fruit trees) in the area
    
    Nice-to-have:
    
* List View (compiles a list) of resources within a given time/distance range (Like search function on google maps)
* options for donation of fruit (link to charities, etc.)
* options for trading of fruit
* add a messaging option (for questions and planning a pick-up time)
* vegetables (could be like a farmers market app)
* Preferred range of fruit sellers (0 - 20 mi radius or within an hour's drive or something)
* Can have realtime updates and push notifications
* Home-made honey, chicken eggs, goat products, any food product someone may be making at home.
* Payment: Link App to producers Bank account, Shoppers send payments through app, Can be held in escrow until fulfillment of each party's obligations
* Have a grubhub-type functionality that allows drivers to purchase and deliver fruit
    
    



### Product Evaluation
[Evaluation of your app across the following attributes]
- **Category:**
    - Map & selling app?
    - Social/ Market App
    - Food and Drink
- **Mobile:**
    - Will have many components that are visual and intuitive
    - The in app experience is more streamlined than a website. Since the app is meant to be used on mobile devices, the UX should be simple enough to navigate easily on a mobile device (big buttons, retractable sidebars)
- **Story:**
    - We think this app will be useful. It is similar in some ways to other apps (like a cross btw Falling Fruit and AirB&B). It can be useful to anyone who has fruit trees and anyone who likes fruit
    - The story around this app is very compelling: "Connect households with with locally sourced organic fruit"
    - Fruit Trees can produce 100's of pounds of fruit a year. Most owners of fruit trees do not consume all of the fruit produced, and most of the fruit is left to rot on the tree or on the ground (get statistics 90%? 95%). At the same time, there is a growing market for sustainably sourced local, organic produce. This app connects producers with more fruit than they know what to do with, with people who are willing to pay for those resources.
- **Market:** 
    - The market includes both those who want to sell their resources fruit/bees/eggs (producers), and those who want to purchase these local resources (buyers)
    - Global Potential User Base - Users can be literally anyone in the world with a smartphone and a motivation to buy or sell locally grown fruits (or more)
    - This app provides huge value to a niche group of people.
- **Habit:**
    - Not really meant to be addicting
    - App would be opened anytime someone wanted to sell or buy local fruit
    - The average user uses the app as a facilitator to bring their products to market.
- **Scope:**
    - A lot of seemingly challenging components of this app, lots of stuff we don't know how to implement at the moment.
    - The eventual scope of the app is huge if uptaken by the market, similar to Airbnb. What we would be able to realistically design and develop of the duration of this course is much smaller and would be a bare-bones proof-of-concept.
    - I believe a stripped down version of the app would still be engaging, challenging and interesting to build.
    - In process of becoming clearly defined.

### Other Notes
- "You're not going to touch my goat" - CL 2021

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

[X] User (Forager) knows the name and logo of the app they are using
[X] User (Forager) can navigate between their user profile, messages, and a map
[X] User (Forager) can create an account
[ehh somewhat there] User (Forager) can update profile
[X] User (Forager) Sees a map view
[ ] The map view contains resources in area
[ ] User (Forager) can select a resource
[ ] User (Forager) can see data of that specific resource
[ ] User (Forager) can search for a type of resource
[ ] User (Forager) can apply filters to search
[ ] User (Producer) can create an account
[ ] User (producer) can update profile
[ ] User (producer) can add different resources to profile



**Optional Nice-to-have Stories**

* User (Forager) Can message producer
* User (Forager) can see a comparative price for the same item at a nearby grocery store
* User (Forager) can see a list view of relevant resources
* User (Forager) can rate sellers and fruit
* User (Forager/Producer) can follow/unfollow another user



### 2. Screen Archetypes

* [list first screen here]
   * [list associated required story here]
   * ...
   * Login Screen
       * User can login
   * Registration Screen
       * User can create new account
   * Map Screen
       * User can see what resources are being offered/available in the area 
       * User can select a resource
   * Resource Screen (popup?)
       * User can view information of a resource
   * Account/Profile Screen
       * User can update profile
       * User (producer) can add different resources to profile
   * Search Screen
       * User can search for a specific resource
   * Filter Screen
       * User can apply filters to search
   * 
   * 
   * 
   * 
   * 
   * 

### 3. Navigation

**Tab Navigation** (Tab to Screen)

-Essentials for tabs: 
1) map with search function
2) messages, inbox/notifications
3) profile, with picture, rating, fruit preferences
4) App Preferences/ Settings

* first tab: map perhaps with search function (could also have list view, prioritizing things that are super close)
* second tab:
* third tab:

**Flow Navigation** (Screen to Screen)

* Map Screen
    * => List View (Optional for first iteration) Options from list view should be similar/same as choices from map view
    * => (By clicking on fruit icon on map) Fruit/Owner info
       * => Buy Screen
           * => Map Screen
           * Quantity (weight/mass)
           * Display Cost
           * Estimated time of Pickup/Availability (Or option for delivery)
    * => Message Inbox
        * => Map Screen
        * => Create new message: to who?
        * scroll through existing messages
   
    * => Settings/App Preferences
       * => Map Screen
       * Settings options


## Wireframes

### [BONUS x 2?] Digital Wireframes Interactive Prototype
<img src='https://github.com/Distributed-Fruit-Tree/project/blob/main/ezgif.com-gif-maker%20(4).gif' title='Digital Wireframes Interactive Prototype' width='' alt='Video Walkthrough' />



## Schema 
[This section will be completed in Unit 9]
### Models
[Add table of models]
#### Fruit Listing

   | Property      | Type     | Description |
   | ------------- | -------- | ------------|
   | objectId      | String   | unique id for the fruit listing post (default field) |
   | author        | Pointer to User| image author |
   | fruitType     | String   | type of fruit |
   | image         | File     | image of the fruit that user posts |
   | caption       | String   | image caption by author |
   | price         | Float/String | the price per fruit or per pound |
   | location       | ????   | location where the fruit is |
   | createdAt     | DateTime | date when post is created (default field) |
   | updatedAt     | DateTime | date when post is last updated (default field) |
   | upvote/like   | Int      | number of people who have previously bought fruit and liked it? |

#### User

   | Property      | Type     | Description |
   | ------------- | -------- | ------------|
   | userId      | String   | unique id for the user (default field) |
   | author        | Pointer to User| image author |
   | createdAt     | DateTime | date when user made profile (default field) |
   | image         | File     | user profile picture |
   | rating        | Float     | average review rating for fruit listings by this person|
   | reviews       | review object  | comments from previous buyers |
   | location      | File     | location (for sellers) |
   | following     | collection of user obj | the sellers that the user person is following (for buyers)|
   | followers         | collection of user obj     | the buyers that are following a seller (for sellers) |
   | message      | collection of message obj     | messages |

#### Review

   | Property      | Type     | Description |
   | ------------- | -------- | ------------|
   | objectId      | String   | unique id for the review post (default field) |
   | post pointer?      | Fruit Listing pointer   | a pointer to the post/fruit listing |
   | text      | String   | the written review for the purchase |
   | rating      | Int   | a rating out of 5 |
   | author        | Pointer to User| image author |
   | recipient?        | Pointer to User| Pointer to User who sold the fruit |
   
   
   
#### Message (property of user obj)

   | Property      | Type     | Description |
   | ------------- | -------- | ------------|
   | objectId      | String   | unique id for the message? (default field) |
   | user         | user obj  | the user being messaged |



### Networking
- [Add list of network requests by screen ]
- Log-in Screen / Create User Screen
   | Request Type  | HTTP verb     | Description |
   | ------------- | --------   | ------------|
   | Create        | user obj?  | creating a new user profile|
   | Update        | user obj?  | updating user profile|
 

- Home / Map Screen
   | Request Type  | HTTP verb     | Description |
   | ------------- | --------   | ------------|
   | Get           |    | get map     |

- Messaging Screen
   | Request Type  | HTTP verb     | Description |
   | ------------- | --------   | ------------|
   | Create        |    | creates and sends a new message    |
   

- Write a Review Screen (we don't have yet?)
   | Request Type  | HTTP verb     | Description |
   | ------------- | --------   | ------------|
   | Create        |    | creates and posts a new review    |
   
   
   
- [Create basic snippets for each Parse network request]
Creating new User
```swift=
//creating new user

userId : String, author: String, createdAt: time, image : file, rating : float, review : reviewObj, location: file, following: collection of user obj, followers : collection of user obj, message : collection of message obj

PFObject *newUser = [PFObject objectWithClassName:@"User"];
User[@"userId"] = @id;
gameScore[@"createdAt"] = @createdAt;
gameScore[@"image"] = @pfp;
gameScore[@"rating"] = @rating;
gameScore[@"review"] = @review;
gameScore[@"location"] = @location;
gameScore[@"following"] = @usersFollowing;
gameScore[@"followers"] = @usersFollowers;
gameScore[@"message"] = @messages;
[gameScore saveInBackgroundWithBlock:^(BOOL succeeded, NSError * _Nullable error) {
  if (succeeded) {
    // The object has been saved.
  } else {
    // There was a problem, check error.description
  }
}];

```

Query all nearby fruit listings???
```swift
         let query = PFQuery(className:"FruitListing")
         query.whereKey("Location", within: currentUser.location.5_miles)
         query.order(byDescending: "Review")
         query.findObjectsInBackground { (FruitListing: [PFObject]?, error: Error?) in
            if let error = error { 
               print(error.localizedDescription)
            } else if let FruitListings = FruitListings {
               print("Successfully retrieved \(FruitListing.count) FruitListings.")
           // TODO: Do something with fruit listings...
            }
         }
```

Query all messages?
```swift
         let query = PFQuery(className:"Message")
         query.whereKey("author", equalTo: currentUser)
         query.order(byDescending: "createdAt")
         query.findObjectsInBackground { (Message: [PFObject]?, error: Error?) in
            if let error = error { 
               print(error.localizedDescription)
            } else if let Messages = Messages {
               print("Successfully retrieved \(Messages.count) Messages.")
           // TODO: Do something with messages...
            }
         }
```
         

- [OPTIONAL: List endpoints if using existing API such as Yelp]

