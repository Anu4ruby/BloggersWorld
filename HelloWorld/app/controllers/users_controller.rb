class UsersController < ApplicationController
   def index
       @user = User.first
       @recipe = Recipe.first
   end
end