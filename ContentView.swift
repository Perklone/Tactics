import SwiftUI

struct ContentView: View {
    var body: some View {
        VCView()
        
    }
}

struct VCView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> some UIViewController {
        return ViewController()
    }
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}
