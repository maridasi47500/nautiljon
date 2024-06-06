class AnimesLitteratureAsiatiquePlusController < ApplicationController
  before_action :set_animes_litterature_asiatique_plu, only: %i[ show edit update destroy ]

  # GET /animes_litterature_asiatique_plus or /animes_litterature_asiatique_plus.json
  def index
    @animes_litterature_asiatique_plus = AnimesLitteratureAsiatiquePlu.all
  end

  # GET /animes_litterature_asiatique_plus/1 or /animes_litterature_asiatique_plus/1.json
  def show
  end

  # GET /animes_litterature_asiatique_plus/new
  def new
    @animes_litterature_asiatique_plu = AnimesLitteratureAsiatiquePlu.new
  end

  # GET /animes_litterature_asiatique_plus/1/edit
  def edit
  end

  # POST /animes_litterature_asiatique_plus or /animes_litterature_asiatique_plus.json
  def create
    @animes_litterature_asiatique_plu = AnimesLitteratureAsiatiquePlu.new(animes_litterature_asiatique_plu_params)

    respond_to do |format|
      if @animes_litterature_asiatique_plu.save
        format.html { redirect_to animes_litterature_asiatique_plu_url(@animes_litterature_asiatique_plu), notice: "Animes litterature asiatique plu was successfully created." }
        format.json { render :show, status: :created, location: @animes_litterature_asiatique_plu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animes_litterature_asiatique_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animes_litterature_asiatique_plus/1 or /animes_litterature_asiatique_plus/1.json
  def update
    respond_to do |format|
      if @animes_litterature_asiatique_plu.update(animes_litterature_asiatique_plu_params)
        format.html { redirect_to animes_litterature_asiatique_plu_url(@animes_litterature_asiatique_plu), notice: "Animes litterature asiatique plu was successfully updated." }
        format.json { render :show, status: :ok, location: @animes_litterature_asiatique_plu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animes_litterature_asiatique_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animes_litterature_asiatique_plus/1 or /animes_litterature_asiatique_plus/1.json
  def destroy
    @animes_litterature_asiatique_plu.destroy!

    respond_to do |format|
      format.html { redirect_to animes_litterature_asiatique_plus_url, notice: "Animes litterature asiatique plu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animes_litterature_asiatique_plu
      @animes_litterature_asiatique_plu = AnimesLitteratureAsiatiquePlu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animes_litterature_asiatique_plu_params
      params.require(:animes_litterature_asiatique_plu).permit(:name)
    end
end
