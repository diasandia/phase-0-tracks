# 5.4 NESTED DATA STRUCTURES

#RELEASE 2

#Design and build a nested data structure. Use mix of hashes and arrays.

gym = {
    yoga_room: {
        class_name: "Vinyasa Yoga",
        class_info: {
            student_level: "Intermediate",
            total_seats: 60,
            seats_available: 9
        },
        equipment: [
            "Yoga Mats",
            "Blocks",
            "Straps"
        ]
    },

    spin_room: {
        class_name: "Indoor Cycling",
        class_info: {
            student_level: "Beginner",
            total_seats: 30,
            seats_available: 5
        },
        equipment: [
            "Stationary Bike"
        ]
    },

    weight_room: {
        class_name: "Strength Training",
        class_info: {
            student_level: "Advance",
            total_seats: 20,
            seats_available: 1
        },
        equipment: [
            "Barbell",
            "Bench Press",
            "Squat Rack"
        ]
    }
}

#Add "Cycling Shoes" to the equipment list in spin_room
p gym[:spin_room][:equipment].push("Cycling Shoes")
p gym[:spin_room][:equipment]

# Print squat rack
p gym[:weight_room][:equipment][2]

#Print yoga mats in alternating case and
p gym[:yoga_room][:equipment][0].swapcase

#Add "Dumbbells" underneath barbell the equipment list in weight_room
p gym[:weight_room][:equipment].insert(1, "Dumbbells")

#Change total seats for yoga room from 60 to 70 && print results to confirm change
p gym[:yoga_room][:class_info][:total_seats] = 70
p gym[:yoga_room]



