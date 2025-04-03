-- Require necessary libraries
local iup = require("iuplua")  -- IUP for GUI components
local calc = require("calculations")  -- Import calculation functions
local ui = require("ui")  -- Import UI components

-- Create the main window
local window = iup.dialog {
    title = "FinCalc - Mortgage & Downpayment Calculator",
    size = "300x300",
    iup.vbox {
        ui.principalInput,
        ui.rateInput,
        ui.termInput,
        ui.priceInput,
        ui.calculateButton,
        ui.mortgageLabel,
        ui.downpaymentLabel
    }
}

-- Button click event
function ui.calculateButton:action()
    local principal = tonumber(ui.principalInput.value)
    local rate = tonumber(ui.rateInput.value)
    local term = tonumber(ui.termInput.value)
    local housePrice = tonumber(ui.priceInput.value)

    -- Perform the calculations
    local mortgage = calc.calculateMortgage(principal, rate, term)
    local downpayment = calc.calculateDownpayment(housePrice, 20)  -- Assuming 20% downpayment

    -- Display the results
    ui.mortgageLabel.title = string.format("Monthly Payment: $%.2f", mortgage)
    ui.downpaymentLabel.title = string.format("Downpayment: $%.2f", downpayment)
end

-- Start the application
window:show()

-- Main event loop
if (iup.MainLoopLevel() == 0) then
    iup.MainLoop()
end
