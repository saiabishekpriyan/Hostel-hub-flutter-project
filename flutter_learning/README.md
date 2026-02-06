# StudentHub – Hostel Issue Tracker

> **Concept-3: Design Thinking for Smart Mobile Interfaces Using Figma & Flutter**
> _Kalvium KS Project – Beginner Level_

---

## Project Overview

**StudentHub** is a simple mobile app for hostel students to easily report mess, maintenance, or facility issues, and track their status. It is designed using Figma and built with Flutter, following the 5 stages of Design Thinking.

---

## Problem Statement

> “College hostel residents face delays when reporting mess issues, maintenance requests, or facility complaints due to outdated manual systems.”

---

## Design Thinking Approach

### 1. Empathize
- **Who?** Hostel students, wardens, and staff.
- **Pain Points:**
  - Slow, manual complaint process
  - No clear status updates
  - Confusion and delays

**Why it matters:**
Understanding real user problems helps us design an app that truly solves their needs.

### 2. Define
- **UI Problem:**
  - Students need a fast, clear way to report issues and see updates.
  - Staff need to view and manage complaints easily.

**Why it matters:**
Focusing on the exact problem keeps the app simple and useful.

### 3. Ideate
- **Screen Ideas:**
  - Login
  - Dashboard/Home
  - Issue Reporting Form
  - Issue List & Status
- **Layout Brainstorm:**
  - Easy navigation
  - Clear buttons and forms

**Why it matters:**
Brainstorming helps find the best way to organize screens and features.

### 4. Prototype
- **Figma Wireframes:**
  - Draw each screen (boxes for buttons, fields, etc.)
  - Arrange UI components (cards, nav bar, etc.)

**Why it matters:**
Prototyping lets us see and improve the app’s flow before coding.

### 5. Test
- **Flutter UI:**
  - Build screens in Flutter
  - Check if design matches Figma
  - Get feedback and refine

**Why it matters:**
Testing ensures the app works well and looks good for all users.

---

## Figma Design (Step-by-Step)

### Screens to Design
- **Login Screen:**
  - App logo, input fields (email, password), login button
- **Dashboard/Home:**
  - Welcome message, quick links to report/view issues
- **Issue Reporting Form:**
  - Dropdown (issue type), text field (description), submit button
- **Issue List & Status:**
  - List of reported issues, status badges (open, in progress, resolved)

### UI Components
- **Buttons:** For actions (login, submit, etc.)
- **Cards:** To display each issue
- **Icons:** For issue types (mess, maintenance, etc.)
- **Input Fields:** For user data
- **Navigation Bar:** For moving between screens

### Color Palette
- **Primary:** #1976D2 (Blue)
- **Secondary:** #FFC107 (Amber)
- **Background:** #F5F5F5 (Light Grey)
- **Error:** #D32F2F (Red)
- **Success:** #388E3C (Green)

### Typography
- **Headings:** Bold, 20–24px
- **Body Text:** Regular, 14–16px
- **Button Text:** Medium, 16px

### Spacing & Alignment
- Use even padding (16px)
- Align items left for text, center for buttons

### Figma Auto Layout
- Use Auto Layout for forms and lists so they resize on different screens

### Accessibility
- Font size at least 14px
- High contrast (dark text on light background)
- Clear labels for all fields

**Design Decisions:**
Simple colors, big buttons, and clear text make the app easy for everyone.

---

## Translating Figma to Flutter UI

### Main Flutter Widgets Used

- **Scaffold:** Basic app structure (screen, AppBar, body)
- **AppBar:** Top bar with title
- **Column/Row/Stack:** Arrange widgets vertically, horizontally, or layered
- **Expanded/Flexible:** Make widgets resize to fit screen
- **Card/Container:** For grouping and styling content
- **Text/TextField:** Show text or get user input
- **Buttons:**
  - ElevatedButton (main actions)
  - TextButton (secondary actions)
  - IconButton (icon-only actions)

### Example: Login Screen UI

