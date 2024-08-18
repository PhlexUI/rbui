# frozen_string_literal: true

module RBUI
  class AccordionDefaultTrigger < Base
    def view_template(&block)
      div(class: "flex items-center justify-between w-full") do
        p(&block)
        RBUI.AccordionIcon
      end
    end

    def default_attrs
      {
        data: {action: "click->rbui--accordion#toggle"},
        class: "w-full flex flex-1 items-center justify-between py-4 text-sm font-medium transition-all hover:underline"
      }
    end
  end
end
