require 'rspec'
require './greetings.rb'

RSpec.describe "Greetings" do
  it '#greeting' do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('Ivan', 'Ivanov', '16')

    expect(greeting).to eq("Привет, Ivan Ivanov. Тебе меньше 18 лет, но начать учиться программировать никогда не рано")
  end
  it '#greeting' do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('Kate', 'Tarasenko', '19')

    expect(greeting).to eq("Привет, Kate Tarasenko. Самое время заняться делом!")
  end

  it '#foobar' do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('15', '20')

    expect(foobar).to eq("выводим второе число 20, так как одно из введенных значений равно 20")
  end
  it '#foobar' do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('2', '4')
    expect(foobar).to eq("Так как ни одно из чисел не равно 20, то выведем сумму 6")
  end
end