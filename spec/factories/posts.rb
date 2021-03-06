include ActionDispatch::TestProcess

FactoryGirl.define do

  factory :post do
    image { fixture_file_upload './spec/images/bbc-g.jpg', 'image/jpg' }
    description { Faker::Hipster.sentence }
    association :user, :factory => :user
  end

  factory :post_params, class: Post do
    image { fixture_file_upload './spec/images/bbc-g.jpg', 'image/jpg' }
    description { Faker::Hipster.sentence }
    association :user, :factory => :user
  end

end
