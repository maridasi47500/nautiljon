class AnimesQuizzsController < ApplicationController
  before_action :set_animes_quizz, only: %i[ show edit update destroy ]

  # GET /animes_quizzs or /animes_quizzs.json
  def index
    @animes_quizzs = AnimesQuizz.all
  end

  # GET /animes_quizzs/1 or /animes_quizzs/1.json
  def show
  end

  # GET /animes_quizzs/new
  def new
    @animes_quizz = AnimesQuizz.new
  end

  # GET /animes_quizzs/1/edit
  def edit
  end

  # POST /animes_quizzs or /animes_quizzs.json
  def create
    @animes_quizz = AnimesQuizz.new(animes_quizz_params)

    respond_to do |format|
      if @animes_quizz.save
        format.html { redirect_to animes_quizz_url(@animes_quizz), notice: "Animes quizz was successfully created." }
        format.json { render :show, status: :created, location: @animes_quizz }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animes_quizz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animes_quizzs/1 or /animes_quizzs/1.json
  def update
    respond_to do |format|
      if @animes_quizz.update(animes_quizz_params)
        format.html { redirect_to animes_quizz_url(@animes_quizz), notice: "Animes quizz was successfully updated." }
        format.json { render :show, status: :ok, location: @animes_quizz }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animes_quizz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animes_quizzs/1 or /animes_quizzs/1.json
  def destroy
    @animes_quizz.destroy!

    respond_to do |format|
      format.html { redirect_to animes_quizzs_url, notice: "Animes quizz was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animes_quizz
      @animes_quizz = AnimesQuizz.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animes_quizz_params
      params.require(:animes_quizz).permit(:name)
    end
end
