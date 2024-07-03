import SwiftUI

struct ProjectList: View {
    
    @State private var projects: [Project] = []
    
    var body: some View {
        NavigationView {
            List {
                ForEach(projects, id: \.id) { project in
                    NavigationLink(destination: ProjectDetail(project: project)) {
                        Text(project.name)
                    }
                }
            }
            .navigationTitle("Projects")
            .navigationBarItems(trailing: Button(action: {
                // Add new project logic
            }) {
                Image(systemName: "plus")
            })
        }
    }
}

struct Project: Identifiable {
    var id = UUID()
    var name: String
    var details: String
    var images: [String]
    var videos: [String]
}

extension ProjectList {
    func addProject(_ project: Project) {
        projects.append(project)
    }
    
    func deleteProject(at offsets: IndexSet) {
        projects.remove(atOffsets: offsets)
    }
}