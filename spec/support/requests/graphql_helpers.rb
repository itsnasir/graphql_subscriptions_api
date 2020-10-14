module Requests
  module GraphqlHelpers
    def graphqlize(input)
      input = input.attributes if input.respond_to?(:attributes)

      if input.instance_of?(Array)
        input.map { |item| graphqlize(item) }
      else
        input
          .deep_transform_keys { |key| key.camelize(:lower).to_sym }
          .transform_values(&:to_s)
      end
    end

    def compare_as_graphql(element:, keys: [])
      element = element.to_a if element.respond_to?(:to_a)

      if element.instance_of?(Array)
        match_array(
          element.map { |item| compare_as_graphql(element: item, keys: keys) }
        )
      else
        transformed = graphqlize(element)
        hash_including(**transformed.select { |k, _| keys.include? k })
      end
    end
  end
end
