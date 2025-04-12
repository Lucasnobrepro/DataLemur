## SQL Interview Question: Third Transaction Per User

This is the same question as problem #11 in the SQL Chapter of *Ace the Data Science Interview*!  

---

### 📋 Problem Statement  
Assume you are given the table below on **Uber transactions made by users**.  
Write a query to **obtain the third transaction of every user**.  
Output the `user_id`, `spend`, and `transaction_date`.

---

### 🧾 `transactions` Table Structure
| Column Name       | Type      |
|------------------|-----------|
| user_id          | integer   |
| spend            | decimal   |
| transaction_date | timestamp |

---

### 🧪 Example Input (`transactions` Table)

| user_id | spend  | transaction_date       |
|---------|--------|------------------------|
| 111     | 100.50 | 01/08/2022 12:00:00    |
| 111     | 55.00  | 01/10/2022 12:00:00    |
| 121     | 36.00  | 01/18/2022 12:00:00    |
| 145     | 24.99  | 01/26/2022 12:00:00    |
| 111     | 89.60  | 02/05/2022 12:00:00    |

---

### ✅ Example Output

| user_id | spend  | transaction_date       |
|---------|--------|------------------------|
| 111     | 89.60  | 02/05/2022 12:00:00    |

---

### 💡 Explanation
User `111` is the only one with at least **three transactions**, so we return the **third transaction** sorted by date.

---

### 🔔 Note
The dataset you are querying against **may have different input & output** – this is just an example!

---

### 📘 P.S.
For more Uber SQL interview tips & problems, check out the **Uber SQL Interview Guide**.
