# frozen_string_literal: true

require "test_helper"

class RBUI::ShortcutKeyTest < Minitest::Test
  def test_render_with_all_items
    output = phlex_context do
      RBUI.ShortcutKey do |shortcut|
        shortcut.span(class: "text-xs") { "⌘" }
        shortcut.plain "K"
      end
    end

    assert_match(/K/, output)
  end
end
