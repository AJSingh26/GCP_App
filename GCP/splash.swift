//
//  ContentView.swift
//  GCP
//
//  Created by urban on 2/28/21.
//

import SwiftUI

let date = Date()
let calendar = Calendar.current
let seconds = calendar.component(.second, from: date)

struct splash: View {
    
    var body: some View {
        Image("splashlogo")
            .resizable()
            .aspectRatio(contentMode: .fit)
        /*var i = 0;
        dispatch_source_t timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, DispatchQueue.global(qos: .userInitiated));
        dispatch_source_set_timer(timer, DISPATCH_TIME_NOW, 0.1 * NSEC_PER_SEC, 0.1 * NSEC_PER_SEC);
        dispatch_source_set_event_handler(timer, ^{
            i+=.1;
        });
        dispatch_resume(timer);
        ProgressView(value: i)*/
        
            
    }
}

struct Splash_Previews: PreviewProvider {
    static var previews: some View {
        splash()

    }
}
