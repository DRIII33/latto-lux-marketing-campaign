# Data Dictionary: Latto Lux Marketing Campaign

This document provides a detailed description of all data fields used in the "Latto Lux" data science project.

---

### **Dataset 1: `physical_sales`**

This dataset represents transactions of the physical "Latto Lux" scratch-off tickets.

| Column Name | Data Type | Description |
| :--- | :--- | :--- |
| `transaction_id` | STRING | A unique identifier for each individual ticket sale. |
| `date` | DATE | The date of the sale. |
| `time` | TIME | The time of the sale. |
| `retailer_location_city` | STRING | The city where the ticket was purchased (e.g., 'Atlanta', 'Chicago', 'New York'). |
| `ticket_batch_id` | STRING | An identifier for the batch of tickets the item belongs to. |
| `unique_code` | STRING | The unique alphanumeric code printed on the ticket. This code is the link to the digital app usage data. |

---

### **Dataset 2: `digital_app_usage`**

This dataset tracks user engagement and activity within the "Latto Lux" mobile application.

| Column Name | Data Type | Description |
| :--- | :--- | :--- |
| `user_id` | STRING | A unique, anonymized identifier for each user of the app. |
| `date` | DATE | The date of the app session. |
| `time` | TIME | The time of the app session. |
| `app_session_length_minutes` | INTEGER | The duration of the user's app session in minutes. |
| `feature_used` | STRING | The specific app feature the user engaged with (e.g., 'scan_ticket', 'play_ar_game', 'share_social'). |
| `unique_code` | STRING | The alphanumeric code from the physical ticket that the user scanned. |
| `social_share_count` | INTEGER | The number of times the user shared content to social media from within the app. |
