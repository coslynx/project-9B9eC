import SwiftUI

struct PreviewFeature: View {
    
    @State private var projectPreview: Project
    
    var body: some View {
        VStack {
            Text("Project Preview")
                .font(.title)
                .padding()
            
            // Display project details here
            Text("Project Name: \(projectPreview.name)")
            Text("Project Description: \(projectPreview.description)")
            // Add more project details as needed
            
            Spacer()
        }
    }
}

struct PreviewFeature_Previews: PreviewProvider {
    static var previews: some View {
        PreviewFeature(projectPreview: Project(name: "Sample Project", description: "This is a sample project"))
    }
}