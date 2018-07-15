
require 'colorize'
require 'terminal-table'
require "bmi"
require "pry"

def get_name
    system "clear"
    puts "Welcome. Please enter your name:".blue
    name = gets.chomp.capitalize
    main_menu name
    return name
end

def processing
    2.times do
        system "clear"
        puts "Processing."
        sleep 0.3
        system "clear"
        puts "Processing.."
        sleep 0.3
        system "clear"
        puts "Processing..."
        sleep 0.3
        system "clear"
    end
end

def bmi_calc (user_info, name)
        processing
        bmi2 = BMI.new
        bmi2.weight(user_info[0])
        bmi2.height(user_info[1])
        bmi2.calc
        puts ""
                sleep 2
                puts "#{(name)}, would you like more information about BMI?"
                puts ""
                puts "Please enter 1 or 2"
                puts ""
                puts "1. Yes, tell me more."
                puts "2. No, I know how it works."
                puts "x = Exit."
                puts "m = Back to main menu."
                
                bmi_answer = gets.chomp.downcase
                
                if bmi_answer == "1"
                    system "clear"
                    puts "From heartfoundation.org.au:"
                    puts ""
                    puts "BMI is a useful measurement for most people over 18 years old. But it is only an estimate and it doesn’t take into account age, ethnicity, gender and body composition. We recommend you also check your waist measurement and other risk factors."
                    puts ""
                    sleep 2
                    puts "Speak to your doctor, an Accredited Practising Dietitian or a health practitioner about your weight."
                    puts ""
                    sleep 3
                    puts "Would you like to check if your waist is at a healthy size?"
                    puts ""
                    puts "1. Yes"
                    puts "2. No"
                    puts "x = exit"
                    puts "m = back to main menu"
                    waist_answer = gets.chomp.downcase
                    if waist_answer == "1"
                        waist_measurement name
                    elsif waist_answer == "2"
                        main_menu name
                    elsif waist_answer == "x"
                        exit
                    elsif waist_answer == "m"
                        main_menu name
                    else error name
                    end 

            elsif bmi_answer == "2"
            main_menu name
            elsif
            bmi_answer == "x"
            exit
        elsif bmi_answer == "m"
            main_menu name
        else 
            error name
        end 
    end
    
def main_menu name
    puts ""
    system "clear"
    puts "WELCOME TO BLOOD SUGAR BUDDY #{(name.upcase)}!"
    puts "-----"
    puts "|MENU|"
    puts "-----"
    puts ""
    puts "1. Use Blood Sugar Buddy"
    puts ""
    puts "2. Access BMI calculator"
    puts ""
    puts "3. Waist Measurement health indicator"
    puts ""
    puts "x = Exit "
    
    response = gets.chomp.downcase
    
        if response == "1"
            blood_sugar_calculator name
        elsif response == "2"
            user_info = get_info
            bmi_calc user_info, name        
        elsif response == "3"
            waist_measurement name        
        elsif response == "x"
            exit
        else
            error name
    end
end


def back_to_menu name
    puts ""
    puts "#{(name)}, press x to exit or m to go back to the main menu."
    menu_or_exit = gets.chomp.downcase
        if menu_or_exit == "m" 
        main_menu name
        elsif menu_or_exit == "x"
        exit
        else 
        error name   
        end
end


def blood_sugar_calculator name
    
    puts "Please enter your current blood sugar reading.".colorize(:white)
    reading = gets.chomp.to_f
    asterisk = '*'
    if reading < 2.5
       asterisk.colorize(:red)
       print_table reading, asterisk
        puts "Uhhh......#{(name)}. You might wanna have some sugar before you pass out!".colorize(:red)
        puts "Do you want me to get the paramedics for you? Y/N?".colorize(:red)
        emergency = gets.chomp.downcase
        if emergency == "y"
            puts "Getting emergency services on the line right now. Hang tight #{(name)}!".colorize(:yellow)
        elsif emergency == "n"
            puts "OK #{(name)}. Have your sugar, take a break, kick back and relax. You'll be feeling good again in no time.".colorize(:green)
        end
    elsif reading < 4
        asterisk.colorize(:yellow)
        print_table reading, asterisk
        puts "A little low #{(name)}. Have a small snack and sweeten up, mate.".colorize(:yellow)
    elsif reading > 15
        asterisk.colorize(:red)
        print_table reading, asterisk
        puts "TOO SWEET!".colorize(:red) 
        puts "How are you feeling?".colorize(:red)
        puts "1. Tired".colorize(:yellow)
        puts "2. Irritable".colorize(:red)
        puts "3. Feeling ok".colorize(:green)
        feels = gets.chomp.to_i
        if feels == 1
            puts "Take some insulin, relax and drink lots of water. Flush that sugar out.".colorize(:yellow)
        elsif feels == 2
            puts "Sorry to hear, #{(name)}. I'll help coach you through this.".colorize(:yellow)
            puts "Take a bit of insulin, then go do some cardio. Even a brisk walk will help you feel better.".colorize(:yellow)
                sleep 5
                puts "By the way, what's brown and sticky?".colorize(:white)
                sleep 3
                puts "A stick".colorize(:white)
                sleep 1
                puts "=)".colorize(:white)
            elsif feels == 3
                puts "Well I'm glad you're feeling ok. Still, might be a good idea to lower that blood sugar.".colorize(:yellow)
                sleep 1
                puts "A bit of insulin and some water would do your body some good.".colorize(:yellow)
            end
        elsif reading > 10
            asterisk.colorize(:yellow)
           print_table reading, asterisk
            puts "On the high side. What would you rather do right now?".colorize(:yellow)
                puts "1. Take some insulin".colorize(:yellow)
                puts "2. Have a big cardio session".colorize(:yellow)
                choice = gets.chomp.to_i
                if choice == 1
                    puts "Good on you for taking care of your self #{(name)}.".colorize(:green)
                    sleep 1
                    puts "Your future self will thank you!".colorize(:green)
                elsif choice == 2
                    puts "I BELIEVE IN YOU #{(name.upcase)}! LET'S GO CHAMP! WOOHOOO!".colorize(:green)
                end
    elsif reading > 8
        asterisk.colorize(:green)
       print_table reading, asterisk
        puts "Slightly high, but pretty good overall. Nice time for some cardio ;)".colorize(:green)
    else
        asterisk.colorize(:green)
        print_table reading, asterisk
        puts "Sweet as #{(name)}, you're doing perfect =)".colorize(:green)
        end
    sleep 3
    back_to_menu name
