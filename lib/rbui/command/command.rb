# frozen_string_literal: true

module RBUI
  class Command < Base
    def view_template(&)
      div(**attrs, &)
    end

    private

    def default_attrs
      {
        data: {controller: "rbui--command"}
      }
    end
  end
end
