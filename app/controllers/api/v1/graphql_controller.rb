module Api
  module V1
    class GraphqlController < ApplicationController
      def execute
        result = if params[:_json]
                   GraphqlSubscriptionsSchema.multiplex(
                     params[:_json].map do |param|
                       { query: param[:query] }.merge(execute_params(param))
                     end
                   )
                 else
                   GraphqlSubscriptionsSchema.execute(params[:query], execute_params(params))
                 end

        render json: result
      end

      def execute_dev
        result = GraphqlSubscriptionsSchema.execute(params[:query], execute_params(params))
        render json: result
      end

      private

      def execute_params(item)
        {
          operation_name: item[:operationName],
          variables: ensure_hash(item[:variables]),
          context: {}
        }
      end

      def ensure_hash(ambiguous_param)
        case ambiguous_param
        when String
          if ambiguous_param.present?
            ensure_hash(JSON.parse(ambiguous_param))
          else
            {}
          end
        when Hash, ActionController::Parameters
          ambiguous_param
        when nil
          {}
        else
          raise ArgumentError, "Unexpected parameter: #{ambiguous_param}"
        end
      end
    end
  end
end
