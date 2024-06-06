class AnimesLitteratureAsiatiquesController < ApplicationController
  before_action :set_animes_litterature_asiatique, only: %i[ show edit update destroy ]

  # GET /animes_litterature_asiatiques or /animes_litterature_asiatiques.json
  def index
    @animes_litterature_asiatiques = AnimesLitteratureAsiatique.all
  end

  # GET /animes_litterature_asiatiques/1 or /animes_litterature_asiatiques/1.json
  def show
  end

  # GET /animes_litterature_asiatiques/new
  def new
    @animes_litterature_asiatique = AnimesLitteratureAsiatique.new
  end

  # GET /animes_litterature_asiatiques/1/edit
  def edit
  end

  # POST /animes_litterature_asiatiques or /animes_litterature_asiatiques.json
  def create
    @animes_litterature_asiatique = AnimesLitteratureAsiatique.new(animes_litterature_asiatique_params)

    respond_to do |format|
      if @animes_litterature_asiatique.save
        format.html { redirect_to animes_litterature_asiatique_url(@animes_litterature_asiatique), notice: "Animes litterature asiatique was successfully created." }
        format.json { render :show, status: :created, location: @animes_litterature_asiatique }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animes_litterature_asiatique.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animes_litterature_asiatiques/1 or /animes_litterature_asiatiques/1.json
  def update
    respond_to do |format|
      if @animes_litterature_asiatique.update(animes_litterature_asiatique_params)
        format.html { redirect_to animes_litterature_asiatique_url(@animes_litterature_asiatique), notice: "Animes litterature asiatique was successfully updated." }
        format.json { render :show, status: :ok, location: @animes_litterature_asiatique }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animes_litterature_asiatique.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animes_litterature_asiatiques/1 or /animes_litterature_asiatiques/1.json
  def destroy
    @animes_litterature_asiatique.destroy!

    respond_to do |format|
      format.html { redirect_to animes_litterature_asiatiques_url, notice: "Animes litterature asiatique was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animes_litterature_asiatique
      @animes_litterature_asiatique = AnimesLitteratureAsiatique.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animes_litterature_asiatique_params
      params.require(:animes_litterature_asiatique).permit(:name)
    end
end
