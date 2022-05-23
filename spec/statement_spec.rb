require "statement"

describe Statement do
  before(:each) do
    @statement = Statement.new
    @transactions = [{
    "date": Time.now.strftime('%d/%m/%Y'),
    "type": :credit, 
    "amount": format('%.2f', 200),
    "balance": format('%.2f', 200)
  }]
  end

  it 'stores the date the transaction was made' do
    expect(@statement.print_statement(@transactions)).to eq [{:amount=>"200.00", :balance=>"200.00", :type=>:credit, :date=>"23/05/2022"}]
  end

  it 'prints the bank statement with date, credit and balance' do
    expect(@statement.print_statement(@transactions)).to eq [{:amount=>"200.00", :balance=>"200.00", :type=>:credit, :date=>"23/05/2022"}]
  end

  it 'prints the statement with most recent transaction first' do
    expect(@statement.print_statement(@transactions)).to eq [{:amount=>"200.00", :balance=>"200.00", :type=>:credit, :date=>"23/05/2022"}]
  end
  it 'prints the monetary values in the statement with two decimal places' do
    expect(@statement.print_statement(@transactions)).to eq [{:amount=>"200.00", :balance=>"200.00", :type=>:credit, :date=>"23/05/2022"}]
  end
end