use Ola;
# 1. Retrieve all successful bookings:
Create View Successful_Bookings As
SELECT * FROM bookings 
WHERE Booking_Status = 'Success';

# View of Retrieve all successful bookings:
SELECT * FROM Successful_Bookings;


# 2. Find the average ride distance for each vehicle type:
Create View avg_ride_distance_for_each_vehicle As
SELECT Vehicle_Type, AVG(Ride_Distance) as avg_distance FROM bookings
GROUP BY Vehicle_Type;

# View of Find the average ride distance for each vehicle type:
SELECT * FROM avg_ride_distance_for_each_vehicle;


# 3. Get the total number of cancelled rides by customers:
Create View cancelled_rides_by_customers As
SELECT COUNT(*) FROM bookings 
WHERE Booking_Status = 'cancelled by Customer';

# View of Get the total number of cancelled rides by customers:
SELECT * FROM cancelled_rides_by_customers;


# 4. List the top 5 customers who booked the highest number of rides:
Create View  top_5_customers As
SELECT Customer_ID, COUNT(Booking_ID) as total_rides FROM bookings 
GROUP BY Customer_ID 
ORDER BY total_rides DESC LIMIT 5;

# View of List the top 5 customers who booked the highest number of rides:
SELECT * FROM top_5_customers;


# 5. Get the number of rides cancelled by drivers due to personal and car-related issues:
Create View rides_cancelled_by_drivers_P_and_C_related_issues As
SELECT COUNT(*) FROM bookings
WHERE canceled_Rides_by_Driver = 'Personal & Car related issue';

# View of Get the number of rides cancelled by drivers due to personal and car-related issues:
SELECT * FROM rides_cancelled_by_drivers_P_and_C_related_issues;


# 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
Create View max_min_driver_rating As 
SELECT MAX(Driver_Ratings) as max_rating, MIN(Driver_Ratings) as min_rating FROM bookings 
WHERE Vehicle_Type = 'Prime Sedan';

# View of Find the maximum and minimum driver ratings for Prime Sedan bookings:
SELECT * FROM max_min_driver_rating;


# 7. Retrieve all rides where payment was made using UPI:
Create View UPI_payment As
SELECT * FROM bookings 
WHERE Payment_Method = 'UPI';

# View of Retrieve all rides where payment was made using UPI:
SELECT * FROM UPI_payment;


# 8. Find the average customer rating per vehicle type:
Create View average_customer_rating_per_vehicle As
SELECT Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating FROM bookings
GROUP BY Vehicle_Type;

# View of Find the average customer rating per vehicle type:
SELECT * FROM average_customer_rating_per_vehicle;


# 9. Calculate the total booking value of rides completed successfully:
Create View total_booking_value_of_rides_completed_successfully As
SELECT SUM(Booking_Value) as totalsuccessful__value FROM bookings 
WHERE Booking_Status = 'Success';

# View of Calculate the total booking value of rides completed successfully:
SELECT * FROM total_booking_value_of_rides_completed_successfully;


# 10. List all incomplete rides along with the reason:
Create View incomplete_rides_along_with_the_reason As
SELECT Booking_ID, Incomplete_Rides_Reason FROM bookings 
WHERE Incomplete_Rides='Yes';

# View of List all incomplete rides along with the reason:
SELECT * FROM incomplete_rides_along_with_the_reason;






