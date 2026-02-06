# Responsive & Adaptive Design in HostelHub

## Why Responsive Design?
- Fixed pixel designs break on different devices (buttons too small, text cut off).
- Responsive design makes HostelHub usable on all phones and tablets.

## How HostelHub Adapts
- **MediaQuery:** Gets screen size, adjusts padding/font size.
- **Flexible/Expanded:** Widgets grow/shrink to fit space.
- **LayoutBuilder:** Changes layout for tablets vs phones.

## Example: Responsive Row
```dart
Row(
  children: [
    Expanded(child: Text('Issue Title')),
    Flexible(child: Text('Status')),
  ],
)
```

## Example: LayoutBuilder
```dart
LayoutBuilder(
  builder: (context, constraints) {
    if (constraints.maxWidth > 600) {
      return Row(
        children: [Expanded(child: IssueList()), Expanded(child: IssueDetails())],
      );
    } else {
      return IssueList();
    }
  },
)
```

**Responsive design keeps HostelHub clear and usable everywhere.**
