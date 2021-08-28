
import Foundation
/*
 Rank: 855413      🚹 40604
     https://www.hackerrank.com/challenges/day-of-the-programmer/problem
 
 Marie invented a Time Machine and wants to test it by time-traveling to visit Russia on the Day of the Programmer (the 256th day of the year) during a year in the inclusive range from 1700 to 2700.
 From 1700 to 1917, Russia's official calendar was the Julian calendar; since 1919 they used the Gregorian calendar system. The transition from the Julian to Gregorian calendar system occurred in 1918, when the next day after January 31st was February 14th. This means that in 1918, February 14th was the 32nd day of the year in Russia.
 In both calendar systems, February is the only month with a variable amount of days; it has 29 days during a leap year, and 28 days during all other years. In the Julian calendar, leap years are divisible by 4; in the Gregorian calendar, leap years are either of the following:
 Divisible by 400.
 Divisible by 4 and not divisible by 100.
 Given a year, , find the date of the 256th day of that year according to the official Russian calendar during that year. Then print it in the format dd.mm.yyyy, where dd is the two-digit day, mm is the two-digit month, and yyyy is .
 For example, the given  = 1984. 1984 is divisible by 4, so it is a leap year. The 256th day of a leap year after 1918 is September 12, so the answer is 12.09.1984.
 */

/*
 es bisiesto si es divisible entre 4,  y ( NO si es divisible entre 100 y SI entre 400)
 dia 256 del año
 SEUDOCODIGO
 BISIESTO FERBERO 29 Y NORMAL FEBRERO 28

 calendario JULIANO
 Caso 1 No bisiesto: 12.septiembre
 caso 2 Bisiesto: 11.septiembre
 de 1700 a 1917
 
 AÑO DE TRANSICION
 1918: 26.septiembre.1918
 
 Calendario GREGORIANO
 de 1919 a 2700
 caso 1 no bisiesto 12.septiembre
 caso 2 bisiesto: 13.septiembre
 */
func dayOfProgrammerVer1(year: Int) -> String {
    // Write your code here
    var  result = ""
    var leapYear: Bool = ((year % 4 == 0) && ((year % 100 != 0) && (year % 400 != 0))) ? true : false
    
    if year > 1699 && year < 1918 {
        result = leapYear ? "11" : "12"
    } else if
        year > 1918 && year < 2700 {
        result = leapYear ? "12" : "13"
    } else {
        result = "26"
    }
    
    result += ".09.\(year)"
    
    return result
}

print("ver1")
print(dayOfProgrammerVer1(year: 1917))

func dayOfProgrammer(year: Int) -> String {
    // Write your code here
    var  result = ""
    
    var leapYear = true
    if ((year % 4 == 0) && ((year % 100 != 0) && (year % 400 != 0))) {
        leapYear = true
    } else {
        leapYear = false
    }
    
    //AÑOS
    
    if year > 1699 && year < 1918 {
        
        if leapYear {
            result = ("12.09.\(year)")
        } else {
            result = ("13.09.\(year)")
        }
        
    } else if
        year > 1918 && year < 2700 {
        if leapYear {
                result = ("12.09.\(year)")
        } else {
                result = ("13.09.\(year)")
        }
    } else {
        result = ("26.09.\(year)")
    }
    
    return result
}
print("if")
print(dayOfProgrammer(year: 1917))
