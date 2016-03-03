// Russell Gordon
// J2 - Terms of Office

// Notes
//
// The current year is always a year when all positions were changed over.
//
// Any year beyond x, the current year, would have to have 2, 4, 3, and 5 as factors.
//
// What number is that?
// 
// Multiples of 2:
// 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 52, 54, 56, 58, 60...
//
// Multiples of 4:
// 4, 8, 12, 16, 20, 24, 28, 32, 36, 40, 44, 48, 52, 56, 60...
//
// Multiples of 3:
// 3, 6, 9, 12, 15, 18, 21, 24, 27, 30, 33, 36, 39, 42, 45, 48, 51, 54, 57, 60...
//
// Multiples of 5:
// 5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60...
//
// So the lowest common multiple of 2, 4, 3, and 5 is 60.
//
// Any year that is has 60 as a divisor with no remainder is an "unusual" year where all positions change over.



// Inputs
//
// c    - the current year, an integer
// f    - the future year, an integer, greater than the current year

let c : String? = "1977"
let f : String? = "2177"

// Number of special years
var specialYears : Int = 0

// Only continue when input has been provided for both variables
if let givenC = c, givenF = f {
    
    // Convert given inputs to integer
    if let currentYear = Int(givenC), futureYear = Int(givenF) {

        // Debug – print outputs
        print("current = \(currentYear)")
        print("future = \(futureYear)")
        
        // Proceed only when the future year is greater than the current year
        if futureYear > currentYear {
            
            // Check all the years in the range given
            for thisYear in 0...(futureYear - currentYear) {
                
                // Look for years with 60 as an even divisor
                if thisYear % 60 == 0 {
                    
                    // How many special years?
                    specialYears += 1
                    
                    // Report this year
                    print("All positions change in year \(thisYear + currentYear)")
                    
                }
                
            }
            
            // Report how unusual this was
            let actualPercentage : Float = ( Float(specialYears) / Float((futureYear - currentYear + 1)) ) * Float(100)
            // Get left side of the percentage
            var leftSide = Int(actualPercentage)
            // Get right side of the percentage
            var rightSide = ( actualPercentage - Float(leftSide) ) * 10
            // Handle rounding, if needed
            if rightSide - Float(Int(rightSide)) >= 0.5 {
                // Round up
                rightSide = Float(Int(rightSide) + 1)
                // Check for a whole (like 1.99 rounds up to 2.0)
                if rightSide == 10 {
                    leftSide += 1
                    rightSide = 0
                }
            } else {
                // Leave as is
                rightSide = Float(Int(rightSide))
            }
            print("\(leftSide).\(Int(rightSide))%")
            
        }
        
    }
    
}




