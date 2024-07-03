import SwiftUI

struct OnboardingView: View {
    var body: some View {
        
        // Slide 1
        NavigationView {
            VStack {
                Image("Logo")
                NavigationLink(destination: ContentView()){
                    Image("Arrow").buttonStyle(PlainButtonStyle())
                   
                    
                    //                Text("Click the image to go to another page")
                    //                    .font(.headline)
                    //                    .padding()
                }
                
            }
        }.navigationTitle("Main Page")
        
    }
}
            

struct ContentViews: View {
    var body: some View {
//        OnboardingView()
        ContentView()
    }
}

struct ContentViews_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
