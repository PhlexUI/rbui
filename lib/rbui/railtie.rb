module RBUI
  if defined?(Rails)
    class Railtie < ::Rails::Railtie
      generators do
        require_relative "../generators/rbui/install/install_generator"

        config.app_generators do |g|
          g.templates.unshift File.expand_path("../templates", __FILE__)
        end

        initializer "rbui.set_generator_namespace" do
          Rails::Generators.namespace(RBUI::Generators, as: "rbui")
        end
      end
    end
  end
end
