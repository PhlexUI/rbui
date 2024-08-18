# frozen_string_literal: true

module RBUI
  class AccordionTrigger < Base
    def view_template(&)
      button(**attrs, &)
    end

    def default_attrs
      {
        data: {action: "click->rbui--accordion#toggle"},
        class: "w-full flex flex-1 items-center justify-between py-4 text-sm font-medium transition-all hover:underline"
      }
    end
  end
end
