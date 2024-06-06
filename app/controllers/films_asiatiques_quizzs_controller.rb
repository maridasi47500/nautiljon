class FilmsAsiatiquesQuizzsController < ApplicationController
  before_action :set__films_asiatiques_quizz, only: %i[ show edit update destroy ]

  # GET /_films_asiatiques_quizzs or /_films_asiatiques_quizzs.json
  def index
    @_films_asiatiques_quizzs = FilmsAsiatiquesQuizz.all
  end

  # GET /_films_asiatiques_quizzs/1 or /_films_asiatiques_quizzs/1.json
  def show
  end

  # GET /_films_asiatiques_quizzs/new
  def new
    @_films_asiatiques_quizz = FilmsAsiatiquesQuizz.new
  end

  # GET /_films_asiatiques_quizzs/1/edit
  def edit
  end

  # POST /_films_asiatiques_quizzs or /_films_asiatiques_quizzs.json
  def create
    @_films_asiatiques_quizz = FilmsAsiatiquesQuizz.new(_films_asiatiques_quizz_params)

    respond_to do |format|
      if @_films_asiatiques_quizz.save
        format.html { redirect_to _films_asiatiques_quizz_url(@_films_asiatiques_quizz), notice: "Films asiatiques quizz was successfully created." }
        format.json { render :show, status: :created, location: @_films_asiatiques_quizz }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_quizz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_films_asiatiques_quizzs/1 or /_films_asiatiques_quizzs/1.json
  def update
    respond_to do |format|
      if @_films_asiatiques_quizz.update(_films_asiatiques_quizz_params)
        format.html { redirect_to _films_asiatiques_quizz_url(@_films_asiatiques_quizz), notice: "Films asiatiques quizz was successfully updated." }
        format.json { render :show, status: :ok, location: @_films_asiatiques_quizz }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_quizz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_films_asiatiques_quizzs/1 or /_films_asiatiques_quizzs/1.json
  def destroy
    @_films_asiatiques_quizz.destroy!

    respond_to do |format|
      format.html { redirect_to _films_asiatiques_quizzs_url, notice: "Films asiatiques quizz was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__films_asiatiques_quizz
      @_films_asiatiques_quizz = FilmsAsiatiquesQuizz.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _films_asiatiques_quizz_params
      params.require(:_films_asiatiques_quizz).permit(:name)
    end
end
