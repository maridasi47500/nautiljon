class PhotobooksActualiteMinisController < ApplicationController
  before_action :set__photobooks_actualite_mini, only: %i[ show edit update destroy ]

  # GET /_photobooks_actualite_minis or /_photobooks_actualite_minis.json
  def index
    @_photobooks_actualite_minis = PhotobooksActualiteMini.all
  end

  # GET /_photobooks_actualite_minis/1 or /_photobooks_actualite_minis/1.json
  def show
  end

  # GET /_photobooks_actualite_minis/new
  def new
    @_photobooks_actualite_mini = PhotobooksActualiteMini.new
  end

  # GET /_photobooks_actualite_minis/1/edit
  def edit
  end

  # POST /_photobooks_actualite_minis or /_photobooks_actualite_minis.json
  def create
    @_photobooks_actualite_mini = PhotobooksActualiteMini.new(_photobooks_actualite_mini_params)

    respond_to do |format|
      if @_photobooks_actualite_mini.save
        format.html { redirect_to photobooks_actualite_mini_url(@_photobooks_actualite_mini), notice: "Photobooks actualite mini was successfully created." }
        format.json { render :show, status: :created, location: @_photobooks_actualite_mini }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_photobooks_actualite_mini.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_photobooks_actualite_minis/1 or /_photobooks_actualite_minis/1.json
  def update
    respond_to do |format|
      if @_photobooks_actualite_mini.update(_photobooks_actualite_mini_params)
        format.html { redirect_to photobooks_actualite_mini_url(@_photobooks_actualite_mini), notice: "Photobooks actualite mini was successfully updated." }
        format.json { render :show, status: :ok, location: @_photobooks_actualite_mini }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_photobooks_actualite_mini.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_photobooks_actualite_minis/1 or /_photobooks_actualite_minis/1.json
  def destroy
    @_photobooks_actualite_mini.destroy!

    respond_to do |format|
      format.html { redirect_to photobooks_actualite_minis_url, notice: "Photobooks actualite mini was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__photobooks_actualite_mini
      @_photobooks_actualite_mini = PhotobooksActualiteMini.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _photobooks_actualite_mini_params
      params.require(:photobooks_actualite_mini).permit(:name)
    end
end
