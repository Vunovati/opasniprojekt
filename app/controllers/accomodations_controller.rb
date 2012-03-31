class AccomodationsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @accomodation = Accomodation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @accomodation }
    end
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
