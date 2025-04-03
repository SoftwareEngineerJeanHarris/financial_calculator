# financial_calculator - Mortgage & Downpayment Calculator

**financial_calculator** is a simple financial calculator built in Lua for calculating mortgage payments and downpayments for a home purchase. This application uses the [IUP library](http://www.tecgraf.puc-rio.br/iup/) to create a GUI, and is a great starting point for working with Lua in desktop applications.

## Features:
- Calculate monthly mortgage payments based on principal, interest rate, and loan term.
- Calculate downpayment based on house price and downpayment percentage.
- Simple, easy-to-use interface with input fields and results display.

## Requirements:
To run the **financial_calculator** application, you need to install the following:

1. **Lua**:
   - Download and install Lua from the official [Lua website](https://www.lua.org/download.html) or through a package manager like [Homebrew](https://brew.sh/) (MacOS).
     - For **Windows**, you can use the [Lua for Windows](https://github.com/rjpcomputing/luaforwindows) installer.
     - For **Linux** (Ubuntu/Debian), you can install Lua with:
       ```bash
       sudo apt-get install lua5.3
       ```

2. **IUP (GUI Library)**:
   - Install the IUP library to create the graphical user interface. 
   - You can install IUP by downloading it from [IUP official website](http://www.tecgraf.puc-rio.br/iup/). 
   - For Windows, there are pre-built binaries available on the website.
   - To install IUP via LuaRocks (Lua package manager), you can run:
     ```bash
     luarocks install iup
     ```

## Installation Instructions:

### 1. Install Lua and IUP:
   - Follow the installation steps for Lua and IUP (mentioned above).

### 2. Clone this Repository:
   To get the project, clone the repository to your local machine:
   ```bash
   git clone https://github.com/SoftwareEngineerJeanHarris/financial_calculator.git
   cd financial_calculator
   ```

## Running this application:

### 1. Run instructions
    To run the application, navigate to the directory with the the application and
    run the following:
    ``` bash
    lua .\main.lua
    ```