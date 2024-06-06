class AnimesActualiteMinisController < ApplicationController
  before_action :set_animes_actualite_mini, only: %i[ show edit update destroy ]

  # GET /animes_actualite_minis or /animes_actualite_minis.json
  def index
    @animes_actualite_minis = AnimesActualiteMini.all
  end

  # GET /animes_actualite_minis/1 or /animes_actualite_minis/1.json
  def show
  end

  # GET /animes_actualite_minis/new
  def new
    @animes_actualite_mini = AnimesActualiteMini.new
  end

  # GET /animes_actualite_minis/1/edit
  def edit
  end

  # POST /animes_actualite_minis or /animes_actualite_minis.json
  def create
    @animes_actualite_mini = AnimesActualiteMini.new(animes_actualite_mini_params)

    respond_to do |format|
      if @animes_actualite_mini.save
        format.html { redirect_to animes_actualite_mini_url(@animes_actualite_mini), notice: "Animes actualite mini was successfully created." }
        format.json { render :show, status: :created, location: @animes_actualite_mini }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animes_actualite_mini.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animes_actualite_minis/1 or /animes_actualite_minis/1.json
  def update
    respond_to do |format|
      if @animes_actualite_mini.update(animes_actualite_mini_params)
        format.html { redirect_to animes_actualite_mini_url(@animes_actualite_mini), notice: "Animes actualite mini was successfully updated." }
        format.json { render :show, status: :ok, location: @animes_actualite_mini }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animes_actualite_mini.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animes_actualite_minis/1 or /animes_actualite_minis/1.json
  def destroy
    @animes_actualite_mini.destroy!

    respond_to do |format|
      format.html { redirect_to animes_actualite_minis_url, notice: "Animes actualite mini was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animes_actualite_mini
      @animes_actualite_mini = AnimesActualiteMini.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animes_actualite_mini_params
      params.require(:animes_actualite_mini).permit(:name)
    end
end
