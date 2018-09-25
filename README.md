# README

E-commerce site. Uses `bcrypt` and `materialize`. There's a seed file. Set up your own admin.

To set up:

* clone the repo
* `bundle install`
* `rails db:setup`

## Additional Refactoring Goals:
1. Add flash messages for signing up, signing in and signing out.
1. Add admin links to navbar so admins can easily add, update and delete products.
1. Add product update and delete functionality for admins.
1. Add admin flash messages for adding, updating and deleting products.

* Add product validations.

* Ensure that users can't order a negative number of items.
* Allow other than whole dollar amounts for admin product creation (for instance, 3.99).
* Add Stripe so users can pay when finalizing orders.
* Add password validations to ensure a user's password is sufficiently complex.
* Fix the row height for products, which can quickly become uneven.
* Add integration testing for AJAX functionality.
* Add further AJAX functionality where it might be useful.

## AJAX Features
* Users should be able to click on a product and show/hide the product detail using AJAX. The product detail should include an image, the description, and any other fields you choose to add.
* Users should be able to add products to their shopping cart from the index page with AJAX. The item should be added to the shopping cart and the number of items in the cart (shown in the navbar) should update.
* Users should be able to remove items from the shopping cart without a page reload. The "delete" link should result in the item being removed from the shopping cart and the total price being updated.
