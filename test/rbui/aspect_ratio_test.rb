# frozen_string_literal: true

require "test_helper"

class RBUI::AspectRatioTest < Minitest::Test
  def test_render_with_all_items
    output = phlex_context do
      RBUI.AspectRatio(aspect_ratio: "16/9") do |aspect|
        aspect.img(
          alt: "Placeholder",
          loading: "lazy",
          src: "https://avatars.githubusercontent.com/u/246692?v=4"
        )
      end
    end

    assert_match(/Placeholder/, output)
  end
end
