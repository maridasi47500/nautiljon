class LivresAnimePlusController < ApplicationController
  before_action :set__livres_anime_plu, only: %i[ show edit update destroy ]

  # GET /_livres_anime_plus or /_livres_anime_plus.json
  def index
    @_livres_anime_plus = LivresAnimePlu.all
  end

  # GET /_livres_anime_plus/1 or /_livres_anime_plus/1.json
  def show
  end

  # GET /_livres_anime_plus/new
  def new
    @_livres_anime_plu = LivresAnimePlu.new
  end

  # GET /_livres_anime_plus/1/edit
  def edit
  end

  # POST /_livres_anime_plus or /_livres_anime_plus.json
  def create
    @_livres_anime_plu = LivresAnimePlu.new(_livres_anime_plu_params)

    respond_to do |format|
      if @_livres_anime_plu.save
        format.html { redirect_to livres_anime_plu_url(@_livres_anime_plu), notice: "Livres anime plu was successfully created." }
        format.json { render :show, status: :created, location: @_livres_anime_plu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_livres_anime_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_livres_anime_plus/1 or /_livres_anime_plus/1.json
  def update
    respond_to do |format|
      if @_livres_anime_plu.update(_livres_anime_plu_params)
        format.html { redirect_to livres_anime_plu_url(@_livres_anime_plu), notice: "Livres anime plu was successfully updated." }
        format.json { render :show, status: :ok, location: @_livres_anime_plu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_livres_anime_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_livres_anime_plus/1 or /_livres_anime_plus/1.json
  def destroy
    @_livres_anime_plu.destroy!

    respond_to do |format|
      format.html { redirect_to livres_anime_plus_url, notice: "Livres anime plu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__livres_anime_plu
      @_livres_anime_plu = LivresAnimePlu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _livres_anime_plu_params
      params.require(:livres_anime_plu).permit(:name)
    end
end
