import SwiftUI

struct ContentView: View {
    @AppStorage("status") var logged = false
    
    var body: some View {
        NavigationView{
            if logged{
                VStack{
                    Text("User Logged In").navigationTitle("Home").navigationBarHidden(false).preferredColorScheme(.light)
                    Button(action:{
                        logged = false
                    }, label:{
                        Text("Logout")
                    })
                }
            }else{
                //Will add code later
               // Text("Login Screen")
                LoginView()
                    .preferredColorScheme(.light)
                    .navigationBarHidden(true)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
