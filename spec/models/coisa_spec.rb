require 'rails_helper'

RSpec.describe Coisa, type: :model do
  it {should validate_presence_of(:nome)}
  it {should validate_presence_of(:descricao)}
  it {should validate_presence_of(:tags)}
  it {should validate_uniqueness_of(:nome)}
end
