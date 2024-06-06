class PersonnagesDeJeuxVideosDoubleurPaysController < ApplicationController
  before_action :set__personnages_de_jeux_videos_doubleur_pay, only: %i[ show edit update destroy ]

  # GET /_personnages_de_jeux_videos_doubleur_pays or /_personnages_de_jeux_videos_doubleur_pays.json
  def index
    @_personnages_de_jeux_videos_doubleur_pays = PersonnagesDeJeuxVideosDoubleurPay.all
  end

  # GET /_personnages_de_jeux_videos_doubleur_pays/1 or /_personnages_de_jeux_videos_doubleur_pays/1.json
  def show
  end

  # GET /_personnages_de_jeux_videos_doubleur_pays/new
  def new
    @_personnages_de_jeux_videos_doubleur_pay = PersonnagesDeJeuxVideosDoubleurPay.new
  end

  # GET /_personnages_de_jeux_videos_doubleur_pays/1/edit
  def edit
  end

  # POST /_personnages_de_jeux_videos_doubleur_pays or /_personnages_de_jeux_videos_doubleur_pays.json
  def create
    @_personnages_de_jeux_videos_doubleur_pay = PersonnagesDeJeuxVideosDoubleurPay.new(_personnages_de_jeux_videos_doubleur_pay_params)

    respond_to do |format|
      if @_personnages_de_jeux_videos_doubleur_pay.save
        format.html { redirect_to personnages_de_jeux_videos_doubleur_pay_url(@_personnages_de_jeux_videos_doubleur_pay), notice: "Personnages de jeux videos doubleur pay was successfully created." }
        format.json { render :show, status: :created, location: @_personnages_de_jeux_videos_doubleur_pay }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnages_de_jeux_videos_doubleur_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnages_de_jeux_videos_doubleur_pays/1 or /_personnages_de_jeux_videos_doubleur_pays/1.json
  def update
    respond_to do |format|
      if @_personnages_de_jeux_videos_doubleur_pay.update(_personnages_de_jeux_videos_doubleur_pay_params)
        format.html { redirect_to personnages_de_jeux_videos_doubleur_pay_url(@_personnages_de_jeux_videos_doubleur_pay), notice: "Personnages de jeux videos doubleur pay was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnages_de_jeux_videos_doubleur_pay }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnages_de_jeux_videos_doubleur_pay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnages_de_jeux_videos_doubleur_pays/1 or /_personnages_de_jeux_videos_doubleur_pays/1.json
  def destroy
    @_personnages_de_jeux_videos_doubleur_pay.destroy!

    respond_to do |format|
      format.html { redirect_to personnages_de_jeux_videos_doubleur_pays_url, notice: "Personnages de jeux videos doubleur pay was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnages_de_jeux_videos_doubleur_pay
      @_personnages_de_jeux_videos_doubleur_pay = PersonnagesDeJeuxVideosDoubleurPay.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnages_de_jeux_videos_doubleur_pay_params
      params.require(:personnages_de_jeux_videos_doubleur_pay).permit(:name)
    end
end
