# frozen_string_literal: true

class Statement
  def print_statement(transactions)
    print "date       ||credit || debit || balance \n"
    transactions.each do |transaction|
      credit = transaction[:type] == :credit ? " #{transaction[:amount]} " : ' '
      debit = transaction[:type] == :debit ? " #{transaction[:amount]} " : ' '
      print "#{transaction[:date]} ||#{credit}||#{debit}|| #{transaction[:balance]} \n"\
    end
  end
end
