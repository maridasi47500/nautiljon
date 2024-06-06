class ArtbooksGoodiesController < ApplicationController
  before_action :set_artbooks_goody, only: %i[ show edit update destroy ]

  # GET /artbooks_goodies or /artbooks_goodies.json
  def index
    @artbooks_goodies = ArtbooksGoody.all
  end

  # GET /artbooks_goodies/1 or /artbooks_goodies/1.json
  def show
  end

  # GET /artbooks_goodies/new
  def new
    @artbooks_goody = ArtbooksGoody.new
  end

  # GET /artbooks_goodies/1/edit
  def edit
  end

  # POST /artbooks_goodies or /artbooks_goodies.json
  def create
    @artbooks_goody = ArtbooksGoody.new(artbooks_goody_params)

    respond_to do |format|
      if @artbooks_goody.save
        format.html { redirect_to artbooks_goody_url(@artbooks_goody), notice: "Artbooks goody was successfully created." }
        format.json { render :show, status: :created, location: @artbooks_goody }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artbooks_goody.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artbooks_goodies/1 or /artbooks_goodies/1.json
  def update
    respond_to do |format|
      if @artbooks_goody.update(artbooks_goody_params)
        format.html { redirect_to artbooks_goody_url(@artbooks_goody), notice: "Artbooks goody was successfully updated." }
        format.json { render :show, status: :ok, location: @artbooks_goody }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artbooks_goody.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artbooks_goodies/1 or /artbooks_goodies/1.json
  def destroy
    @artbooks_goody.destroy!

    respond_to do |format|
      format.html { redirect_to artbooks_goodies_url, notice: "Artbooks goody was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artbooks_goody
      @artbooks_goody = ArtbooksGoody.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artbooks_goody_params
      params.require(:artbooks_goody).permit(:name)
    end
end
