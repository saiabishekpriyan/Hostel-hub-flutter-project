# StudentHub – Hostel Issue Tracker

> **Kalvium KS Concept-3: Design Thinking for Smart Mobile Interfaces Using Figma & Flutter**  
> Level: Beginner | Tech: Figma + Flutter
---


## 1. Design Thinking – 5 Stages

**Empathize:**  
Talked to hostel students, wardens, and staff. Pain points: slow manual reporting, no status updates, confusion.

**Define:**  
Students need a fast, clear way to report hostel issues and track updates. Staff need to manage complaints easily.

**Ideate:**  
Planned four screens: Login, Dashboard/Home, Issue Reporting Form, Issue List & Status. Focused on simple navigation and clear forms.

**Prototype (Figma):**  
Designed wireframes for each screen in Figma using rectangles, text, icons, and Auto Layout for flexible forms/lists.

**Test (Flutter):**  
Built the UI in Flutter, checked if it matched Figma, and tested on different devices for feedback.

---


## 2. Figma Design Decisions

- **Screens:** Login, Dashboard/Home, Issue Reporting Form, Issue List & Status.
- **Color Palette:**
  - Primary: #1976D2 (Blue)
  - Secondary: #FFC107 (Amber)
  - Background: #F5F5F5 (Light Grey)
  - Error: #D32F2F (Red)
  - Success: #388E3C (Green)
- **Typography:**
  - Headings: Bold, 20–24px
  - Body: Regular, 14–16px
  - Button: Medium, 16px
- **Auto Layout:** Used for forms and lists to keep spacing even and make screens responsive.

---


## 3. Figma → Flutter Widget Mapping

| Figma Element      | Flutter Widget         |
|--------------------|-----------------------|
| Text               | Text                  |
| Button             | ElevatedButton        |
| Input Field        | TextField             |
| Card/List          | Card, ListView        |
| Layout/Spacing     | Column, Row, Padding, SizedBox |

---


## 4. Flutter Code Evidence (LayoutBuilder Example)

```dart
body: LayoutBuilder(
  builder: (context, constraints) {
    if (constraints.maxWidth > 600) {
      // Tablet: Row with issue list and details
      return Row(
        children: [
          Expanded(child: _buildIssueList()),
          Expanded(
            child: Center(
              child: Text('Select an issue to see details'),
            ),
          ),
        ],
      );
    } else {
      // Mobile: Only issue list
      return _buildIssueList();
    }
  },
)
```
- `LayoutBuilder` checks screen width.
- `Expanded` fills available space.
- Responsive UI adapts for mobile and tablet.

---


## 5. Concept-3 Implementation Proof (Kalvium Requirement)

- **Flutter UI file:** `flutter_learning/lib/concept3_ui.dart`
- **Responsiveness:** Achieved using `LayoutBuilder`.
- **Mobile (≤600px):** Single-column layout (only issue list).
- **Tablet (>600px):** Two-column layout using `Row` and `Expanded` (issue list + details).
- **No fixed pixel sizes:** All layouts use flexible widgets for adaptability.

---

## 6. Kalvium Concept-3 Question Answer

> **How did you translate your Figma prototype into a functional Flutter UI while maintaining visual consistency, responsiveness, and usability across different devices?**

I designed clear, simple screens in Figma with Auto Layout. Each Figma element was mapped to a Flutter widget (like Text, Card, ElevatedButton). I used LayoutBuilder and Expanded in Flutter to make the UI responsive: on tablets, the app shows a two-column layout; on mobiles, it shows a single column. This keeps the UI consistent, responsive, and easy to use everywhere.

---

## 7. File Reference

- Main Flutter UI file: `flutter_learning/lib/concept3_ui.dart`

---

## License

MIT License
