---
title: Working with Settings
resources:
  links:
    - name: "Toolkit Settings Helpers"
      source: https://github.com/at-import/toolkit#settings
---

The Watson Design Guide's Pattern Library manages settings through a set of settings mixins, allowing users to work with and manipulate settings global and user settings with ease. The settings mixins being used come from [Toolkit](https://github.com/at-import/toolkit#settings), a dependency of the Pattern Library.

## Setting Up a New Project

Projects should be [set up](/ui-patterns/documentation/getting-started#styling-a-project) so that Toolkit is being imported before the Pattern Library is. Settings will be set between Toolkit being imported and the Pattern Library being imported.

## Determining a Setting to Change

Patterns include a *Settings* section that describes the settings they are using and how those settings are being used. Use the string name of the setting when changing the setting.

## Changing Settings

Settings can be changed using the `setting-set` or `setting-set-multiple` mixins provided by Toolkit. The former sets a single setting while the later sets multiple settings at once. Set all custom settings before importing any part of the Pattern Library.

```scss
// Sets the Primary Color setting to IBM's Blue 60
@include setting-set('primary color', color('blue', 60));

// Sets the Primary Color setting to IBM's Blue 60 and the Secondary Color setting to IBM's Teal 60
@include setting-set-multiple((
  'primary color': color('blue', 60),
  'secondary color': color('teal', 60)
));
```

## Using Settings

The functions `setting-get` or `setting-get-multiple` can be used to get settings for use in custom code. Both mixins will search for the user-defined settings first and, if it cannot find a user-defined setting, falls back to the Pattern Library defined setting. If no setting is found, they will return `null`.

```scss
.foo {
  color: setting-get('primary color'); // #325c80  
}

@debug setting-get-multiple('primary color', 'secodnary color');
// ('primary color': #325c80, 'secondary color': #006d5d)
```

When using settings in custom code (for instance, custom mixins or functions) where user input is also allowed (for instance, buttons or user messaging), it can be useful to test to see if a user has passed in a custom value and, if not, fall back to the value from `setting-get`. Toolkit provides [setting-pick`](https://github.com/at-import/toolkit#setting-pick) functions for just this use case. These should be utilized as needed.
