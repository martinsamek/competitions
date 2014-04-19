class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to articles_url, notice: "Uspesne prihlasenie :-)"
    else
      flash.now.alert = "Email alebo heslo je nespravne !!!"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Neprihlaseny uzivatel !!!"
  end
end
