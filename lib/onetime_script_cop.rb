require "onetime_script_cop/version"
require "rubocop"

module OnetimeScriptCop
  class Error < StandardError; end

  class Cop < RuboCop::Cop::Cop
    def on_str(node)
      binding.pry
      add_offense(node) if node.source.include?("")
    end
  end
end
