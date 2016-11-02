FactoryGirl.define do
  factory :comment, class: 'Bloggable::Comment' do

    commenter
    article

  end
end
