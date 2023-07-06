# Add the 2 requires you will need here
require "rspec"
require "./lib/student"

describe Student do
  describe "#initialize" do
    it "is an instance of student" do
      student = Student.new("Mark")
      student2 = Student.new("Jenny")

      expect(student).to be_a(Student)
      # write the code to initialize a new student object
    end
  end

  # test it has a name
  describe "name" do
    it "returns the name of student" do
      student = Student.new("Mark")
      student2 = Student.new("Jenny")

      expect(student.name).to eq("Mark")
      expect(student2.name).to eq("Jenny")
    end
  end

  # test it has cookies
  describe "cookies" do
    it "should start with an empty cookie array" do
      student1 = Student.new("Mark")

      expect(student.cookies).to eq([])
    end
  end

  describe "add_cookie" do
    it "should add a cookie to the cookies array" do
      student1 = Student.new("MarK")

      student.add_cookie("Choco Chip")
      student.add_cookie("Sugar")

      expect(student.cookies).to eq(["Choco Chip", "Sugar"])
    end
  end
end
