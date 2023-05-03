# frozen_string_literal: true

require_relative "acp_palindrome/version"

module AcpPalindrome
  # Returns true for a palindrome, false otherwise
  def palindrome?
    aux = processed_content
    aux == aux.reverse
  end

  private
    def processed_content
      to_s.scan(/[a-z0-9]/i).join.downcase
    end
end

class String
  include AcpPalindrome
end

class Integer
  include AcpPalindrome
end
