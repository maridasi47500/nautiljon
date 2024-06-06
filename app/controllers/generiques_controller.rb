class GeneriquesController < ApplicationController
  before_action :set__generique, only: %i[ show edit update destroy ]

  # GET /_generiques or /_generiques.json
  def index
    @_generiques = Generique.all
  end

  # GET /_generiques/1 or /_generiques/1.json
  def show
  end

  # GET /_generiques/new
  def new
    @_generique = Generique.new
  end

  # GET /_generiques/1/edit
  def edit
  end

  # POST /_generiques or /_generiques.json
  def create
    @_generique = Generique.new(_generique_params)

    respond_to do |format|
      if @_generique.save
        format.html { redirect_to generique_url(@_generique), notice: "Generique was successfully created." }
        format.json { render :show, status: :created, location: @_generique }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_generique.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_generiques/1 or /_generiques/1.json
  def update
    respond_to do |format|
      if @_generique.update(_generique_params)
        format.html { redirect_to generique_url(@_generique), notice: "Generique was successfully updated." }
        format.json { render :show, status: :ok, location: @_generique }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_generique.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_generiques/1 or /_generiques/1.json
  def destroy
    @_generique.destroy!

    respond_to do |format|
      format.html { redirect_to generiques_url, notice: "Generique was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__generique
      @_generique = Generique.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _generique_params
      params.require(:generique).permit(:titre, :titre_original, :_generiques_id_anime_id, :_generiques_type_id, :number, :_generiques_staff_role_id, :_generiques_staff_people_id, :_generiques_staff_role_id, :_generiques_staff_people_id, :description, :instrumental, :instrumental, :date_jj, :date_mm, :date_aaaa, :youtube, :paroles, :paroles_trad, :membre_show, :membre_show, :episodes, :_generiques_generic_id, :comment, :statut_prop, :statut_prop, :acceptregles)
    end
end
