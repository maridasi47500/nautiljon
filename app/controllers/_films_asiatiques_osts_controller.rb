class FilmsAsiatiquesOstsController < ApplicationController
  before_action :set__films_asiatiques_ost, only: %i[ show edit update destroy ]

  # GET /_films_asiatiques_osts or /_films_asiatiques_osts.json
  def index
    @_films_asiatiques_osts = FilmsAsiatiquesOst.all
  end

  # GET /_films_asiatiques_osts/1 or /_films_asiatiques_osts/1.json
  def show
  end

  # GET /_films_asiatiques_osts/new
  def new
    @_films_asiatiques_ost = FilmsAsiatiquesOst.new
  end

  # GET /_films_asiatiques_osts/1/edit
  def edit
  end

  # POST /_films_asiatiques_osts or /_films_asiatiques_osts.json
  def create
    @_films_asiatiques_ost = FilmsAsiatiquesOst.new(_films_asiatiques_ost_params)

    respond_to do |format|
      if @_films_asiatiques_ost.save
        format.html { redirect_to _films_asiatiques_ost_url(@_films_asiatiques_ost), notice: "Films asiatiques ost was successfully created." }
        format.json { render :show, status: :created, location: @_films_asiatiques_ost }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_ost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_films_asiatiques_osts/1 or /_films_asiatiques_osts/1.json
  def update
    respond_to do |format|
      if @_films_asiatiques_ost.update(_films_asiatiques_ost_params)
        format.html { redirect_to _films_asiatiques_ost_url(@_films_asiatiques_ost), notice: "Films asiatiques ost was successfully updated." }
        format.json { render :show, status: :ok, location: @_films_asiatiques_ost }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_ost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_films_asiatiques_osts/1 or /_films_asiatiques_osts/1.json
  def destroy
    @_films_asiatiques_ost.destroy!

    respond_to do |format|
      format.html { redirect_to _films_asiatiques_osts_url, notice: "Films asiatiques ost was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__films_asiatiques_ost
      @_films_asiatiques_ost = FilmsAsiatiquesOst.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _films_asiatiques_ost_params
      params.require(:_films_asiatiques_ost).permit(:name)
    end
end
