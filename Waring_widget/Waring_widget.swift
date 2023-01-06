//
//  Waring_widget.swift
//  Waring_widget
//
//  Created by mobile on 2023/01/05.
//

import WidgetKit
import SwiftUI

//struct SimpleEntry: TimelineEntry {
//    let date: Date
//}

struct Waring_widget: Widget {
    let kind: String = "Waring_widget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            WidgetEntryView(entry: entry)
        }
        .configurationDisplayName("KW 마이시트")
        .description("광운대학교 중앙도서관 예약 알림 서비스")
        .supportedFamilies([.systemMedium])
    }
}

struct Waring_widget_Previews: PreviewProvider {
    static var previews: some View {
        WidgetEntryView(entry: WidgetEntry(date: Date(), widgetData: .preview))
            .previewContext(WidgetPreviewContext(family: .systemMedium))
    }
}
