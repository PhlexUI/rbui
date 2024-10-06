# frozen_string_literal: true

require "test_helper"

class RBUI::BadgeTest < Minitest::Test
  def test_render_with_all_items
    output = phlex_context do
      RBUI.Badge { "Badge" }
    end

    assert_match(/Badge/, output)
  end
end
