Feature:
Add note

Scenario: Note is added successfully
	Given I Add a new note "This is my note"
	Then the note "This is my note" is added successfully