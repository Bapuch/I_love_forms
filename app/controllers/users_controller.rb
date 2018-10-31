class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    if params[:user].nil?
      # pour le form_for
      @user = User.new('username' => params[:name], 'email' => params[:email], 'bio' => params[:bio])
    else
      # pour le form_tag et le form HTML normale
      @user = User.new('username' => params[:user][:username], 'email' => params[:user][:email], 'bio' => params[:user][:bio])
    end

    if @user.save
      # message de confirmation si l'utilisateur a été ajouté en base
      flash[:success] = "New user has been created: #{@user.username}"
    else
      # message d'alerte'si l'utilisateur n'a pas pu être crée
      flash[:alert] = "Couldn't create the new user as the 'Name' field is blank!"
    end
    redirect_to new_path
  end

  def index
    @users = User.all
  end
end
