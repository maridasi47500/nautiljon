class TablaturesController < ApplicationController
  before_action :set__tablature, only: %i[ show edit update destroy ]

  # GET /_tablatures or /_tablatures.json
  def index
    @_tablatures = Tablature.all
  end

  # GET /_tablatures/1 or /_tablatures/1.json
  def show
  end

  # GET /_tablatures/new
  def new
    @_tablature = Tablature.new
  end

  # GET /_tablatures/1/edit
  def edit
  end

  # POST /_tablatures or /_tablatures.json
  def create
    @_tablature = Tablature.new(_tablature_params)

    respond_to do |format|
      if @_tablature.save
        format.html { redirect_to _tablature_url(@_tablature), notice: "Tablature was successfully created." }
        format.json { render :show, status: :created, location: @_tablature }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_tablature.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_tablatures/1 or /_tablatures/1.json
  def update
    respond_to do |format|
      if @_tablature.update(_tablature_params)
        format.html { redirect_to _tablature_url(@_tablature), notice: "Tablature was successfully updated." }
        format.json { render :show, status: :ok, location: @_tablature }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_tablature.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_tablatures/1 or /_tablatures/1.json
  def destroy
    @_tablature.destroy!

    respond_to do |format|
      format.html { redirect_to _tablatures_url, notice: "Tablature was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__tablature
      @_tablature = Tablature.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _tablature_params
      params.require(:_tablature).permit(:titre, :_tablatures_people_id, :_tablatures_people_id, :infos, :comment, :statut_prop, :statut_prop, :acceptregles)
    end
end
