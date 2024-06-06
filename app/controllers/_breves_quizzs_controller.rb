class BrevesQuizzsController < ApplicationController
  before_action :set__breves_quizz, only: %i[ show edit update destroy ]

  # GET /_breves_quizzs or /_breves_quizzs.json
  def index
    @_breves_quizzs = BrevesQuizz.all
  end

  # GET /_breves_quizzs/1 or /_breves_quizzs/1.json
  def show
  end

  # GET /_breves_quizzs/new
  def new
    @_breves_quizz = BrevesQuizz.new
  end

  # GET /_breves_quizzs/1/edit
  def edit
  end

  # POST /_breves_quizzs or /_breves_quizzs.json
  def create
    @_breves_quizz = BrevesQuizz.new(_breves_quizz_params)

    respond_to do |format|
      if @_breves_quizz.save
        format.html { redirect_to _breves_quizz_url(@_breves_quizz), notice: "Breves quizz was successfully created." }
        format.json { render :show, status: :created, location: @_breves_quizz }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_breves_quizz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_breves_quizzs/1 or /_breves_quizzs/1.json
  def update
    respond_to do |format|
      if @_breves_quizz.update(_breves_quizz_params)
        format.html { redirect_to _breves_quizz_url(@_breves_quizz), notice: "Breves quizz was successfully updated." }
        format.json { render :show, status: :ok, location: @_breves_quizz }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_breves_quizz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_breves_quizzs/1 or /_breves_quizzs/1.json
  def destroy
    @_breves_quizz.destroy!

    respond_to do |format|
      format.html { redirect_to _breves_quizzs_url, notice: "Breves quizz was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__breves_quizz
      @_breves_quizz = BrevesQuizz.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _breves_quizz_params
      params.require(:_breves_quizz).permit(:name)
    end
end
