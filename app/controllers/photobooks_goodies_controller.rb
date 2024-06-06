class PhotobooksGoodiesController < ApplicationController
  before_action :set__photobooks_goody, only: %i[ show edit update destroy ]

  # GET /_photobooks_goodies or /_photobooks_goodies.json
  def index
    @_photobooks_goodies = PhotobooksGoody.all
  end

  # GET /_photobooks_goodies/1 or /_photobooks_goodies/1.json
  def show
  end

  # GET /_photobooks_goodies/new
  def new
    @_photobooks_goody = PhotobooksGoody.new
  end

  # GET /_photobooks_goodies/1/edit
  def edit
  end

  # POST /_photobooks_goodies or /_photobooks_goodies.json
  def create
    @_photobooks_goody = PhotobooksGoody.new(_photobooks_goody_params)

    respond_to do |format|
      if @_photobooks_goody.save
        format.html { redirect_to photobooks_goody_url(@_photobooks_goody), notice: "Photobooks goody was successfully created." }
        format.json { render :show, status: :created, location: @_photobooks_goody }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_photobooks_goody.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_photobooks_goodies/1 or /_photobooks_goodies/1.json
  def update
    respond_to do |format|
      if @_photobooks_goody.update(_photobooks_goody_params)
        format.html { redirect_to photobooks_goody_url(@_photobooks_goody), notice: "Photobooks goody was successfully updated." }
        format.json { render :show, status: :ok, location: @_photobooks_goody }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_photobooks_goody.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_photobooks_goodies/1 or /_photobooks_goodies/1.json
  def destroy
    @_photobooks_goody.destroy!

    respond_to do |format|
      format.html { redirect_to photobooks_goodies_url, notice: "Photobooks goody was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__photobooks_goody
      @_photobooks_goody = PhotobooksGoody.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _photobooks_goody_params
      params.require(:photobooks_goody).permit(:name)
    end
end
