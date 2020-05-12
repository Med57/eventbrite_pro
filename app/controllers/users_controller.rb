class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(email: "", description:"", first_name:"", last_name:"")
  end
end
