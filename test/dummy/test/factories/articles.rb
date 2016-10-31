FactoryGirl.define do

  factory :article do #, class: "bloggable::Article" do

    text "blah de dah text"
    title "blah title"
    org
  end
end
