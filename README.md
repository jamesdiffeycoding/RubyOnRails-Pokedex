# Ruby on Rails Pokedex

## Inspiration
As a new developer, it is easy to get stuck in a bubble learning just one programming language and never daring to venture outside of it. **So I wondered, what if I stepped outside of that bubble for myself?**? 

I wanted to start filling the void of knowledge I had about languages other than JavaScript and TypeScript, and I started with Ruby.

## What it does
This Pokedex provides CRUD functionality, meaning you can create, read (view), update and delete Pokemon from the dex. 

## How we built it
This Pokedex was created in Ruby on Rails. For me, this was the first time I had installed Ruby on Rails on my computer, so there was a lot of setup work too!

## Challenges we ran into
For me, this was the first time I had installed Ruby on Rails on my computer, so there was a lot of setup work.

## Accomplishments that we're proud of
Developing my first programming language project outside of JavaScript or TypeScript, and being brave enough to seek advice from a Ruby developer and friend.

## What I learned
Ruby on Rails provides some very useful scaffolding commands that quickly provide CRUD functionality. In JavaScript, far more coding effort is required to produce the same result, although doing so can provide greater control and familiarity with the codebase.

When setting up the project, I mistakenly called it "pokemon". This meant that "pokemon" became a reserved word, and so I ended up calling the individual pokemon datapoints "pokemonsters" rather than 'pokemon'. This leads to some buttons refering to "pokemonsters" and some referring to "pokemon". Now I know!

## Built with
Ruby on Rails scaffolding, Sqlite3

## Try it out
[Ruby on Rails Pokedex Deployment](https://rubyonrails-pokedex.onrender.com/pokemonsters)


______________________________________________________________________

# Guidance for any other JavaScript developers wanting to try making a clone of the project - an A to Z guide:
I suggest breaking this up into chunks.

## Installations
* Install Ruby, Sqlite3 and Rails
* Check their versions, and debug any errors. You are likely to find while installing them that some further things need to be installed (in my case this included psych).

## Project scaffolding and setup
* Run the command “rails new pokemon”, and change directory into the folder that has been made.
* Run the command “bundle install”, then move the folder to a place where you want it on your PC.
* Run the command “ruby bin\rails server” in that folder in your command prompt.
* Open http://localhost:3000, you should see a Ruby on Rails image.
* Run the command “rails new pokemon”, followed by "rails generate scaffold pokemonster name:string pokemon_ID:integer”
* Note that the name “pokemonster” must be different to the name of your project (in my case, “pokemon”)
* Run the command “rails db:migrate”, and navigate to “localhost:3000/pokemonsters”
* You should now see the option to add new pokemon to the blank pokedex.

## Styling
Add some styling in the app/assets/stylesheets folder, e.g. in a stylesheet called “globalstyles.css”

## Deployment
When deploying, you’ll need to assign credentials. To do this, assign an environment variable called SECRET_KEY_BASE a value equal to the config/credentials.yml.enc file

## An extra challenge
See if you can find out how to add default values to the Pokedex. If you can't figure it out, explore my project files.

