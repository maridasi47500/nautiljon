class DoujinsGroupesController < ApplicationController
  before_action :set__doujins_groupe, only: %i[ show edit update destroy ]

  # GET /_doujins_groupes or /_doujins_groupes.json
  def index
    @_doujins_groupes = DoujinsGroupe.all
  end

  # GET /_doujins_groupes/1 or /_doujins_groupes/1.json
  def show
  end

  # GET /_doujins_groupes/new
  def new
    @_doujins_groupe = DoujinsGroupe.new
  end

  # GET /_doujins_groupes/1/edit
  def edit
  end

  # POST /_doujins_groupes or /_doujins_groupes.json
  def create
    @_doujins_groupe = DoujinsGroupe.new(_doujins_groupe_params)

    respond_to do |format|
      if @_doujins_groupe.save
        format.html { redirect_to doujins_groupe_url(@_doujins_groupe), notice: "Doujins groupe was successfully created." }
        format.json { render :show, status: :created, location: @_doujins_groupe }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujins_groupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujins_groupes/1 or /_doujins_groupes/1.json
  def update
    respond_to do |format|
      if @_doujins_groupe.update(_doujins_groupe_params)
        format.html { redirect_to doujins_groupe_url(@_doujins_groupe), notice: "Doujins groupe was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujins_groupe }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujins_groupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujins_groupes/1 or /_doujins_groupes/1.json
  def destroy
    @_doujins_groupe.destroy!

    respond_to do |format|
      format.html { redirect_to doujins_groupes_url, notice: "Doujins groupe was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujins_groupe
      @_doujins_groupe = DoujinsGroupe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujins_groupe_params
      params.require(:doujins_groupe).permit(:name)
    end
end
