module Pundit
  module Testing
    module Assertions
      def assert_permitted(user, record, query, message = nil)
        message ||= "Expected to grant #{query} on #{record} but it didn't"
        assert run_authorization(user, record, query), message
      end

      def assert_forbidden(user, record, query, message = nil)
        message ||= "Expected not to grant #{query} on #{record} but it did"
        assert !run_authorization(user, record, query), message
      end

      private

      def run_authorization(user, record, query)
        self.class.to_s.gsub(/Test/, '').constantize.new(user, record).public_send(query)
      end
    end
  end
end