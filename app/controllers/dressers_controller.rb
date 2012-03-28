class DressersController < ApplicationController
  # GET /dressers
  # GET /dressers.json
  def index
    @dressers = Dresser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dressers }
    end
  end

  # GET /dressers/1
  # GET /dressers/1.json
  def show
    @dresser = Dresser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dresser }
    end
  end

  # GET /dressers/new
  # GET /dressers/new.json
  def new
    @dresser = Dresser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dresser }
    end
  end

  # GET /dressers/1/edit
  def edit
    @dresser = Dresser.find(params[:id])
  end

  # POST /dressers
  # POST /dressers.json
  def create
    @dresser = Dresser.new(params[:dresser])

    respond_to do |format|
      if @dresser.save
        format.html { redirect_to @dresser, notice: 'Dresser was successfully created.' }
        format.json { render json: @dresser, status: :created, location: @dresser }
      else
        format.html { render action: "new" }
        format.json { render json: @dresser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dressers/1
  # PUT /dressers/1.json
  def update
    @dresser = Dresser.find(params[:id])

    respond_to do |format|
      if @dresser.update_attributes(params[:dresser])
        format.html { redirect_to @dresser, notice: 'Dresser was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dresser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dressers/1
  # DELETE /dressers/1.json
  def destroy
    @dresser = Dresser.find(params[:id])
    @dresser.destroy

    respond_to do |format|
      format.html { redirect_to dressers_url }
      format.json { head :no_content }
    end
  end
end
