require 'rails_helper'

RSpec.describe Category, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  # ensure category model has a 1-m relationship with book
  it { should have_many(:books).dependent(:destroy) }
  # ensure columns category_name are present before saving
  it { should validate_presence_of(:category_name) }
end
