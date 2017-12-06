class GraphsController < ApplicationController

    def graphs
       @orders = Order.all
       
       ordersPerMonth()
       @monthsNums
    end

    def ordersPerMonth ()
        @monthNums = Array.new(12, 0)
        @orders.each do |ord|
            month = ord["weekWorked"]
            month = month.month
            
            puts ord.hoursWorked + 1
            case month
            when 1
            @monthNums[0] += ord.hoursWorked
            when 2
            @monthNums[1] += ord.hoursWorked
            when 3
            @monthNums[2] += ord.hoursWorked
             when 4
            @monthNums[3] += ord.hoursWorked
             when 5
            @monthNums[4] += ord.hoursWorked
            when 6
            @monthNums[5] += ord.hoursWorked
            when 7
            @monthNums[6] += ord.hoursWorked
            when 8
            @monthNums[7] += ord.hoursWorked
            when 9
            @monthNums[8] += ord.hoursWorked
            when 10
            @monthNums[9] += ord.hoursWorked
            when 11
            @monthNums[10] += ord.hoursWorked
            when 12
            @monthNums[11] += ord.hoursWorked
            else
            puts "didnt work"
            end
            
            
            
        end

    end