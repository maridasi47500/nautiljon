class DoujinshisQuizzsController < ApplicationController
  before_action :set__doujinshis_quizz, only: %i[ show edit update destroy ]

  # GET /_doujinshis_quizzs or /_doujinshis_quizzs.json
  def index
    @_doujinshis_quizzs = DoujinshisQuizz.all
  end

  # GET /_doujinshis_quizzs/1 or /_doujinshis_quizzs/1.json
  def show
  end

  # GET /_doujinshis_quizzs/new
  def new
    @_doujinshis_quizz = DoujinshisQuizz.new
  end

  # GET /_doujinshis_quizzs/1/edit
  def edit
  end

  # POST /_doujinshis_quizzs or /_doujinshis_quizzs.json
  def create
    @_doujinshis_quizz = DoujinshisQuizz.new(_doujinshis_quizz_params)

    respond_to do |format|
      if @_doujinshis_quizz.save
        format.html { redirect_to _doujinshis_quizz_url(@_doujinshis_quizz), notice: "Doujinshis quizz was successfully created." }
        format.json { render :show, status: :created, location: @_doujinshis_quizz }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_quizz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujinshis_quizzs/1 or /_doujinshis_quizzs/1.json
  def update
    respond_to do |format|
      if @_doujinshis_quizz.update(_doujinshis_quizz_params)
        format.html { redirect_to _doujinshis_quizz_url(@_doujinshis_quizz), notice: "Doujinshis quizz was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujinshis_quizz }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_quizz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujinshis_quizzs/1 or /_doujinshis_quizzs/1.json
  def destroy
    @_doujinshis_quizz.destroy!

    respond_to do |format|
      format.html { redirect_to _doujinshis_quizzs_url, notice: "Doujinshis quizz was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujinshis_quizz
      @_doujinshis_quizz = DoujinshisQuizz.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujinshis_quizz_params
      params.require(:_doujinshis_quizz).permit(:name)
    end
end
