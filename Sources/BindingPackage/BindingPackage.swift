import SwiftUI
public struct BindingPackage {
    public private(set) var text = "Hello, World!"
    
    @available(iOS 15.0, *)
    public struct MarkdownView: View {
        @State var stateText: String
        @Binding var bindingText: String
        
        public init(stateText: String, bindingText: Binding<String>) {
            self.stateText = stateText
            self._bindingText = bindingText
        }
        public var body: some View {
            VStack {
                Text(stateText)
                TextField("", text: $bindingText)
            }
            .padding()
        }
    }
}
