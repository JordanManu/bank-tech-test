# frozen_string_literal: true

require 'statement'

describe Statement do
  let(:statement) { Statement.new }
  before(:each) do
    @date = Time.now.strftime('%d/%m/%Y')
    @transactions = [{
      "date": @date,
      "type": :credit,
      "amount": format('%.2f', 200),
      "balance": format('%.2f', 200)
    }]
  end

  it 'stores the date the transaction was made' do
    expect(statement.print_statement(@transactions)).to eq [{ amount: '200.00', balance: '200.00', type: :credit,
                                                              date: @date }]
  end

  it 'prints the bank statement with date, credit and balance' do
    expect(statement.print_statement(@transactions)).to eq [{ amount: '200.00', balance: '200.00', type: :credit,
                                                              date: @date }]
  end

  it 'prints the statement with most recent transaction first' do
    @transactions.unshift(
      {
        "date": @date,
        "type": :credit,
        "amount": format('%.2f', 300),
        "balance": format('%.2f', 500)
      }
    )
    expect(statement.print_statement(@transactions)).to eq [
      { amount: '300.00', balance: '500.00', type: :credit, date: @date },
      { amount: '200.00', balance: '200.00', date: @date, type: :credit }
    ]
  end

  it 'prints the monetary values in the statement with two decimal places' do
    expect(statement.print_statement(@transactions)).to eq [{ amount: '200.00', balance: '200.00', type: :credit,
                                                              date: @date }]
  end

  it 'prints the statement in a nice format' do
    expect { statement.print_statement(@transactions) }.to output(
      "date       ||credit || debit || balance \n"\
      "#{@date} || 200.00 || || 200.00 \n"
    ).to_stdout
  end

  it 'prints the statement in a nice format with multiple transactions' do
    @transactions.unshift(
      {
        "date": @date,
        "type": :debit,
        "amount": format('%.2f', 100),
        "balance": format('%.2f', 100)
      }
    )
    expect { statement.print_statement(@transactions) }.to output(
      "date       ||credit || debit || balance \n"\
      "#{@date} || || 100.00 || 100.00 \n"\
      "#{@date} || 200.00 || || 200.00 \n"\
    ).to_stdout
  end
end
