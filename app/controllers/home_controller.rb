class HomeController < ApplicationController
  def index
    @users = User.order(:name).all.limit 50

    respond_to do |format|
      format.html
      format.csv { send_data @users.to_csv }
    end
  end
end
