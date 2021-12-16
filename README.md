# Items Api

This is the Api repo for the Items app. It should be run in conjunction with the **items-client** repo.

## Up and running

To get the app up and running, pull down this repo and run the following commands in your terminal:

- `rails db:create db:migrate db:seed`
- `rails s --port 5000`

### Notes

This Api uses Postgres, so please have that running in the background as well.

If you'd like to use GraphiQL go to: `http://localhost:5000/graphiql`

## Objective

- show a list of items
- have name be the sole attribute on the item
- show a way to create an item

### Follow-up

When pairing later on this app, the acceptance criteria changed to include:

- this Item app needs to be able to return different types
  - drinks
  - tacos
  - sides

My response was to add an Item Type Enum to Items. This would help classify each Item by their Type.
