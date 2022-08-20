//
//  ContentView.swift
//  myDiary
//
//  Created by Sedra Asrawi on 20/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    let colors = [ Color("Color1"),Color("Color2"),Color("Color3"),Color("Color4"),Color("Color5"),Color("Color6"),Color("Color7"),Color("Color8")]
    
    @State var Note = ""
    
    @State var selected : Color = .white
    
    var body: some View {
        
        NavigationView{
            ZStack{
                Color.gray.opacity(0.5)
                    .ignoresSafeArea()
                VStack{
                    Text("اختر اللون المفضل")
                        .padding()
                        .font(.headline)
                        
                    ScrollView(.horizontal){
                        
                        HStack {
                            ForEach(colors, id: \.self) {
                                color in
                                
                                Circle()
                                    .fill(color)
                                    .frame(width: 70, height: 70)
                                    .padding(3)
                                    .onTapGesture {
                                        selected = color
                                    }
                                
                                
                                
                            }
                        }
                        
                    }
                    Text("ماذا نريد أن تكتب ؟")
                        .font(.headline)
                        .fontWeight(.heavy)
                        .padding()
                    
                    TextField("اكتب هنا", text: $Note)
                        .frame(width: 300, height: 15, alignment: .leading)
                        .padding()
                        .background()
                        .cornerRadius(20)
                        .padding()
                
                    
                    NavigationLink {
                        NoteView(MyC: selected, MyT: Note)
                    } label: {
                        Text("حفظ")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 200, height: 50)
                            .background(.green)
                            .cornerRadius(15)
                            .shadow(color: .gray, radius: 10, x: 10, y: 5)
                       
                    }

                    
                }
                
            }
            
            .navigationTitle(" دفتر اليوميات 📓 ")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
