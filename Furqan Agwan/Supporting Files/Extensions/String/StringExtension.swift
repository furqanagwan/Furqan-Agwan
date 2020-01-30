import Foundation

extension String{
    var curretDay: String {
            let date : Date = Date()
            let day: String = date.dayName() + " " +  date.day.string + " " + date.monthName()
            return day
    }
}

