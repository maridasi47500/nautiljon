class LightNovelsQuizzsController < ApplicationController
  before_action :set__light_novels_quizz, only: %i[ show edit update destroy ]

  # GET /_light_novels_quizzs or /_light_novels_quizzs.json
  def index
    @_light_novels_quizzs = LightNovelsQuizz.all
  end

  # GET /_light_novels_quizzs/1 or /_light_novels_quizzs/1.json
  def show
  end

  # GET /_light_novels_quizzs/new
  def new
    @_light_novels_quizz = LightNovelsQuizz.new
  end

  # GET /_light_novels_quizzs/1/edit
  def edit
  end

  # POST /_light_novels_quizzs or /_light_novels_quizzs.json
  def create
    @_light_novels_quizz = LightNovelsQuizz.new(_light_novels_quizz_params)

    respond_to do |format|
      if @_light_novels_quizz.save
        format.html { redirect_to _light_novels_quizz_url(@_light_novels_quizz), notice: "Light novels quizz was successfully created." }
        format.json { render :show, status: :created, location: @_light_novels_quizz }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_light_novels_quizz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_light_novels_quizzs/1 or /_light_novels_quizzs/1.json
  def update
    respond_to do |format|
      if @_light_novels_quizz.update(_light_novels_quizz_params)
        format.html { redirect_to _light_novels_quizz_url(@_light_novels_quizz), notice: "Light novels quizz was successfully updated." }
        format.json { render :show, status: :ok, location: @_light_novels_quizz }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_light_novels_quizz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_light_novels_quizzs/1 or /_light_novels_quizzs/1.json
  def destroy
    @_light_novels_quizz.destroy!

    respond_to do |format|
      format.html { redirect_to _light_novels_quizzs_url, notice: "Light novels quizz was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__light_novels_quizz
      @_light_novels_quizz = LightNovelsQuizz.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _light_novels_quizz_params
      params.require(:_light_novels_quizz).permit(:name)
    end
end
