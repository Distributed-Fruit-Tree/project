Original App Design Project - README Template
===

# Distributed Fruit Tree App

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
Distributed Fruit Market connects people who have fruit trees  with people who want locally-grown organic fruit.
Fruit trees produce a lot of fruit, usually more than one family can use. Rather than have the fruit rot, Distributed Fruit Market can eliminate this waste. 



**Brainstorming**
User Stories: 

Basic Basic: 
Want to allow owners of fruit trees to market/sell fruit trees/garden produce
Want to allow people who want fruit to find the fruit being sold
Map View
List View

Question/thought: Should all users have ability to sell, or should users be separated and have different interfaces depending on whether they are a buyer or a seller

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
    
    



### App Evaluation
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

* User (Forager) can create an account
* User (Forager) can update profile
* User (Forager) Sees a map view of resources in area
* User (Forager) can select a resource
* User (Forager) can see data of that specific resource
* User (Forager) can search for a type of resource
* User (Forager) can apply filters to search
* User (Producer) can create an account
* User (producer) can update profile
* User (producer) can add different resources to profile



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
[Add picture of your hand sketched wireframes in this section]
<img src="YOUR_WIREFRAME_IMAGE_URL" width=600>

### [BONUS] Digital Wireframes & Mockups

### [BONUS] Interactive Prototype

## Schema 
[This section will be completed in Unit 9]
### Models
[Add table of models]



### Networking
- [Add list of network requests by screen ]
* Login screen
* Fruit map
* Messages screen
* Profile screen

- [Create basic snippets for each Parse network request]


- [OPTIONAL: List endpoints if using existing API such as Yelp]

