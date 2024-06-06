class BrevesMangaEditeursController < ApplicationController
  before_action :set__breves_manga_editeur, only: %i[ show edit update destroy ]

  # GET /_breves_manga_editeurs or /_breves_manga_editeurs.json
  def index
    @_breves_manga_editeurs = BrevesMangaEditeur.all
  end

  # GET /_breves_manga_editeurs/1 or /_breves_manga_editeurs/1.json
  def show
  end

  # GET /_breves_manga_editeurs/new
  def new
    @_breves_manga_editeur = BrevesMangaEditeur.new
  end

  # GET /_breves_manga_editeurs/1/edit
  def edit
  end

  # POST /_breves_manga_editeurs or /_breves_manga_editeurs.json
  def create
    @_breves_manga_editeur = BrevesMangaEditeur.new(_breves_manga_editeur_params)

    respond_to do |format|
      if @_breves_manga_editeur.save
        format.html { redirect_to _breves_manga_editeur_url(@_breves_manga_editeur), notice: "Breves manga editeur was successfully created." }
        format.json { render :show, status: :created, location: @_breves_manga_editeur }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_breves_manga_editeur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_breves_manga_editeurs/1 or /_breves_manga_editeurs/1.json
  def update
    respond_to do |format|
      if @_breves_manga_editeur.update(_breves_manga_editeur_params)
        format.html { redirect_to _breves_manga_editeur_url(@_breves_manga_editeur), notice: "Breves manga editeur was successfully updated." }
        format.json { render :show, status: :ok, location: @_breves_manga_editeur }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_breves_manga_editeur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_breves_manga_editeurs/1 or /_breves_manga_editeurs/1.json
  def destroy
    @_breves_manga_editeur.destroy!

    respond_to do |format|
      format.html { redirect_to _breves_manga_editeurs_url, notice: "Breves manga editeur was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__breves_manga_editeur
      @_breves_manga_editeur = BrevesMangaEditeur.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _breves_manga_editeur_params
      params.require(:_breves_manga_editeur).permit(:name)
    end
end
