# frozen_string_literal: true

require_relative "acp_palindrome/version"

class String

  # Returns true for a palindrome, false otherwise
  def palindrome?
    aux = processed_content
    aux == aux.reverse
  end

  private
    def processed_content
      scan(/[a-z]/i).join.downcase
    end
end
