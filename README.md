# Instructions

Hey There! Welcome to homework 2 of the Rails Decal. This week we'll have covered routes (more in depth), simple ruby syntax, and basic CRUD statements.

Between each change you should refresh your browser to observe changes.  If that doesn't work try restarting the server.

Per usual, Google is also your best friend (it's probably alot smarter than us).

This is due at the beginning of the next class.

## To start:
To start everything off, fork this repository - there should be a fork button on the top right corner of the repo.
Fork the repository to your own!

Run this command to clone this repository <b>after you fork:</b>
```
git clone https://github.com/your_username/sp15-hw2
```

Afterwards, change directory into the folder and run
```
rails server
```
This should start up your server. But wait...it's broken. What's going on? Routes? Undefined?

## Alright, lets get crackin':

### Question 1
Here, we're going to look into a post request.

If you look closely at the code at home.html.erb, you'll see a bunch of confusing code like this:

```
<%= form_tag stringify_path do... %>
```
Don't worry if this is confusing to you. We'll be covering forms/forms creation later on. What #is# important is that a form POSTS a request to a path.

Good thing we have you here to fix things up! Route a path in the routes.rb file so that when you try to load the page you route to the <em>stringify</em> method in pages_controller.

Now that we've gone through that hassle, we now face our second problem. If you try to submit the form, you get a views error message (Missing template pages/stringify)!

Add a view in /views/pages such that the <em>@text</em> variable renders "You are nothing!" if the form is blank, but prints "<em>your_name</em> is so <em> your_adjective</em>" if you submit the form. You should review how to render instance variables in views if you forget!

(Hint: every request, rails has a hash (dictionary) called <b>params</b>, containing fields that might be useful to you. The method <em>blank?</em> may also be helpful.)


### Question 2
It's blockin' time!

If you take a look at the /controller/concerns folder, you'll see that we've defined a class for you called Foobar. That's where we'll be spending some time to practice our ruby!

If you take a look at the pages_controller folder, we have a commented line of code

```
# @baz = Foobar.baz ["1", "2", "3", "4", "5", "10"]
```
Write a class function in Foobar.rb called <b>baz</b> that takes in an array of integers as strings, changes each string into an integer, adds two to each number, keeps the even numbers only, takes out any duplicates, rejects the resulting numbers greater than ten, and returns the sum of the resulting array. You should be able to write this with one line of code using method chaining!

For example:

["1", "2", "3", "4", "5", "10"] returns 10. ((2+2) + (4+2)) = 10.

["1", "2", "2", "2", "3", "4", "5", "10"] also returns 10.

If you uncomment our code, you should see the result under Question 2 of the html page.

If you need help with array methods/method chaining, take a look at:
http://ruby-doc.org//core-2.2.0/Array.html

### Question 3

Now we're going to look at more routing + creating classes!

If you look at Question 3, you'll see that we have another form! However if you submit it, you'll get an error message telling you that no route matches the request. Fix the bug! Also, change the route in routes.rb such that the /age url is directed to the <b>person</b> method in pages_controller, rather than the age method.

Under /controllers/concerns, create a new Person class whose initialize method accepts a name and age, and also creates an instance variable <b>nickname</b> that is the first four letters of their name. The person class should have a method called <b>introduce</b> that returns a string with the person's name and age. The personal class should also have a method <b>birth_year</b> that calculates what year they were born, given their age, and a method <b>nickname</b> that returns their nickname.

Using the name and age submitted from the form, create a person object. Modify person.html.erb such that you display a person's introduction, birth year, and nickname.

Don't worry about blank form edge cases, and don't worry about formatting.

## How to submit
You're done! Whew. Time to submit!
  Run these commands
  ```
  git add -A
  git commit -am "whatever message you want"
  ```
  Create a new repository in your Github account called hw2-sp15.  Follow the instructions on how to push up an existing repository then fill out this google doc http://goo.gl/forms/BfE17r574v





part 3
<%= form_tag age_path, method: :put do %>
  <%= label_tag :name, "Your name:" %>
  <%= text_area_tag :name %>
  <%= label_tag :age, "Your age:" %>
  <%= text_area_tag :age %>
  <%= submit_tag "Submit!" %>
<% end %>
