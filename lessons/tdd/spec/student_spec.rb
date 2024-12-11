require './lib/student.rb'
require 'rspec'

RSpec.describe Student do
    it 'is a student' do
        student = Student.new('Sophocles', 1)

        expect(student).to be_a(Student)
    end
    it 'what the name do' do
        student = Student.new('Sophocles', 1)

        expect(student.name).to eq("Sophocles"); end
    it ''
end
