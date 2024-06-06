class FilmsAsiatiquesLnsController < ApplicationController
  before_action :set__films_asiatiques_ln, only: %i[ show edit update destroy ]

  # GET /_films_asiatiques_lns or /_films_asiatiques_lns.json
  def index
    @_films_asiatiques_lns = FilmsAsiatiquesLn.all
  end

  # GET /_films_asiatiques_lns/1 or /_films_asiatiques_lns/1.json
  def show
  end

  # GET /_films_asiatiques_lns/new
  def new
    @_films_asiatiques_ln = FilmsAsiatiquesLn.new
  end

  # GET /_films_asiatiques_lns/1/edit
  def edit
  end

  # POST /_films_asiatiques_lns or /_films_asiatiques_lns.json
  def create
    @_films_asiatiques_ln = FilmsAsiatiquesLn.new(_films_asiatiques_ln_params)

    respond_to do |format|
      if @_films_asiatiques_ln.save
        format.html { redirect_to films_asiatiques_ln_url(@_films_asiatiques_ln), notice: "Films asiatiques ln was successfully created." }
        format.json { render :show, status: :created, location: @_films_asiatiques_ln }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_ln.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_films_asiatiques_lns/1 or /_films_asiatiques_lns/1.json
  def update
    respond_to do |format|
      if @_films_asiatiques_ln.update(_films_asiatiques_ln_params)
        format.html { redirect_to films_asiatiques_ln_url(@_films_asiatiques_ln), notice: "Films asiatiques ln was successfully updated." }
        format.json { render :show, status: :ok, location: @_films_asiatiques_ln }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_ln.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_films_asiatiques_lns/1 or /_films_asiatiques_lns/1.json
  def destroy
    @_films_asiatiques_ln.destroy!

    respond_to do |format|
      format.html { redirect_to films_asiatiques_lns_url, notice: "Films asiatiques ln was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__films_asiatiques_ln
      @_films_asiatiques_ln = FilmsAsiatiquesLn.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _films_asiatiques_ln_params
      params.require(:films_asiatiques_ln).permit(:name)
    end
end
