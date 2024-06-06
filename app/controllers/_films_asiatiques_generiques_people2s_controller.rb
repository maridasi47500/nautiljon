class FilmsAsiatiquesGeneriquesPeople2sController < ApplicationController
  before_action :set__films_asiatiques_generiques_people2, only: %i[ show edit update destroy ]

  # GET /_films_asiatiques_generiques_people2s or /_films_asiatiques_generiques_people2s.json
  def index
    @_films_asiatiques_generiques_people2s = FilmsAsiatiquesGeneriquesPeople2.all
  end

  # GET /_films_asiatiques_generiques_people2s/1 or /_films_asiatiques_generiques_people2s/1.json
  def show
  end

  # GET /_films_asiatiques_generiques_people2s/new
  def new
    @_films_asiatiques_generiques_people2 = FilmsAsiatiquesGeneriquesPeople2.new
  end

  # GET /_films_asiatiques_generiques_people2s/1/edit
  def edit
  end

  # POST /_films_asiatiques_generiques_people2s or /_films_asiatiques_generiques_people2s.json
  def create
    @_films_asiatiques_generiques_people2 = FilmsAsiatiquesGeneriquesPeople2.new(_films_asiatiques_generiques_people2_params)

    respond_to do |format|
      if @_films_asiatiques_generiques_people2.save
        format.html { redirect_to _films_asiatiques_generiques_people2_url(@_films_asiatiques_generiques_people2), notice: "Films asiatiques generiques people2 was successfully created." }
        format.json { render :show, status: :created, location: @_films_asiatiques_generiques_people2 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_generiques_people2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_films_asiatiques_generiques_people2s/1 or /_films_asiatiques_generiques_people2s/1.json
  def update
    respond_to do |format|
      if @_films_asiatiques_generiques_people2.update(_films_asiatiques_generiques_people2_params)
        format.html { redirect_to _films_asiatiques_generiques_people2_url(@_films_asiatiques_generiques_people2), notice: "Films asiatiques generiques people2 was successfully updated." }
        format.json { render :show, status: :ok, location: @_films_asiatiques_generiques_people2 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_generiques_people2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_films_asiatiques_generiques_people2s/1 or /_films_asiatiques_generiques_people2s/1.json
  def destroy
    @_films_asiatiques_generiques_people2.destroy!

    respond_to do |format|
      format.html { redirect_to _films_asiatiques_generiques_people2s_url, notice: "Films asiatiques generiques people2 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__films_asiatiques_generiques_people2
      @_films_asiatiques_generiques_people2 = FilmsAsiatiquesGeneriquesPeople2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _films_asiatiques_generiques_people2_params
      params.require(:_films_asiatiques_generiques_people2).permit(:name)
    end
end
