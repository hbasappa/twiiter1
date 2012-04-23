class TwittersController < ApplicationController
  # GET /twitters
  # GET /twitters.json
  def index
    @twitters = Twitter.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @twitters }
    end
  end

  # GET /twitters/1
  # GET /twitters/1.json
  def show
    @twitter = Twitter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @twitter }
    end
  end

  # GET /twitters/new
  # GET /twitters/new.json
  def new
    @twitter = Twitter.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @twitter }
    end
  end

  # GET /twitters/1/edit
  def edit
    @twitter = Twitter.find(params[:id])
  end

  # POST /twitters
  # POST /twitters.json
  def create
    @twitter = Twitter.new(params[:twitter])

    respond_to do |format|
      if @twitter.save
        format.html { redirect_to @twitter, notice: 'Twitter was successfully created.' }
        format.json { render json: @twitter, status: :created, location: @twitter }
      else
        format.html { render action: "new" }
        format.json { render json: @twitter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /twitters/1
  # PUT /twitters/1.json
  def update
    @twitter = Twitter.find(params[:id])

    respond_to do |format|
      if @twitter.update_attributes(params[:twitter])
        format.html { redirect_to @twitter, notice: 'Twitter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @twitter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twitters/1
  # DELETE /twitters/1.json
  def destroy
    @twitter = Twitter.find(params[:id])
    @twitter.destroy

    respond_to do |format|
      format.html { redirect_to twitters_url }
      format.json { head :no_content }
    end
  end
end
