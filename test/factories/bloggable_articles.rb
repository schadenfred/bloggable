FactoryGirl.define do
  factory :article, class: 'Bloggable::Article' do
    title "cool article title"
    text "awesome article text"

    association :bloggable, factory: :org
  end
end
