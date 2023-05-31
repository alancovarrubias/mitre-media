class EntitiesController < ApplicationController
  def create
    @sentence = Sentence.find(params[:sentence_id])
    @entity = @sentence.entities.build(entity_params)
    return unless @entity.save

    redirect_to sentence_path(@sentence), notice: 'Entity created successfully.'
  end

  private

  def entity_params
    params.require(:entity).permit(:text, :entity_type)
  end
end
