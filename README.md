# RubyOnRails-Pokedex

## How I made this app:

	Install Ruby, Sqlite3 and Rails

	Check their versions, and debug any errors. You are likely to find while installing them that some further things need to be installed (in my case this included psych).

	Run the command “rails new pokemon”

	Change directory into the gemstone folder that has been made.

	Run the command “bundle install”

	Move the folder to a place where you want it on your PC

	Run the command “ruby bin\rails server” in that folder in your command prompt

	Open http://localhost:3000

o	You should see a Ruby on Rails image

	Run the command “rails new pokemon”

	Run the command “rails generate scaffold pokemonster name:string pokemon_ID:integer”

o	The name “pokemonster” must be different to the name of your project (in my case, “pokemon”)

	Run the command “rails db:migrate”

	Navigate to “localhost:3000/pokemonsters”
o	You should now see the option to add new pokemon

o	Clicking will take you to add new pokemonster

	Add some styling in the app/assets/stylesheets folder, e.g. in a stylesheet called “globalstyles.css”

	When deploying, you’ll need to assign credentials
o	To do this, assign an environment variable called SECRET_KEY_BASE a value equal to the config/credentials.yml.enc file

