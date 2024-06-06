class PersonnageDeMangasGoodiesController < ApplicationController
  before_action :set__personnage_de_mangas_goody, only: %i[ show edit update destroy ]

  # GET /_personnage_de_mangas_goodies or /_personnage_de_mangas_goodies.json
  def index
    @_personnage_de_mangas_goodies = PersonnageDeMangasGoody.all
  end

  # GET /_personnage_de_mangas_goodies/1 or /_personnage_de_mangas_goodies/1.json
  def show
  end

  # GET /_personnage_de_mangas_goodies/new
  def new
    @_personnage_de_mangas_goody = PersonnageDeMangasGoody.new
  end

  # GET /_personnage_de_mangas_goodies/1/edit
  def edit
  end

  # POST /_personnage_de_mangas_goodies or /_personnage_de_mangas_goodies.json
  def create
    @_personnage_de_mangas_goody = PersonnageDeMangasGoody.new(_personnage_de_mangas_goody_params)

    respond_to do |format|
      if @_personnage_de_mangas_goody.save
        format.html { redirect_to personnage_de_mangas_goody_url(@_personnage_de_mangas_goody), notice: "Personnage de mangas goody was successfully created." }
        format.json { render :show, status: :created, location: @_personnage_de_mangas_goody }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnage_de_mangas_goody.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnage_de_mangas_goodies/1 or /_personnage_de_mangas_goodies/1.json
  def update
    respond_to do |format|
      if @_personnage_de_mangas_goody.update(_personnage_de_mangas_goody_params)
        format.html { redirect_to personnage_de_mangas_goody_url(@_personnage_de_mangas_goody), notice: "Personnage de mangas goody was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnage_de_mangas_goody }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnage_de_mangas_goody.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnage_de_mangas_goodies/1 or /_personnage_de_mangas_goodies/1.json
  def destroy
    @_personnage_de_mangas_goody.destroy!

    respond_to do |format|
      format.html { redirect_to personnage_de_mangas_goodies_url, notice: "Personnage de mangas goody was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnage_de_mangas_goody
      @_personnage_de_mangas_goody = PersonnageDeMangasGoody.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnage_de_mangas_goody_params
      params.require(:personnage_de_mangas_goody).permit(:name)
    end
end
