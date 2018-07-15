# BLOOD SUGAR BUDDY

## Description

This app is designed to be a cyber coach to diabetics. The user can enter their blood sugar levels and receive a response from the app, guiding them towards the appropriate action. The app is also designed to have an encouraging tone so as to positively influence the user.

Also included is a BMI calculator which will tell the user if they fall within the normal range for their height/weight, and how this will impact their blood sugar control. 

The waist measurement feature is a quick guide to inform users that if the weight they carry is high around the waist then it could make their diabetes control more difficult.

## Usage

When first running the app the user will be asked their name, which will be capitalised (or upcase if appropriate) later in the app.

### Menu navigation

Press 1 and enter to access the blood sugar buddy.

Press 2 and enter to access the BMI calculator.

Press 3 for waist measurement health indicator

Press x to exit the program.

## Blood sugar buddy

Once in the blood sugar buddy, enter your blood glucose reading (mmol/l measurement).

Your blood sugar measurement will be represented in its apropriate place on a range table with 4 stars (****). 

If your blood sugar is LESS THAN 2.5, it will advise you to eat some sugar. It will also ask if you require paramedic assistance, to which you can reply yes or no, by typing 'y' or 'n' respectively on your keyboard. 

Please note*
This app will NOT actually call the paramedics for you. This function may be added at a later date.

If your blood sugar is between 2.5 and 4.0, it will advise you to have a small snack in order to bring your blood sugar within a normal range.

If your blood sugar is between 4.0 and 8.0, blood sugar buddy will congratulate you on your great result.

If your blood sugar is between 8.0 and 10.0, blood sugar buddy will congratulate you on a decent result and advise that it is a safe range for some exercise.

A blood sugar result between 10.0 and 15.0 will initiate a response which advises that your blood sugar is high. It will ask whether you would prefer to do some exercise, or to take insulin. To select insulin, press 1 and enter on your keyboard. Otherwise for some exercise, select 2 and press enter.

A blood sugar result of more than 15.0 will result in 3 options. Select if you're feeling tired, irritable or if you're feeling ok by pressing 1, 2 or 3 on your keyboard. An appropriate response will be given to you based on your selection. 

## BMI calculator

This option gives brief information about what BMI is and then prompts the user to enter their height and weight. As the BMI gem that is installed calculates in metres, and it is easier for users to input centimetres the number is converted before fed into the calculator.

### Processing

Before the calculation is displayed, we have inserted a fun little 'processing' function to make it look like the computer is thinking. With everything flashing up so quickly it's nice to slow things down a little bit. This obviously wouldn't be included in an official release. 

## BMI results

The results are directly from the gem so we can't colourise them like the blood sugar results. After the results are displayed the user has the option to view further information about BMI or go back to the main menu.

As the information recommends checking waist measurement there is an option at the end of the information to check waist measurement. This option is also in the main menu. 

## Waist measurement

This section is just a simple block of information with a small table at the end clearly showing where people can be at risk. We decided on this as asking to enter measurements can take more time and the table shows clearly if you are over a certain limit and how far you may be over. 

# To run app

Gems included in this app:
- colorize
- terminal-table
- bmi
- pry

To run the app please enter:

bundle install

in the terminal. Then open the file main.rb

All you need to do is follow the prompts. You can cycle through the various functions from just running the app once as it always gives the option to return to the main menu. 

Enjoy!

