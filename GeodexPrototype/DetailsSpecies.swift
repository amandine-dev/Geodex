import SwiftUI
struct DetailsSpecies:  View {
    
    var species: Species
    var body: some View {

        NavigationView {
            ScrollView(.vertical) {

            VStack(spacing: 12.0) {
                VStack (alignment: .center, spacing: 11){
                    Image(species.picture)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(8)
                    VStack(alignment: .leading) {
                        
                        HStack {
                            Text(species.name)
                                .font(.title)
                                .font(.largeTitle)
                            Spacer()
                            
                            isPinFavoriteBtn()
                            isSharedBtn()

                        }
                        HStack {
                            Text(species.latinName)
                                .font(.system(size: 20))
                                .foregroundColor(.gray)
                                .italic()
                        }
                        HStack{
                            
                            PictoReglementation(isProtected: species.isProtected, isReglemented: species.isReglemented, isThreatened: species.isThreatened)
                        }
                    }
                }
                VStack(spacing: 0.0) {
                    Text("Description")
                        .font(.headline)
                    Spacer().frame(height:10)
                    
                    Text(species.description)
                        .font(.subheadline)
                    
                }
                
                VStack(spacing: 0.0) {
                    Text("Ecosystème")
                        .font(.headline)
                    Spacer().frame(height:10)
                    
                    Text(species.biology)
                        .font(.subheadline)
                }
            }
            .padding()
            .navigationBarTitle("Fiche GéoDex", displayMode: .inline)
        }
}
    }
}

struct DetailsSpecies_Previews: PreviewProvider {
    static var previews: some View {
        DetailsSpecies(species: allSpecies[10])
    }
}
