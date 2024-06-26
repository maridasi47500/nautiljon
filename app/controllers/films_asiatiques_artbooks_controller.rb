class FilmsAsiatiquesArtbooksController < ApplicationController
  before_action :set__films_asiatiques_artbook, only: %i[ show edit update destroy ]

  # GET /_films_asiatiques_artbooks or /_films_asiatiques_artbooks.json
  def index
    @_films_asiatiques_artbooks = FilmsAsiatiquesArtbook.all
  end

  # GET /_films_asiatiques_artbooks/1 or /_films_asiatiques_artbooks/1.json
  def show
  end

  # GET /_films_asiatiques_artbooks/new
  def new
    @_films_asiatiques_artbook = FilmsAsiatiquesArtbook.new
  end

  # GET /_films_asiatiques_artbooks/1/edit
  def edit
  end

  # POST /_films_asiatiques_artbooks or /_films_asiatiques_artbooks.json
  def create
    @_films_asiatiques_artbook = FilmsAsiatiquesArtbook.new(_films_asiatiques_artbook_params)

    respond_to do |format|
      if @_films_asiatiques_artbook.save
        format.html { redirect_to films_asiatiques_artbook_url(@_films_asiatiques_artbook), notice: "Films asiatiques artbook was successfully created." }
        format.json { render :show, status: :created, location: @_films_asiatiques_artbook }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_artbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_films_asiatiques_artbooks/1 or /_films_asiatiques_artbooks/1.json
  def update
    respond_to do |format|
      if @_films_asiatiques_artbook.update(_films_asiatiques_artbook_params)
        format.html { redirect_to films_asiatiques_artbook_url(@_films_asiatiques_artbook), notice: "Films asiatiques artbook was successfully updated." }
        format.json { render :show, status: :ok, location: @_films_asiatiques_artbook }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_artbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_films_asiatiques_artbooks/1 or /_films_asiatiques_artbooks/1.json
  def destroy
    @_films_asiatiques_artbook.destroy!

    respond_to do |format|
      format.html { redirect_to films_asiatiques_artbooks_url, notice: "Films asiatiques artbook was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__films_asiatiques_artbook
      @_films_asiatiques_artbook = FilmsAsiatiquesArtbook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _films_asiatiques_artbook_params
      params.require(:films_asiatiques_artbook).permit(:name)
    end
end
