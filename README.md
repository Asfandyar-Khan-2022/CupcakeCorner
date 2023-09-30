# CupcakeCorner
The app allows the user to select the number of cupcakes they would like 
and place an order for them. The user can select the quantity of items 
they would like to purchase and also customize their order. Once the
user is satisfied. They move onto the next screen. Where they enter
their delivery details. After which the user can confirm their order.

## Code structure
- The app has three files for the view and a order file with an order class

### File - Order.swift
- The order class allows for persistent data between views
- The class also encodes and decodes data from and to JSON
- The class has a whiteSpace method used to ensure empty forms are not submitted

### File - ContentView.swift
- ContentView struct property uses @StateObject to instantiate Order class
- ContentView struct has a NavigationView with a Form
- The Form has three sections
- One of the sections has a NavigationLink

### File - AddressView.swift
- The file has an @ObservedObject property. Used to modify Order class instance
- Body has a Form with two sections
- one of the Section has a NavigationLink

### File - CheckoutView.swift
- The file has an @ObservedObject property. Used to modify Order class instance
- It also has some @State properties
- The body has a ScrollView with a VStack
- The stack has an AsyncImage view. Used to display cupcake image
- The struct also has a async placeOrder method
- The method makes a POST API request

# App demo - Home Screen
<p align="center">
  <img src="https://github.com/Asfandyar-Khan-2022/CupcakeCorner/assets/117299102/dacbef21-6c82-429a-b80e-cf74a08d197f" width=25% height=25%>
</p>

# App demo - Delivery detail
<p align="center">
  <img src="https://github.com/Asfandyar-Khan-2022/CupcakeCorner/assets/117299102/6c781d72-e4b5-484a-8bc1-1adeacf737c7" width=25% height=25%>
</p>

# App demo - Checkout view
<p align="center">
  <img src="https://github.com/Asfandyar-Khan-2022/CupcakeCorner/assets/117299102/370a6f10-ab8a-427d-8bb5-54ba6d1e637a" width=25% height=25%>
</p>

# App demo - Order placed
<p align="center">
  <img src="https://github.com/Asfandyar-Khan-2022/CupcakeCorner/assets/117299102/3ba38cc3-6249-48e1-887c-e7069863b96b" width=25% height=25%>
</p>

# App demo - Network error
<p align="center">
  <img src="https://github.com/Asfandyar-Khan-2022/CupcakeCorner/assets/117299102/5c67d3c4-725d-43ec-ab31-df36752f9e0e" width=25% height=25%>
</p>

