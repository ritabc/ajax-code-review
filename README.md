# README

E-commerce site. Uses `bcrypt` and `materialize`. There's a seed file. Set up your own admin.

To set up:

* clone the repo
* `bundle install`
* `rails db:setup`

## Feature Goals:
* Users should be able to click on a product and show/hide the product detail using AJAX. The product detail should include an image, the description, and any other fields you choose to add.

## Features Completed
* Users should be able to add products to their shopping cart from the index page with AJAX. The item should be added to the shopping cart and the number of items in the cart (shown in the navbar) should update.
* Users should be able to remove items from the shopping cart without a page reload. The "delete" link should result in the item being removed from the shopping cart and the total price being updated.
