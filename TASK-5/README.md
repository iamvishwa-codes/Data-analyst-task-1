# Titanic Dataset Exploratory Data Analysis (EDA) 🛳️

This project involves **Exploratory Data Analysis (EDA)** on the Titanic dataset to uncover patterns, trends, and relationships among features, especially those affecting passenger survival.

---

## 📌 Objective

- Perform **data exploration** using Python (Pandas, Matplotlib, Seaborn).  
- Understand **numerical and categorical features**.  
- Identify **trends, correlations, outliers, and anomalies**.  
- Summarize insights for decision-making or predictive modeling.

---

## 🛠 Tools & Libraries Used

- Python 3.x
- Pandas
- Matplotlib
- Seaborn
- Jupyter Notebook / VS Code

---

## 📂 Dataset

- Source: [Titanic Dataset by Data Science Dojo](https://github.com/datasciencedojo/datasets/raw/master/titanic.csv)  
- Contains 891 rows and 12 columns including passenger demographics, ticket info, and survival outcome.  

### Columns:

| Column       | Description                              |
|-------------|------------------------------------------|
| PassengerId | Unique ID of passenger                   |
| Survived    | Survival (0 = No, 1 = Yes)              |
| Pclass      | Passenger class (1, 2, 3)               |
| Name        | Name of passenger                        |
| Sex         | Gender                                   |
| Age         | Age in years                             |
| SibSp       | Number of siblings/spouses aboard        |
| Parch       | Number of parents/children aboard        |
| Ticket      | Ticket number                            |
| Fare        | Ticket fare                              |
| Cabin       | Cabin number                             |
| Embarked    | Port of Embarkation (C, Q, S)           |

---

## 🔹 Steps Performed

### 1️⃣ Step 1 – Load & Preview Data
- Loaded dataset with Pandas
- Previewed first 5 rows
- Checked dataset shape and columns

### 2️⃣ Step 2 – Dataset Summary
- Used `.info()` and `.describe()` for data types and statistics
- Checked missing values:
  - Age, Cabin, Embarked had missing entries
- Target variable: `Survived`

### 3️⃣ Step 3 – Univariate Analysis
- **Numerical features**: `Age` and `Fare`
  - Plotted histograms & boxplots
  - Observed skewed distributions and outliers
- **Categorical features**: `Survived`, `Sex`, `Pclass`, `Embarked`
  - Countplots to understand distributions
  - Observed class imbalance in survival

### 4️⃣ Step 4 – Bivariate Analysis
- Survival vs Gender → Females survived more  
- Survival vs Pclass → 1st class survived more  
- Age vs Survival → Children & young adults had slightly higher survival  
- Fare vs Survival → Higher fare positively correlated with survival  
- Embarked vs Survival → Cherbourg passengers survived more  
- Heatmap to visualize correlations

### 5️⃣ Step 5 – Multivariate Analysis
- Pairplot of `Survived`, `Age`, `Fare`, `Pclass`  
- Explored multi-feature relationships

---

## 📊 Key Insights

- **Gender** strongly influences survival: females survived more than males  
- **Passenger class** matters: higher classes survived more  
- **Fare** positively correlates with survival  
- **Age** has moderate impact; children slightly favored  
- **Embarkation port** shows minor influence  
- Features like `SibSp` and `Parch` have weak impact on survival  

---

## 📂 Deliverables

- Jupyter Notebook: `Titanic_EDA.ipynb`  
- Python Script: `data.py`  
- Visualizations: Included in notebook and script outputs  

---

## 🧠 Learning Outcome

- Gained skill in **data exploration, visualization, and insight extraction**  
- Learned to identify **patterns, anomalies, and relationships** in real-world datasets  
- Improved **Python, Pandas, Matplotlib, and Seaborn skills**  

---

## 🔗 Dataset Link

- [Download Titanic Dataset (CSV)](https://github.com/datasciencedojo/datasets/raw/master/titanic.csv)  

---

## ⚡ Author

**Vishwa K** – Data Analyst Intern  
LinkedIn: [linkedin.com/in/VISHWA-K003/]  


