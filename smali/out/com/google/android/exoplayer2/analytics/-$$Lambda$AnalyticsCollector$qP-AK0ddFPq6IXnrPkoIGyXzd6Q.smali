.class public final synthetic Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$qP-AK0ddFPq6IXnrPkoIGyXzd6Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field private final synthetic f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

.field private final synthetic f$1:Lcom/google/android/exoplayer2/MediaItem;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaItem;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$qP-AK0ddFPq6IXnrPkoIGyXzd6Q;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$qP-AK0ddFPq6IXnrPkoIGyXzd6Q;->f$1:Lcom/google/android/exoplayer2/MediaItem;

    iput p3, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$qP-AK0ddFPq6IXnrPkoIGyXzd6Q;->f$2:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$qP-AK0ddFPq6IXnrPkoIGyXzd6Q;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$qP-AK0ddFPq6IXnrPkoIGyXzd6Q;->f$1:Lcom/google/android/exoplayer2/MediaItem;

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$qP-AK0ddFPq6IXnrPkoIGyXzd6Q;->f$2:I

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->lambda$onMediaItemTransition$34(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaItem;ILcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    return-void
.end method
