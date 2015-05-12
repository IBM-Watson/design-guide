# Watson Design Library Changelog

## v1.0.0-rc.1
*May 7, 2015*

**New**

* Add JavaScript config for rendering the site's JavaScript
* Add Apache 2.0 and CC-BY licenses! All source code is licensed under the Apache 2.0 license, documentation and assets under the CC-BY license
* Add Bottom (previous/next) Nav
* Add Resource panel to Layout template
* Add Styling for header, sidebar, footer, bottom nav, and basic layout
* Add Performance guidelines
* Add Base and Components section, with pattern links
* Add icon font
* Add resource panel

**Changes**

* Move `_base.scss`, `_components.scss`, `_layouts.scss`, and `_core.scss` to `_index.scss` to better align with Node importing
* Rename `crick.scss` to `_watson-patterns.scss` to distribute as a partial and align name
* Add `library` Sass file and folder
* Update colors to current standards
* Add sub-content templates to Offer Control
* Fix a typo on Offer Control
* Remove resources template from Accessibility
* Add subcontent templates to typography guidelines
* Change detail to large example
* Update subcontent templates
* Fix bugs in Subcontent Template ([#255](https://github.com/IBM-Watson/design-library/issues/255))
* Change some details to examples in grids guidelines
* Add sub-content templates to grids guidelines
* Change detail to example
* Update subcontent templates
* Update front matter for responsiveGridVideo
* Add sub-content templates to color guidelines
* Update variables in sub-content templates
* Remove resources template and update front matter
* Add sub-content templates to Introduce Cognitive
* Add sub-content templates to Inform Interactions
* Clean lots of small details
* Update base styling
* Order sections correctly
* Update Accessibility visual example

## v1.0.0-beta.3
*April 28, 2015*

**New**

* :memo: Add the CHANGELOG
* Add `aside`, `detail`, `example`, and `quote` [sub-content](https://github.com/IBM-Watson/design-library/wiki/Content-Models#secondary-content-types) templates (`color` existed previously, `media` is a view of `example` and `detail`)
* :memo: Update to Accessibility guidelines
* :memo: Update to Branding guidelines
* :memo: Add Design principles
* :memo: Add Grid guidelines
* :memo: Add Style guidelines
* :green_heart: Add Travis CI integration
* Add CNAME record

**Changes**

* :memo: Update the Contributing guidelines
* Update `layout` template to use new navigation variables
* :fire: Delete outdated color Wordmark and Logotype SVGs
* :art: Replace updated color Wordmark and Logotype SVGs
