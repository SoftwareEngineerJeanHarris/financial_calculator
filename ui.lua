local iup = require("iuplua")

-- Create input fields (text boxes)
local principalInput = iup.text{expand="YES", value="200000"}
local rateInput = iup.text{expand="YES", value="4.5"}
local termInput = iup.text{expand="YES", value="30"}
local priceInput = iup.text{expand="YES", value="250000"}

-- Create buttons
local calculateButton = iup.button{title="Calculate Mortgage"}

-- Create labels (for displaying results)
local mortgageLabel = iup.label{title="Monthly Payment: $0"}
local downpaymentLabel = iup.label{title="Downpayment: $0"}

-- Return UI components
return {
    principalInput = principalInput,
    rateInput = rateInput,
    termInput = termInput,
    priceInput = priceInput,
    calculateButton = calculateButton,
    mortgageLabel = mortgageLabel,
    downpaymentLabel = downpaymentLabel
}
