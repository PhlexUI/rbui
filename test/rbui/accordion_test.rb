# frozen_string_literal: true

require "test_helper"

class RBUI::AccordionTest < Minitest::Test
  def test_render_with_default_items
    output = phlex_context do
      RBUI.Accordion do
        RBUI.AccordionItem do
          RBUI.AccordionDefaultTrigger { "Title" }
          RBUI.AccordionDefaultContent { "Content" }
        end
      end
    end

    assert_match(/<div data-controller="rbui--accordion"/, output)
  end

  def test_render_with_all_items
    output = phlex_context do
      RBUI.Accordion do
        RBUI.AccordionItem do
          RBUI.AccordionTrigger do |trigger|
            trigger.div do |div|
              RBUI.AccordionIcon do |icon|
                icon.svg(
                  xmlns: "http://www.w3.org/2000/svg",
                  fill: "none",
                  viewbox: "0 0 24 24",
                  stroke_width: "1.5",
                  stroke: "currentColor",
                  class: "w-6 h-6"
                ) do |s|
                  s.path(
                    stroke_linecap: "round",
                    stroke_linejoin: "round",
                    d: "M12 9v6m3-3H9m12 0a9 9 0 11-18 0 9 9 0 0118 0z"
                  )
                end
              end
              div.p { "What is RBUI?" }
            end
          end

          RBUI.AccordionContent do |content|
            content.p { "RBUI is a UI component library for Ruby devs who want to build better, faster." }
          end
        end

        RBUI.AccordionItem do
          RBUI.AccordionTrigger do |trigger|
            trigger.div do |div|
              RBUI.AccordionIcon do |icon|
                icon.svg(
                  xmlns: "http://www.w3.org/2000/svg",
                  fill: "none",
                  viewbox: "0 0 24 24",
                  stroke_width: "1.5",
                  stroke: "currentColor",
                  class: "w-6 h-6"
                ) do |s|
                  s.path(
                    stroke_linecap: "round",
                    stroke_linejoin: "round",
                    d: "M12 9v6m3-3H9m12 0a9 9 0 11-18 0 9 9 0 0118 0z"
                  )
                end
              end
              div.p { "Can I use it with Rails?" }
            end
          end

          RBUI.AccordionContent do |content|
            content.p do
              "Yes, RBUI is pure Ruby and works great with Rails. It's a Ruby gem that you can install into your Rails app."
            end
          end
        end
      end
    end

    assert_match(/Yes, RBUI is pure Ruby and works great with Rails/, output)
  end
end
