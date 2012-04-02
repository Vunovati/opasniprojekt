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
    @accomodation = Accomodation.new(params[:accomodation])

    respond_to do |format|
      if @accomodation.save
        format.html { redirect_to @accomodation, notice: 'Accomodation was successfully created.' }
        format.json { render json: @accomodation, status: :created, location: @accomodation }
      else
        format.html { render action: "new" }
        format.json { render json: @accomodation.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def update
  end

  def destroy
  end
end
