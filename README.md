# 🌾 Agricultural Data Analysis Project

## 📌 Project Overview
This project presents an **end-to-end agricultural data analytics solution** built using a modern **cloud-based data pipeline**.  
The goal is to analyze agricultural patterns by combining **climatic factors (rainfall, temperature, humidity)** with **crop yield**, and present insights through interactive dashboards.

The project demonstrates real-world skills in:
- Cloud data ingestion
- SQL-based data transformation
- Business intelligence and data storytelling

---

## 🔄 End-to-End Workflow

1. Raw agricultural data is stored in **AWS S3**  
2. **Snowflake** connects to S3 and performs data cleaning and transformations using SQL  
3. **Power BI** connects directly to Snowflake for reporting and visualization  

---

## 🛠️ Tech Stack
- **Cloud Storage:** Amazon AWS S3  
- **Data Warehouse:** Snowflake  
- **Data Transformation:** SQL (Snowflake Worksheet)  
- **Visualization Tool:** Power BI  
- **Version Control:** Git & GitHub  

---

## 📁 File Descriptions
- **`data_season.csv`**  
  Raw agricultural dataset used as the data source.

- **`SnowflakeWorksheet.sql`**  
  SQL script containing all data cleaning, transformation, and aggregation logic performed in Snowflake.

- **`Agricultural Data Analysis Project.pbix`**  
  Interactive Power BI dashboard connected to Snowflake.

- **`Agricultural Data Analysis Project.pdf`**  
  Static export of the Power BI dashboard for easy sharing.

- **`JPG/`**  
  Images of each Power BI report page for quick preview within GitHub.

---

## 📊 Power BI Dashboard Overview
The dashboard consists of **four analytical pages**, each focused on a key agricultural parameter.  
Each page provides analysis **by Year, Season, Crop, and Location**.

---

### 🌧️ Rainfall Analysis
**Insights:**
- Rainfall remains relatively consistent across years with minor fluctuations.
- **Rabi and Kharif seasons** receive higher rainfall than Zaid.
- **Paddy and Arecanut** are associated with higher rainfall requirements.
- Locations such as **Bangalore and Raichur** show comparatively higher rainfall.

**Value:**  
Supports irrigation planning and rainfall-dependent crop selection.

---

### 🌡️ Temperature Analysis
**Insights:**
- Moderate year-on-year temperature variation without extreme volatility.
- **Kharif and Zaid seasons** show higher average temperatures.
- **Ginger and Tea** are linked to higher temperature conditions.
- **Bangalore and Davangere** record higher average temperatures than coastal regions.

**Value:**  
Helps align crop planning with temperature suitability.

---

### 💧 Humidity Analysis
**Insights:**
- Humidity levels are high and stable across years.
- Minimal variation across seasons.
- **Cotton and Pepper** show slightly higher humidity association.
- **Davangere and Raichur** record marginally higher humidity levels.

**Value:**  
Useful for pest control planning and crop disease prevention.

---

### 🌾 Yield Analysis
**Insights:**
- Crop yield remains largely stable across years.
- **Rabi season** shows slightly higher average yields.
- **Cotton, Pepper, and Blackgram** emerge as higher-yielding crops.
- **Davangere and Raichur** show stronger yield performance.

**Value:**  
Identifies high-performing crops and regions for productivity optimization.

---

## 📌 Key Takeaways
- Built a complete **cloud-to-dashboard analytics pipeline**
- Performed SQL-based transformations in **Snowflake**
- Integrated Snowflake directly with **Power BI**
- Delivered multi-dimensional insights across climate and yield factors
- Demonstrated real-world **data analyst & BI workflow**

---

## 🚀 How to Use This Project
1. Upload `data_season.csv` to AWS S3  
2. Connect Snowflake to S3 and execute `SnowflakeWorksheet.sql`  
3. Open the `.pbix` file in Power BI  
4. Refresh data to explore insights  

---

## 👤 Author
**Ayush Singh**  
Aspiring Data Analyst | Cloud & Business Intelligence Enthusiast  

---

⭐ *If you found this project insightful, feel free to star the repository!*

