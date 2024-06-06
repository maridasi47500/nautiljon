class EvenementsController < ApplicationController
  before_action :set_evenement, only: %i[ show edit update destroy ]

  # GET /evenements or /evenements.json
  def index
    @evenements = Evenement.all
  end

  # GET /evenements/1 or /evenements/1.json
  def show
  end

  # GET /evenements/new
  def new
    @evenement = Evenement.new
  end

  # GET /evenements/1/edit
  def edit
  end

  # POST /evenements or /evenements.json
  def create
    @evenement = Evenement.new(evenement_params)

    respond_to do |format|
      if @evenement.save
        format.html { redirect_to evenement_url(@evenement), notice: "Evenement was successfully created." }
        format.json { render :show, status: :created, location: @evenement }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @evenement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evenements/1 or /evenements/1.json
  def update
    respond_to do |format|
      if @evenement.update(evenement_params)
        format.html { redirect_to evenement_url(@evenement), notice: "Evenement was successfully updated." }
        format.json { render :show, status: :ok, location: @evenement }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @evenement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evenements/1 or /evenements/1.json
  def destroy
    @evenement.destroy!

    respond_to do |format|
      format.html { redirect_to evenements_url, notice: "Evenement was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evenement
      @evenement = Evenement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def evenement_params
      params.require(:evenement).permit(:titre, :description, :date, :date_fin, :heure, :prix, :ville, :lieu, :adresse, :evenements_pays_id, :lien, :site, :evenements_people_id, :acceptregles)
    end
end
