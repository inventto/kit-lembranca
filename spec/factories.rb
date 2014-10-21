FactoryGirl.define do
  factory :coisa do
    nome "Coisa"
    descricao "Falando sobre a Coisa"
    tags "ola coisa"
  end
  factory :coisa_com_erro, class: Coisa do
    nome "Coisa com erro"
    descricao "a" * 260
    tags "bad coisa"
  end
end
