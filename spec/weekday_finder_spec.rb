require('rspec')
require('weekday_finder')

describe('String#weekday_finder') do

  it('recognizes what day of the week today is') do
    expect("1/8/2015".weekday_finder()).to(eq("Thursday"))
  end

  it('recognizes what day of the week it is given any date in m/d/yyyy format') do
    expect("07/31/1979".weekday_finder()).to(eq("Tuesday"))
  end

  it('recognizes what day of the week it is given any date in m/d/yyyy format') do
    expect("7/27/2010".weekday_finder()).to(eq("Tuesday"))
  end

  it('recognizes what day of the week it is given a month of 08') do
    expect("08/8/2015".weekday_finder()).to(eq("Saturday"))
  end

end
