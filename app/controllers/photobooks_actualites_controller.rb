class PhotobooksActualitesController < ApplicationController
  before_action :set__photobooks_actualite, only: %i[ show edit update destroy ]

  # GET /_photobooks_actualites or /_photobooks_actualites.json
  def index
    @_photobooks_actualites = PhotobooksActualite.all
  end

  # GET /_photobooks_actualites/1 or /_photobooks_actualites/1.json
  def show
  end

  # GET /_photobooks_actualites/new
  def new
    @_photobooks_actualite = PhotobooksActualite.new
  end

  # GET /_photobooks_actualites/1/edit
  def edit
  end

  # POST /_photobooks_actualites or /_photobooks_actualites.json
  def create
    @_photobooks_actualite = PhotobooksActualite.new(_photobooks_actualite_params)

    respond_to do |format|
      if @_photobooks_actualite.save
        format.html { redirect_to _photobooks_actualite_url(@_photobooks_actualite), notice: "Photobooks actualite was successfully created." }
        format.json { render :show, status: :created, location: @_photobooks_actualite }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_photobooks_actualite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_photobooks_actualites/1 or /_photobooks_actualites/1.json
  def update
    respond_to do |format|
      if @_photobooks_actualite.update(_photobooks_actualite_params)
        format.html { redirect_to _photobooks_actualite_url(@_photobooks_actualite), notice: "Photobooks actualite was successfully updated." }
        format.json { render :show, status: :ok, location: @_photobooks_actualite }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_photobooks_actualite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_photobooks_actualites/1 or /_photobooks_actualites/1.json
  def destroy
    @_photobooks_actualite.destroy!

    respond_to do |format|
      format.html { redirect_to _photobooks_actualites_url, notice: "Photobooks actualite was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__photobooks_actualite
      @_photobooks_actualite = PhotobooksActualite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _photobooks_actualite_params
      params.require(:_photobooks_actualite).permit(:name)
    end
end
