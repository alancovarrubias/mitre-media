class SentencesController < ApplicationController
  include SentencesHelper
  def index
    @sentences = Sentence.all
  end

  def show
    @sentence = Sentence.find(params[:id])
  end
end
