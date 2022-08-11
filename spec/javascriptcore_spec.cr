require "./spec_helper"

describe JavaScriptCore do
  it "should compile JS correctly" do
    n1 = Random.rand(9999)
    n2 = Random.rand(9999)
    should_equal = n1 + n2

    script = <<-JS
      function add(n1, n2) {
        return n1 + n2
      }

      add(#{n1}, #{n2})
    JS
    context = JavaScriptCore::Context.new
    result = context.evaluate(script, -1)

    result.to_i.should eq(should_equal)
  end
end
