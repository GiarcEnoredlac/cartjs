# Export the CartJS module.
# -------------------------

# CartJS module factory.
CartJS.factory = (exports) ->
  # Exposes the full CartJS namespace. This is mainly used for isolated testing.
  exports._ = CartJS

  # Export initialisation and configuration.
  exports.init = CartJS.init
  exports.configure = CartJS.configure
  exports.settings = CartJS.settings

  # Export core API as top-level methods.
  exports.getCart = CartJS.Core.getCart
  exports.addItem = CartJS.Core.addItem
  exports.updateItem = CartJS.Core.updateItem
  exports.updateItemById = CartJS.Core.updateItemById
  exports.removeItem = CartJS.Core.removeItem
  exports.removeAll = CartJS.Core.removeAll
  exports.clear = CartJS.Core.clear
  exports.getAttribute = CartJS.Core.getAttribute
  exports.setAttribute = CartJS.Core.setAttribute
  exports.getAttributes = CartJS.Core.getAttributes
  exports.setAttributes = CartJS.Core.setAttributes
  exports.clearAttributes = CartJS.Core.clearAttributes
  exports.getNote = CartJS.Core.getNote
  exports.setNote = CartJS.Core.setNote

  # Export Cart and Item classes so they can be extended.
  exports.Cart = CartJS.Cart
  exports.Item = CartJS.Item

# Exports CartJS for CommonJS, AMD and the browser.
if typeof exports == 'object'
  CartJS.factory(exports)
else if typeof define == 'function' && define.amd
  define ['exports'], (exports) ->
    CartJS.factory(@CartJS = exports)
    return exports
else
  CartJS.factory(@CartJS = {})