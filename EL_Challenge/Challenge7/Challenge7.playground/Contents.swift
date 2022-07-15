import UIKit
import Combine
import PlaygroundSupport


var suscription: Cancellable? = Timer.publish(every: 1, on: .main, in: .common)
    .autoconnect()
    .print("stream")
    .sink{ output in
           print("Finished stream with the output: \(output)")
    } receiveValue: { value in
        print("Received value: \(value)")
    }

//Cancel suscription
RunLoop.main.schedule(after: .init(Date(timeIntervalSinceNow: 5))) {
    print("Suscription was cancelled")
    suscription = nil
}
