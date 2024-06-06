class LivresDramaPlusController < ApplicationController
  before_action :set__livres_drama_plu, only: %i[ show edit update destroy ]

  # GET /_livres_drama_plus or /_livres_drama_plus.json
  def index
    @_livres_drama_plus = LivresDramaPlu.all
  end

  # GET /_livres_drama_plus/1 or /_livres_drama_plus/1.json
  def show
  end

  # GET /_livres_drama_plus/new
  def new
    @_livres_drama_plu = LivresDramaPlu.new
  end

  # GET /_livres_drama_plus/1/edit
  def edit
  end

  # POST /_livres_drama_plus or /_livres_drama_plus.json
  def create
    @_livres_drama_plu = LivresDramaPlu.new(_livres_drama_plu_params)

    respond_to do |format|
      if @_livres_drama_plu.save
        format.html { redirect_to livres_drama_plu_url(@_livres_drama_plu), notice: "Livres drama plu was successfully created." }
        format.json { render :show, status: :created, location: @_livres_drama_plu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_livres_drama_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_livres_drama_plus/1 or /_livres_drama_plus/1.json
  def update
    respond_to do |format|
      if @_livres_drama_plu.update(_livres_drama_plu_params)
        format.html { redirect_to livres_drama_plu_url(@_livres_drama_plu), notice: "Livres drama plu was successfully updated." }
        format.json { render :show, status: :ok, location: @_livres_drama_plu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_livres_drama_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_livres_drama_plus/1 or /_livres_drama_plus/1.json
  def destroy
    @_livres_drama_plu.destroy!

    respond_to do |format|
      format.html { redirect_to livres_drama_plus_url, notice: "Livres drama plu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__livres_drama_plu
      @_livres_drama_plu = LivresDramaPlu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _livres_drama_plu_params
      params.require(:livres_drama_plu).permit(:name)
    end
end