end


def print_table reading, asterisk
    puts ""
    puts "BLOOD SUGAR RANGE".colorize(:white)
    rows = []
        if reading <2.5
            rows.push ['****'.colorize(:red), nil, nil, nil, nil, nil]
        elsif reading < 4
            rows.push [nil, '****'.colorize(:yellow), nil, nil, nil, nil]
        elsif reading < 8.1
            rows.push [nil, nil, '****'.colorize(:green), nil, nil, nil]
        elsif reading > 15
            rows.push [nil, nil, nil, nil, nil,'****'.colorize(:red)]
        elsif reading > 10
            rows.push [nil, nil, nil, nil,'****'.colorize(:yellow), nil]
        else reading > 8
            rows.push [nil, nil, nil,'****'.colorize(:green), nil, nil]
        end
    headers = ['very low'.red, 'low'.yellow, 'GREAT'.green, 'slightly high'.green, 'high'.yellow, 'very high'.red]
    table = Terminal::Table.new :headings => headers, :rows => rows
    puts table
    puts ""
end

def error name
    puts ""
    puts ""
    puts "Sorry #{(name)}, that is not an option. Please try again."
    puts ""
    puts ""
    sleep 2
    main_menu name
end 

def get_info 
    system "clear"
    puts "BMI compares your weight to your height, and is calculated by dividing your weight (in kilograms) by your height (in metres squared)."
    puts ""
    sleep 1
    puts "It gives you an idea of whether you’re 'underweight', a 'healthy' weight, 'overweight', or 'obese' for your height."
    puts ""
    sleep 1
    puts "BMI is one type of tool to help health professionals assess the risk for chronic disease. Another important tool is waist circumference. It is also important to understand your other risk factors."
    sleep 2
    puts ""
    puts "Please enter your weight in kilograms"
    kg = gets.chomp.to_f
    puts "Thanks! Now please enter your height in centimetres"
    cm = gets.chomp.to_f / 100
    return [kg, cm]
end 

def waist_measurement name
    system "clear"
    puts "WAIST MANAGEMENT"
    puts ""
    puts "Where your fat is on your body can be an important sign of your risk of developing ongoing health problems. Carrying excess body fat around your middle is more of a health risk than if weight is on your hips and thighs."
    puts ""
    sleep 1
    puts "Regardless of your height or build, for most adults a waist measurement of greater than 94 cm for men and 80 cm for women is an indicator of the level of internal fat deposits which coat the heart, kidneys, liver, digestive organs and pancreas. This can increase the risk of heart disease and stroke."
    puts ""
    sleep 1
    puts "Waist measurement helps to assess risk by measuring the amount of fat carried around your middle. It can be used along with measuring your body mass index (BMI). Together, these tools give an indication of your risk linked with excess body fat."
    puts ""
    sleep 1
    puts "Check your waist measurement below, and if you think you’re at risk, talk to your doctor or dietitian about what you can do."
    puts ""
    sleep 1
    puts "HOW TO MEASURE YOUR WAIST"
    puts ""
    puts "1. Find the top of your hip bone and the bottom of your ribs."
    puts "2. Breathe out normally"
    puts "3. Place the tape measure midway between these points and wrap it around your waist."
    puts "4. Check your measurement."
    puts ""
    puts ""
    
    rows =[]
    headers = ["Gender", 'Your health is at risk if your waist size is']
    rows.push ['Men', 'Over 94 cm (about 37 inches)'] 
    rows.push ['Women', 'Over 80 cm (about 31.5 inches)']
    waist_table = Terminal::Table.new :title => "Measurements",:headings => headers, :rows => rows
    puts waist_table
    puts ""
    sleep 2
    back_to_menu name
end

get_name
