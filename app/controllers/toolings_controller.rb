class ToolingsController < ApplicationController
  before_action :set_tooling, only: [:show, :edit, :update, :destroy]

  # GET /toolings
  # GET /toolings.json
  def index
    @toolings = Tooling.all
  end

  # GET /toolings/1
  # GET /toolings/1.json
  def show
  end

  # GET /toolings/new
  def new
    @tooling = Tooling.new
  end

  # GET /toolings/1/edit
  def edit
  end

  # POST /toolings
  # POST /toolings.json
  def create
    @tooling = Tooling.new(tooling_params)

    respond_to do |format|
      if @tooling.save
        format.html { redirect_to @tooling, notice: 'Tooling was successfully created.' }
        format.json { render :show, status: :created, location: @tooling }
      else
        format.html { render :new }
        format.json { render json: @tooling.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /toolings/1
  # PATCH/PUT /toolings/1.json
  def update
    respond_to do |format|
      if @tooling.update(tooling_params)
        format.html { redirect_to @tooling, notice: 'Tooling was successfully updated.' }
        format.json { render :show, status: :ok, location: @tooling }
      else
        format.html { render :edit }
        format.json { render json: @tooling.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /toolings/1
  # DELETE /toolings/1.json
  def destroy
    @tooling.destroy
    respond_to do |format|
      format.html { redirect_to toolings_url, notice: 'Tooling was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tooling
      @tooling = Tooling.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tooling_params
      params.require(:tooling).permit(:deliver_to, :part_type, :part_level, :commodity, :tool_source, :go1_go2_lt, :go2_t1_lt, :t1_t2_lt, :t2_t3_lt, :t3_t4_lt, :t4_linetry_lt, :raw_material_lt, :go1_1_target, :go1_1_actual, :go1_1_design_target, :go1_1_correlated, :go1_2_target, :go1_2_actual, :go2_1_actual, :go2_2_target, :go2_2_actual, :go2_2_design_target, :go2_2_correlated, :go2_3_actual, :go1_1_design_number, :go1_2_design_number, :go2_1_design_number, :go2_2_design_number, :go2_3_design_change)
    end
end
