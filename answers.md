# Q0: Why is this error being thrown?
A: Pokemon does not exist

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
A: I'm guessing there's a random generator in the code. Pikachu, bulbasaur, squirtle, charmander are all starter pokemon for pokemon go.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
A: 

# Question 3: What would you name your own Pokemon?
A: Boosted Monkey

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
A: passed redirect_to: back and redirect_to trainer_path(:id => current_trainer.id). Path needed something_path, and in some cases, :back was ok. 

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
A: It gives the red thing that shows when you do those errors (blank name)

# Give us feedback on the project and decal below!
A: give us more time

# Extra credit: Link your Heroku deployed app
A: https://www.youtube.com/watch?v=El1BhIQFMfs