


# 📊 Dear Data Diary

An interactive **visual diary** inspired by the *Dear Data* project. This application provides a unique way to explore personal weekly data (e.g., activities, travel, expenses) for **Monday to Friday**. Users can navigate between weeks and days, visually compare their data, and gain insights into their routines. 
This was done for a school assignment for our *Creative Coding* Module. The aim for me was to explore how the first weeks of September, October and November differed.

---

## 📝 **Overview**

The **Dear Data Diary** is built with **Processing**, using an intuitive and modular design to represent activities and metrics with custom-designed icons. The project consists of:
- **Static Mode**: A legend screen displaying example icons and explanatory text.
- **Interactive Mode**: Allows users to navigate between weeks and days to explore detailed data dynamically.

---

## 🌟 **Features**

### 1. **Two Modes**
- **Static Mode**:
  - Displays a legend with example icons and their explanations.
  - Includes a summary of the project's purpose and a toggle option to switch to interactive mode.
- **Interactive Mode**:
  - Allows exploration of weekly data:
    - **Days (Monday to Friday)**: Navigate between days using the `LEFT` and `RIGHT` arrow keys.
    - **Weeks**: Navigate between weeks using the `'n'` (next week) and `'p'` (previous week) keys.
  - Displays day-specific data (e.g., steps, travel, lectures).

---

### 2. **Custom Icons**
Each activity or metric is represented visually using custom-designed icons:
- **LectureIcon**: A teacher and board.
- **TutorialIcon**: A tutorial session with multiple students.
- **StepsIcon**: Steps walked, represented by ovals (big = 5,000 steps, small = 2,500 steps).
- **CostIcon**: Visualises £1 coins and £5 banknotes.
- **BusIcon** and **TrainIcon**: Represent travel modes with durations.
- **LatenessIcon**: A red box indicating lateness.
- **TableTennisIcon** and **HockeyIcon**: Represent sports activities.

---

### 3. **Modular Data Structure**
The program uses a **nested class structure** for weeks and days:
- **`Week` Class**: Represents a single week with a label (e.g., "Week 1 of September").
- **`Day` Class**: Represents a single day with a label (e.g., "Sep Day 1") and its associated icons.

This design makes it easy to add new weeks, days, or activities dynamically using Java OOP.

---

### 4. **Interactive Navigation**
- **Static Mode**:
  - Click `'m'` to switch to **Interactive Mode**.
- **Interactive Mode**:
  - **Switch Days**: Use `LEFT` and `RIGHT` arrow keys.
  - **Switch Weeks**: Use `'n'` for the next week and `'p'` for the previous week.
  - **Return to Static Mode**: Press `'m'` again.

---

## 📋 **Workflow**

1. **Static Mode**:
   - Start on the legend screen with example icons and explanations.
   - Displays the purpose of the project and introduces interactivity options.

2. **Interactive Mode**:
   - Navigate between weeks (e.g., September, October, November) using `'n'` and `'p'`.
   - Explore data for Monday to Friday of each week using `LEFT` and `RIGHT`.

---

## 📊 **Example Data**

### Week 1 of September:
| Day        | Activities                           |
|------------|--------------------------------------|
| **Monday** | Lecture, Tutorial, 20,650 Steps, Bus, Train, Lateness |
| **Tuesday**| Lecture, Tutorial, 20,650 Steps, Banknotes (£1 and £5) |
| **Wednesday**| Incomplete---TBD                  |
| **Thursday**| Incomplete---TBD                   |
| **Friday**  | Incomplete---TBD                   |

---

## 🛠️ **Technical Details**

### **Built With**
- **Processing**: A Java-based framework for creative visualisations.

### **Data Representation**
- Weeks are stored in a **nested structure**:
  ```java
  ArrayList<ArrayList<ArrayList<Icon>>> weeks;
  ```
  - **Outer ArrayList**: Represents weeks.
  - **Inner ArrayList**: Represents days (Monday to Friday).
  - **Innermost ArrayList**: Icons for activities on that day.

### **Interactivity**
- `keyPressed()` and `mousePressed()` are used for navigation between weeks and days.

---

## 🔮 **Future Enhancements**

1. **Complete Data Population**:
   - Finish adding collected data.
2. **Enhanced UI/UX**:
   - Introduce separators or grid backgrounds for day divisions.
   - Add animations for smoother transitions between weeks or days.
3. **Tooltips**:
   - Implement hover functionality to display additional information about icons.
4. **Data Import/Export**:
   - Add the ability to load weekly data from JSON or CSV files and save it dynamically.

---

## 🚀 **How to Run**

1. Install [Processing](https://processing.org/).
2. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/dear-data-diary.git
   ```
3. Open the `DearDataDiary.pde` file in Processing.
4. Run the sketch to explore the visual diary.

---

## 👀 **Preview**

### Static Mode (Legend)
<img src="static-mode-preview.png" alt="Static Mode Preview" width="600">

### Interactive Mode (Weekly Data)
<img src="interactive-mode-preview.png" alt="Interactive Mode Preview" width="600">

---

## 🤝 **Contributing**

Feel free to fork this repository, make your changes, and display it on your github with your own data.

---

## 📜 **License**

This project is licensed under the [MIT License](LICENSE).

---

Let me know if you'd like more information about this.
