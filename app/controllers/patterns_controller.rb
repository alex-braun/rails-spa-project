class PatternsController < OpenReadController
  before_action :set_pattern, only: [:show, :update, :destroy]

  # GET /patterns
  # GET /patterns.json
  def index
    # @patterns = current_user.patterns
    @patterns = User.find(params[:user_id]).patterns

    render json: @patterns
  end

  # GET /patterns/1
  # GET /patterns/1.json
  def show
    render json: @pattern
    # Pattern.find(params[:id])
  end

  # POST /patterns
  # POST /patterns.json
  def create
    @pattern = current_user.patterns.build(pattern_params)

    if @pattern.save
      render json: @pattern, status: :created, location: @pattern
    else
      render json: @pattern.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /patterns/1
  # PATCH/PUT /patterns/1.json
  def update
    @pattern = Pattern.find(params[:id])

    if @pattern.update(pattern_params)
      head :no_content
    else
      render json: @pattern.errors, status: :unprocessable_entity
    end
  end

  # DELETE /patterns/1
  # DELETE /patterns/1.json
  def destroy
    @pattern.destroy

    head :no_content
  end

  private

    def set_pattern
      # @pattern = Pattern.find(params[:id])
      @pattern = current_user.patterns.find(params[:id])
    end

    def pattern_params
      params.require(:pattern).permit(:name)
    end
end
