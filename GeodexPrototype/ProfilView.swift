import SwiftUI

struct ProfilView: View {
    @State var selectedToggle : Bool = false
    
    var body: some View {
        NavigationView {
            
            ZStack {
                
                VStack{
                    VStack{
                        Spacer().frame(height : 50)
                        Image(systemName: "person.fill")
                            .resizable().frame(width:60, height : 60)
                        Spacer().frame(height:30)
                        HStack{
                            Text(user.firstName)
                            Text(user.lastName)
                            
                        }.font(.title)
                    }
                    Spacer().frame(height : 50)
                    
                    HStack{
                        Image(systemName:"folder.badge.person.crop").font(.largeTitle)
                        Spacer().frame(width : 20)
                        Text("Modifier")
                        Spacer()
                    }.padding()
                    
                    Divider()
                    
                    HStack{
                        Image(systemName:"book").font(.largeTitle)
                        Spacer().frame(width : 20)
                        Text("Options de mon carnet")
                        Spacer()
                    }.padding()
                    
                    Divider()
                    
                    HStack{
                        Image(systemName:"location.fill").font(.largeTitle)
                            .foregroundColor(Color("LightGreen"))
                        Spacer().frame(width:22)
                        Toggle(isOn: $selectedToggle) {
                            Text("Géolocalisation")
                        }
                    }.padding()
                    
                    Divider()
                    
                    HStack{
                        Image(systemName: "square.and.arrow.up").font(.largeTitle)
                            .foregroundColor(Color("Brown"))
                        Spacer().frame(width : 25)
                        Text("Mes Partages")
                        Spacer()
                    }.padding()
                    Spacer().frame(height:60)
                }
            }.navigationBarTitle("Mon Profil Géodex", displayMode: .inline)
            
        }
    }
}

struct ProfilView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilView()
    }
}
