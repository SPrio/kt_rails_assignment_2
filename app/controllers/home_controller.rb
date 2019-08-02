class HomeController < ApplicationController
  def index
    @users = User.order(:name).all.limit 50
    @employees = Employee.order(:name).all.limit 50
    
    respond_to do |format|
      format.html
      format.csv { send_data @users.to_csv }
      format.pdf { send_data @employees.to_pdf }
    end
  end
end
