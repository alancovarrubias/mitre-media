module SentencesHelper
  include ActionView::Helpers::TagHelper
  def add_span_to_words(sentence)
    sentence.text.split(' ').map do |word|
      if (entity = sentence.entities.find_by(text: word))
        content_tag(:span, "#{word} #{entity.entity_type}", class: 'highlight')
      else
        word
      end
    end.join(' ').html_safe
  end
end