```dart
Scaffold(
  appBar: AppBar(title: Text('StudentHub Login')),
  body: Padding(
    padding: EdgeInsets.all(16),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Welcome!', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        SizedBox(height: 24),
        TextField(decoration: InputDecoration(labelText: 'Email')),
        SizedBox(height: 16),
        TextField(decoration: InputDecoration(labelText: 'Password'), obscureText: true),
        SizedBox(height: 24),
        ElevatedButton(onPressed: () {}, child: Text('Login')),
      ],
    ),
  ),
)
```

**Widget Roles:**
- `Scaffold`: Main screen structure
- `AppBar`: Top title bar
- `Column`: Arrange items vertically
- `TextField`: Input fields
- `ElevatedButton`: Main action button

---

## Responsive & Adaptive Design

### How the App Works on All Devices
- **Small Phones:** UI stacks vertically, buttons fill width
- **Large Phones/Tablets:** More space, cards and lists expand
- **Portrait/Landscape:** Layout adjusts using Flutter widgets

### Key Flutter Tools
- **MediaQuery:** Get screen size, adjust padding/font size
- **LayoutBuilder:** Change layout based on available space
- **Flexible/Expanded:** Widgets grow/shrink as needed
- **OrientationBuilder:** Detect portrait/landscape
- **Platform Awareness:** Use `Theme.of(context).platform` for Android/iOS tweaks

### Responsive vs Adaptive
- **Responsive Design:** UI changes smoothly for any screen size (e.g., buttons stretch)
- **Adaptive Design:** UI switches to different layouts for certain devices (e.g., tablet gets a sidebar)

**Example:**

```dart
LayoutBuilder(
  builder: (context, constraints) {
    if (constraints.maxWidth > 600) {
      // Tablet: show list and details side by side
      return Row(
        children: [Expanded(child: IssueList()), Expanded(child: IssueDetails())],
      );
    } else {
      // Phone: show list only
      return IssueList();
    }
  },
)
```

---

## Figma vs Flutter Comparison

- **What stayed the same:**
  - Colors, fonts, icons, and layout structure
- **What changed:**
  - Some spacing and button sizes adjusted for better usability
- **Why changes:**
  - To fit different screens and make the app easier to use
- **How Flutter helped:**
  - Widgets like `Flexible`, `Expanded`, and `MediaQuery` kept the design consistent
- **Responsiveness:**
  - Improved usability for all devices

---

## Case Study: “The App That Looked Perfect, But Only on One Phone”

At first, my hostel app looked great on my phone. But when a friend tried it on a tablet, the buttons were tiny and the text was hard to read. The layout broke on landscape mode. This happened because I used fixed sizes and didn’t test on other devices.

**How I fixed it:**
- Used `Flexible` and `Expanded` instead of fixed widths
- Switched to `MediaQuery` and `LayoutBuilder` for dynamic sizing
- Checked my Figma design with Auto Layout and tested on different frames

**Lesson learned:**
Always design and code for all screen sizes, not just your own phone!

---

## Reflection on Design Decisions

- Kept UI simple and clear for beginners
- Used high-contrast colors and big buttons for accessibility
- Followed Figma wireframes closely, but improved spacing in Flutter for better usability
- Made sure the app works on all devices

---

## Translating Figma to Flutter: My Answer

> “I translated my Figma prototype into a functional Flutter UI by first designing clear, simple screens in Figma with Auto Layout. Then, I used Flutter widgets like Scaffold, Column, and Flexible to match the design. I checked my app on different devices using MediaQuery and LayoutBuilder, making sure it stayed consistent, responsive, and easy to use everywhere.”

---

## Screenshots

> _Add your Figma and Flutter screenshots here_

---

## Project Structure

```
flutter_learning/
├── docs/
│   └── ...
├── lib/
│   └── ...
└── README.md
```

---

## Requirements
- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- [Dart SDK](https://dart.dev/get-dart)

---

## License
MIT License
