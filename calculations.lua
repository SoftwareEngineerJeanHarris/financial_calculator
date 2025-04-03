-- Mortgage Payment Function
function calculateMortgage(principal, annualRate, years)
    local rate = annualRate / 100 / 12  -- Monthly interest rate
    local n = years * 12  -- Total number of payments (months)
    local numerator = rate * math.pow(1 + rate, n)
    local denominator = math.pow(1 + rate, n) - 1
    return principal * (numerator / denominator)
end

-- Downpayment Calculation
function calculateDownpayment(housePrice, downpaymentPercentage)
    return housePrice * (downpaymentPercentage / 100)
end
