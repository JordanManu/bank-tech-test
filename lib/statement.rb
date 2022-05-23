class Statement
  def print_statement(transactions)
    print "date       ||credit || debit || balance \n"
    @statement.each do |transaction|
      print "#{transaction[:date]} || "\
      "#{transaction[:type] == :credit ? transaction[:amount] : ''} || "\
      "#{transaction[:type] == :debit ? transaction[:amount] : ''} || "\
      "#{transaction[:balance]} \n"
    end
  end
end