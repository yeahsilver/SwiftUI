# SwiftUI
## Creating and Combining Views
### Create a New Project and Explore the Canvas
- @main: app's entry point

- By default value, **two** structures are declared in Swift UIView
  - First Strcture: conform to the *View* protocol and describe view content & layout
  - Second Structure: declares a preview for that view
  
  </br>

### Customize the Text View
- Edit code to change padding and text color
  ```swift
  Text("Turtle Rock")
    .font(.title)
    .foregroundColor(.green)
  ```
- How to open SwiftUI Inspector: `command + click`

</br>

### Combine Views Using Stacks
- The reason of view returning only a ***single view***, we can combine and embed multiple views in ***stacks*** which group views together horizontally, vertically, or back-to-front


- Use of Vertical Stack: `Embed in VStack`
  > By default, stacks center their contents along their axis and provide context-appropriate spacing, so we can edit the VStack to align views by their leading edges
  ```swift
    VStack(alignment: .leading){
      Text("Turtle Rock")
        .font(.title)
    }
  ```
  
- Use of Horizontal Stack: `Embed in HStack`
  ```swift
  Hstack {
     Text("Joshua Tree National Park")
      .font(.subheadline)
     Text("California")
      .font(.subheadline)
  }
  ```

- Full width of the device, separate the elements -> Using `Spacer()`
  > A *spacer* expands to make its containing view use all of the space of its parent view, instead of having its size defined only by its contents.
  
-  To give a little more space, we can use `.padding` at the end of stack

### Create a Custom Image View
- To place images on the device, we can use `Image(_:` modifier
- To clip shape cirle, we can call to clipShape(Circle())
- Create a circle with a gray stroke, and then add it as an overlay to give image border.
  ```swift
  Image("turtlerock")
    .clipShape(Circle())
    .overlay(Circle().stroke(Color.gray, lineWidth: 4))
  ```

### Use SwiftUI Views From other Frameworks
- Add an import statement for Mapkit
  ```swift
  import MapKit
  ```

- Create a private state variable that holds the regin information for the map
  > You use *@State* attribute to establish a source of truth for data in your app that you can modify from more than on view
  ```swift
  @State private var region = MKCoordinateRegion(
    center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
    span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
  )
  ```

- Takes a bining to the region
  ```swift
  var body: some View {
    Map(coordinateRegion: $region)
  }
  ```

</br>

### Compse the Detail View
- Add custom MapView to the top of the stack. 
  > Set the size of the MapView with frame(width: height:)
  >
  > Add the CircleImage view to the stack
  ```swift
  var body: some View {
    VStack {
      MapView()
        .ignoreSafeArea(edges: .top)
        .frame(height: 300)
      CircleImage()
        .offset(y: -130)
        .padding(.bottom, 130)
    }
  }
  ```

