class PhotobooksGroupesController < ApplicationController
  before_action :set__photobooks_groupe, only: %i[ show edit update destroy ]

  # GET /_photobooks_groupes or /_photobooks_groupes.json
  def index
    @_photobooks_groupes = PhotobooksGroupe.all
  end

  # GET /_photobooks_groupes/1 or /_photobooks_groupes/1.json
  def show
  end

  # GET /_photobooks_groupes/new
  def new
    @_photobooks_groupe = PhotobooksGroupe.new
  end

  # GET /_photobooks_groupes/1/edit
  def edit
  end

  # POST /_photobooks_groupes or /_photobooks_groupes.json
  def create
    @_photobooks_groupe = PhotobooksGroupe.new(_photobooks_groupe_params)

    respond_to do |format|
      if @_photobooks_groupe.save
        format.html { redirect_to photobooks_groupe_url(@_photobooks_groupe), notice: "Photobooks groupe was successfully created." }
        format.json { render :show, status: :created, location: @_photobooks_groupe }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_photobooks_groupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_photobooks_groupes/1 or /_photobooks_groupes/1.json
  def update
    respond_to do |format|
      if @_photobooks_groupe.update(_photobooks_groupe_params)
        format.html { redirect_to photobooks_groupe_url(@_photobooks_groupe), notice: "Photobooks groupe was successfully updated." }
        format.json { render :show, status: :ok, location: @_photobooks_groupe }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_photobooks_groupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_photobooks_groupes/1 or /_photobooks_groupes/1.json
  def destroy
    @_photobooks_groupe.destroy!

    respond_to do |format|
      format.html { redirect_to photobooks_groupes_url, notice: "Photobooks groupe was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__photobooks_groupe
      @_photobooks_groupe = PhotobooksGroupe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _photobooks_groupe_params
      params.require(:photobooks_groupe).permit(:name)
    end
end
