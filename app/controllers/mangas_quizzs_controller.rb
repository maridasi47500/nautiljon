class MangasQuizzsController < ApplicationController
  before_action :set__mangas_quizz, only: %i[ show edit update destroy ]

  # GET /_mangas_quizzs or /_mangas_quizzs.json
  def index
    @_mangas_quizzs = MangasQuizz.all
  end

  # GET /_mangas_quizzs/1 or /_mangas_quizzs/1.json
  def show
  end

  # GET /_mangas_quizzs/new
  def new
    @_mangas_quizz = MangasQuizz.new
  end

  # GET /_mangas_quizzs/1/edit
  def edit
  end

  # POST /_mangas_quizzs or /_mangas_quizzs.json
  def create
    @_mangas_quizz = MangasQuizz.new(_mangas_quizz_params)

    respond_to do |format|
      if @_mangas_quizz.save
        format.html { redirect_to mangas_quizz_url(@_mangas_quizz), notice: "Mangas quizz was successfully created." }
        format.json { render :show, status: :created, location: @_mangas_quizz }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_mangas_quizz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_mangas_quizzs/1 or /_mangas_quizzs/1.json
  def update
    respond_to do |format|
      if @_mangas_quizz.update(_mangas_quizz_params)
        format.html { redirect_to mangas_quizz_url(@_mangas_quizz), notice: "Mangas quizz was successfully updated." }
        format.json { render :show, status: :ok, location: @_mangas_quizz }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_mangas_quizz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_mangas_quizzs/1 or /_mangas_quizzs/1.json
  def destroy
    @_mangas_quizz.destroy!

    respond_to do |format|
      format.html { redirect_to mangas_quizzs_url, notice: "Mangas quizz was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__mangas_quizz
      @_mangas_quizz = MangasQuizz.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _mangas_quizz_params
      params.require(:mangas_quizz).permit(:name)
    end
end
