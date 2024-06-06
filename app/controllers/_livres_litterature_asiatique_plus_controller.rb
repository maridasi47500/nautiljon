class LivresLitteratureAsiatiquePlusController < ApplicationController
  before_action :set__livres_litterature_asiatique_plu, only: %i[ show edit update destroy ]

  # GET /_livres_litterature_asiatique_plus or /_livres_litterature_asiatique_plus.json
  def index
    @_livres_litterature_asiatique_plus = LivresLitteratureAsiatiquePlu.all
  end

  # GET /_livres_litterature_asiatique_plus/1 or /_livres_litterature_asiatique_plus/1.json
  def show
  end

  # GET /_livres_litterature_asiatique_plus/new
  def new
    @_livres_litterature_asiatique_plu = LivresLitteratureAsiatiquePlu.new
  end

  # GET /_livres_litterature_asiatique_plus/1/edit
  def edit
  end

  # POST /_livres_litterature_asiatique_plus or /_livres_litterature_asiatique_plus.json
  def create
    @_livres_litterature_asiatique_plu = LivresLitteratureAsiatiquePlu.new(_livres_litterature_asiatique_plu_params)

    respond_to do |format|
      if @_livres_litterature_asiatique_plu.save
        format.html { redirect_to _livres_litterature_asiatique_plu_url(@_livres_litterature_asiatique_plu), notice: "Livres litterature asiatique plu was successfully created." }
        format.json { render :show, status: :created, location: @_livres_litterature_asiatique_plu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_livres_litterature_asiatique_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_livres_litterature_asiatique_plus/1 or /_livres_litterature_asiatique_plus/1.json
  def update
    respond_to do |format|
      if @_livres_litterature_asiatique_plu.update(_livres_litterature_asiatique_plu_params)
        format.html { redirect_to _livres_litterature_asiatique_plu_url(@_livres_litterature_asiatique_plu), notice: "Livres litterature asiatique plu was successfully updated." }
        format.json { render :show, status: :ok, location: @_livres_litterature_asiatique_plu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_livres_litterature_asiatique_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_livres_litterature_asiatique_plus/1 or /_livres_litterature_asiatique_plus/1.json
  def destroy
    @_livres_litterature_asiatique_plu.destroy!

    respond_to do |format|
      format.html { redirect_to _livres_litterature_asiatique_plus_url, notice: "Livres litterature asiatique plu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__livres_litterature_asiatique_plu
      @_livres_litterature_asiatique_plu = LivresLitteratureAsiatiquePlu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _livres_litterature_asiatique_plu_params
      params.require(:_livres_litterature_asiatique_plu).permit(:name)
    end
end
