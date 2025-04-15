## Viewership by Device Type

This is the same question as problem #3 in the SQL Chapter of *Ace the Data Science Interview*!

Assume you're given the table on user viewership categorised by device type where the three types are **laptop**, **tablet**, and **phone**.

### Task

Write a query that calculates the **total viewership** for laptops and mobile devices, where mobile is defined as the **sum of tablet and phone viewership**.  

Output the total viewership for:
- laptops as `laptop_views`
- mobile devices as `mobile_views`

> **Note:**  
> Effective 15 April 2023, the solution has been updated with a more concise and easy-to-understand approach.

---

### `viewership` Table

| Column Name | Type                               |
|-------------|------------------------------------|
| user_id     | integer                            |
| device_type | string (`'laptop'`, `'tablet'`, `'phone'`) |
| view_time   | timestamp                          |

---

### Example Input

| user_id | device_type | view_time           |
|---------|-------------|---------------------|
| 123     | tablet      | 01/02/2022 00:00:00 |
| 125     | laptop      | 01/07/2022 00:00:00 |
| 128     | laptop      | 02/09/2022 00:00:00 |
| 129     | phone       | 02/09/2022 00:00:00 |
| 145     | tablet      | 02/24/2022 00:00:00 |

---

### Example Output

| laptop_views | mobile_views |
|--------------|--------------|
| 2            | 3            |

---

### Explanation

Based on the example input:
- There are a total of **2 laptop** views (`user_id` 125 and 128)
- There are a total of **3 mobile** views (tablet: `user_id` 123 and 145, phone: `user_id` 129)

> The dataset you are querying against may have different input & output - this is just an example!
