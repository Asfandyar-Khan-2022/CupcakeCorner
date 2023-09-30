# CupcakeCorner
The app allows the user to select the number of cupcakes they would like 
and place an order for them. The user can select the quantity of items 
they would like to purchase and also customize their order. Once the
user is satisfied. They move onto the next screen. Where they enter
their delivery details. After which the user can confirm their order.

## Code structure
- The app has three files for the view and a order file with an order class.

### File - Order.swift
- The order class allows for persistent data between views
- The class also encodes and decodes data from and to JSON
- The class has a whiteSpace method used to ensure empty forms are not submitted

### File - ContentView.swift
- ContentView struct property uses @StateObject to instantiate order class
- ContentView struct has a NavigationView with a form.
- The form has three sections.
- One of the sections has a NavigationLink

### File - AddressView.swift
- The file has an @ObservedObject property. Used to modify order class instance
- Body has a Form with two sections.
- one of the section has a NavigationLink.

### File - CheckoutView.swift
