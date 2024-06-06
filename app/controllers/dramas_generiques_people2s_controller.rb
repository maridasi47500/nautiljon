class DramasGeneriquesPeople2sController < ApplicationController
  before_action :set__dramas_generiques_people2, only: %i[ show edit update destroy ]

  # GET /_dramas_generiques_people2s or /_dramas_generiques_people2s.json
  def index
    @_dramas_generiques_people2s = DramasGeneriquesPeople2.all
  end

  # GET /_dramas_generiques_people2s/1 or /_dramas_generiques_people2s/1.json
  def show
  end

  # GET /_dramas_generiques_people2s/new
  def new
    @_dramas_generiques_people2 = DramasGeneriquesPeople2.new
  end

  # GET /_dramas_generiques_people2s/1/edit
  def edit
  end

  # POST /_dramas_generiques_people2s or /_dramas_generiques_people2s.json
  def create
    @_dramas_generiques_people2 = DramasGeneriquesPeople2.new(_dramas_generiques_people2_params)

    respond_to do |format|
      if @_dramas_generiques_people2.save
        format.html { redirect_to dramas_generiques_people2_url(@_dramas_generiques_people2), notice: "Dramas generiques people2 was successfully created." }
        format.json { render :show, status: :created, location: @_dramas_generiques_people2 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dramas_generiques_people2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dramas_generiques_people2s/1 or /_dramas_generiques_people2s/1.json
  def update
    respond_to do |format|
      if @_dramas_generiques_people2.update(_dramas_generiques_people2_params)
        format.html { redirect_to dramas_generiques_people2_url(@_dramas_generiques_people2), notice: "Dramas generiques people2 was successfully updated." }
        format.json { render :show, status: :ok, location: @_dramas_generiques_people2 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dramas_generiques_people2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dramas_generiques_people2s/1 or /_dramas_generiques_people2s/1.json
  def destroy
    @_dramas_generiques_people2.destroy!

    respond_to do |format|
      format.html { redirect_to dramas_generiques_people2s_url, notice: "Dramas generiques people2 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dramas_generiques_people2
      @_dramas_generiques_people2 = DramasGeneriquesPeople2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dramas_generiques_people2_params
      params.require(:dramas_generiques_people2).permit(:name)
    end
end
