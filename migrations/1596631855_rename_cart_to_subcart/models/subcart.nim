import options
import times

import norm/model

import customer, item


type
  Subcart* = ref object of Model
    customer*: Customer
    item*: Item
    qty*: Positive
    purchasedAt*: Option[DateTime]

func newSubcart*(customer: Customer, item: Item, qty: Positive, purchasedAt: Option[DateTime]): Subcart =
  Subcart(customer: customer, item: item, qty: qty, purchasedAt: purchasedAt)

func newSubcart*(customer: Customer, item: Item, qty: Positive): Subcart =
  newSubcart(customer, item, qty, none DateTime)

func newSubcart*(customer: Customer, item: Item): Subcart =
  newSubcart(customer, item, 1)

func newSubcart*: Subcart =
  newSubcart(newCustomer(), newItem())
