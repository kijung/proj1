class PokemonsController < ApplicationController
	def new
		@pokemon = Pokemon.new	
	end
	def create
		@newthing = Pokemon.create(:name => params[:pokemon][:name],
			:level => 1,
			:health => 100,
			:trainer_id => current_trainer.id)
		
		if !@newthing.save
			flash[:error] = @newthing.errors.full_messages.to_sentence
			redirect_to newpokemon_path
		else
			redirect_to trainer_path(:id => current_trainer.id)
		end
	end
	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.trainer_id = current_trainer.id
		@pokemon.save!
		redirect_to root_path
	end

	def damage
		@pokemon = Pokemon.find(params[:id])
		@pokemon.health = @pokemon.health - 10
		@pokemon.save!
		if @pokemon.health <= 0
			@pokemon.health = 0
			@pokemon.save!
			@pokemon.destroy
		end

		redirect_to :back
	end
end