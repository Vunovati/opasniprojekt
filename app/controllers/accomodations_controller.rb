class AccomodationsController < ApplicationController
  def index
    @accomodations = Accomodation.paginate(:page => params[:page]) 
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @accomodations }
    end
  end

  # GET /recordings/1
  # GET /recordings/1.json
  def show
    @accomodation = Accomodation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @accomodation }
    end
  end

  def new
    @accomodation = Accomodation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @accomodation }
    end
  end

  def edit
    @accomodation = Accomodation.find(params[:id])    
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
  
  # PUT /accomodations/1
  # PUT /accomodations/1.json
  def update
    @accomodation = Accomodation.find(params[:id])

    respond_to do |format|
      if @accomodation.update_attributes(params[:accomodation])
        format.html { redirect_to @accomodation, :notice => 'Accomodation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { redirect_to edit_accomodation_path(@accomodation), :notice => 'An error occured' }
        format.json { render json: @accomodation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accomodations/1
  # DELETE /accomodations/1.json
  def destroy
    @accomodation = Accomodation.find(params[:id])
    @accomodation.destroy

    respond_to do |format|
      format.html { redirect_to accomodations_url, :notice => @accomodation.adress_line + " " + @accomodation.city + " deleted" }
      format.json { head :no_content }
    end
  end
end

