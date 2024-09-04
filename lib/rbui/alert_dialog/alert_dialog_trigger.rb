# frozen_string_literal: true

module RBUI
  class AlertDialogTrigger < Base
    def view_template(&)
      div(**attrs, &)
    end

    private

    def default_attrs
      {
        data: {action: "click->rbui--alert-dialog#open"},
        class: "inline-block"
      }
    end
  end
end
