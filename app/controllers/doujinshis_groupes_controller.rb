class DoujinshisGroupesController < ApplicationController
  before_action :set__doujinshis_groupe, only: %i[ show edit update destroy ]

  # GET /_doujinshis_groupes or /_doujinshis_groupes.json
  def index
    @_doujinshis_groupes = DoujinshisGroupe.all
  end

  # GET /_doujinshis_groupes/1 or /_doujinshis_groupes/1.json
  def show
  end

  # GET /_doujinshis_groupes/new
  def new
    @_doujinshis_groupe = DoujinshisGroupe.new
  end

  # GET /_doujinshis_groupes/1/edit
  def edit
  end

  # POST /_doujinshis_groupes or /_doujinshis_groupes.json
  def create
    @_doujinshis_groupe = DoujinshisGroupe.new(_doujinshis_groupe_params)

    respond_to do |format|
      if @_doujinshis_groupe.save
        format.html { redirect_to _doujinshis_groupe_url(@_doujinshis_groupe), notice: "Doujinshis groupe was successfully created." }
        format.json { render :show, status: :created, location: @_doujinshis_groupe }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_groupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujinshis_groupes/1 or /_doujinshis_groupes/1.json
  def update
    respond_to do |format|
      if @_doujinshis_groupe.update(_doujinshis_groupe_params)
        format.html { redirect_to _doujinshis_groupe_url(@_doujinshis_groupe), notice: "Doujinshis groupe was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujinshis_groupe }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_groupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujinshis_groupes/1 or /_doujinshis_groupes/1.json
  def destroy
    @_doujinshis_groupe.destroy!

    respond_to do |format|
      format.html { redirect_to _doujinshis_groupes_url, notice: "Doujinshis groupe was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujinshis_groupe
      @_doujinshis_groupe = DoujinshisGroupe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujinshis_groupe_params
      params.require(:_doujinshis_groupe).permit(:name)
    end
end
