class SignupsController < ApplicationController
    
    def new
        @signup = Signup.new
        @campers = Camper.all
    end

    def create
      
        @signup = Signup.new(params.require(:signup).permit(:time, :camper_id, :activity_id))
        @signup.save
        redirect_to camper_path(@signup.camper_id)
    end
    
end
