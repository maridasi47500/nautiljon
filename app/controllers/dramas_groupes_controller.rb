class DramasGroupesController < ApplicationController
  before_action :set__dramas_groupe, only: %i[ show edit update destroy ]

  # GET /_dramas_groupes or /_dramas_groupes.json
  def index
    @_dramas_groupes = DramasGroupe.all
  end

  # GET /_dramas_groupes/1 or /_dramas_groupes/1.json
  def show
  end

  # GET /_dramas_groupes/new
  def new
    @_dramas_groupe = DramasGroupe.new
  end

  # GET /_dramas_groupes/1/edit
  def edit
  end

  # POST /_dramas_groupes or /_dramas_groupes.json
  def create
    @_dramas_groupe = DramasGroupe.new(_dramas_groupe_params)

    respond_to do |format|
      if @_dramas_groupe.save
        format.html { redirect_to dramas_groupe_url(@_dramas_groupe), notice: "Dramas groupe was successfully created." }
        format.json { render :show, status: :created, location: @_dramas_groupe }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dramas_groupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dramas_groupes/1 or /_dramas_groupes/1.json
  def update
    respond_to do |format|
      if @_dramas_groupe.update(_dramas_groupe_params)
        format.html { redirect_to dramas_groupe_url(@_dramas_groupe), notice: "Dramas groupe was successfully updated." }
        format.json { render :show, status: :ok, location: @_dramas_groupe }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dramas_groupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dramas_groupes/1 or /_dramas_groupes/1.json
  def destroy
    @_dramas_groupe.destroy!

    respond_to do |format|
      format.html { redirect_to dramas_groupes_url, notice: "Dramas groupe was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dramas_groupe
      @_dramas_groupe = DramasGroupe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dramas_groupe_params
      params.require(:dramas_groupe).permit(:name)
    end
end
