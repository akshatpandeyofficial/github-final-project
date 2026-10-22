# Simple Interest Calculator

A simple command-line calculator that computes simple interest from a
principal amount, an annual interest rate, and a time period in years.


## Purpose

This project demonstrates how to calculate simple interest using the
standard formula:

**Simple Interest = (Principal × Rate × Time) / 100**

The rate is entered as a percentage per year, and time is entered in
years.

## Features

-   Accepts principal amount, annual interest rate, and time period from
    the user.
-   Calculates simple interest.
-   Calculates the total amount (principal + interest).
-   Validates that inputs are non-negative numeric values.
-   Displays the results to two decimal places.

## Requirements

-   Bash shell
-   `bc` utility for decimal arithmetic

## How to Run

1.  Clone or download the repository.

2.  Open a terminal in the project directory.

3.  Make the script executable:

    ``` bash
    chmod +x simple-interest.sh
    ```

4.  Run the calculator:

    ``` bash
    ./simple-interest.sh
    ```

5.  Enter the principal, annual interest rate, and time in years when
    prompted.

## Example

For a principal of `1000`, an annual interest rate of `5%`, and a time
period of `2` years:

``` text
Principal amount: 1000
Annual interest rate (%): 5
Time (years): 2

Simple interest: 100.00
Total amount: 1100.00
```

## Project Structure

``` text
.
├── README.md
└── simple-interest.sh
```

## Formula

Where:

-   **Principal (P):** The initial amount of money.
-   **Rate (R):** The annual interest rate expressed as a percentage.
-   **Time (T):** The duration in years.

The calculator uses:

``` text
Simple Interest = (P × R × T) / 100
Total Amount = P + Simple Interest
```


## License

This project is distributed under the Apache License 2.0. See the
`LICENSE` file for details.
