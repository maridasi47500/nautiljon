class PhotobooksDisponibilitesController < ApplicationController
  before_action :set__photobooks_disponibilite, only: %i[ show edit update destroy ]

  # GET /_photobooks_disponibilites or /_photobooks_disponibilites.json
  def index
    @_photobooks_disponibilites = PhotobooksDisponibilite.all
  end

  # GET /_photobooks_disponibilites/1 or /_photobooks_disponibilites/1.json
  def show
  end

  # GET /_photobooks_disponibilites/new
  def new
    @_photobooks_disponibilite = PhotobooksDisponibilite.new
  end

  # GET /_photobooks_disponibilites/1/edit
  def edit
  end

  # POST /_photobooks_disponibilites or /_photobooks_disponibilites.json
  def create
    @_photobooks_disponibilite = PhotobooksDisponibilite.new(_photobooks_disponibilite_params)

    respond_to do |format|
      if @_photobooks_disponibilite.save
        format.html { redirect_to photobooks_disponibilite_url(@_photobooks_disponibilite), notice: "Photobooks disponibilite was successfully created." }
        format.json { render :show, status: :created, location: @_photobooks_disponibilite }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_photobooks_disponibilite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_photobooks_disponibilites/1 or /_photobooks_disponibilites/1.json
  def update
    respond_to do |format|
      if @_photobooks_disponibilite.update(_photobooks_disponibilite_params)
        format.html { redirect_to photobooks_disponibilite_url(@_photobooks_disponibilite), notice: "Photobooks disponibilite was successfully updated." }
        format.json { render :show, status: :ok, location: @_photobooks_disponibilite }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_photobooks_disponibilite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_photobooks_disponibilites/1 or /_photobooks_disponibilites/1.json
  def destroy
    @_photobooks_disponibilite.destroy!

    respond_to do |format|
      format.html { redirect_to photobooks_disponibilites_url, notice: "Photobooks disponibilite was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__photobooks_disponibilite
      @_photobooks_disponibilite = PhotobooksDisponibilite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _photobooks_disponibilite_params
      params.require(:photobooks_disponibilite).permit(:name)
    end
end
