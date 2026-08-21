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
            Button(intent: Limooonik.ReloadFinchIntent()) {
                Limooonik.FinchView(entry: entry)
            }
            .buttonStyle(.plain)
        }
        .configurationDisplayName("Finch Animated PoC")
        .description("Widget Animation")
        .supportedFamilies([.systemSmall, .systemLarge])
    }
}
