import SwiftUI
import WidgetKit
import AppIntents
import Limooonik

@main
struct FinchWidget: Widget {
    let kind: String = "FinchWidget"
    let config = ChangeSettings.current

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Limooonik.Provider(config: config)) { entry in
            Button(intent: ReloadAnimIntent()) {
                Limooonik.FinchView(entry: entry)
            }
            .buttonStyle(.plain)
        }
        .configurationDisplayName("Finch Animated PoC")
        .description("Widget Animation")
        .supportedFamilies([.systemSmall, .systemLarge])
    }
}


struct ReloadAnimIntent: AppIntent {
    static var title: LocalizedStringResource { "Reload Animation" }
    static var openAppWhenRun: Bool { false }
    
    func perform() async throws -> some IntentResult {
        WidgetCenter.shared.reloadAllTimelines()
        return .result()
    }
}
