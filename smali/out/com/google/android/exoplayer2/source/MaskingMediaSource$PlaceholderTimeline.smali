.class public final Lcom/google/android/exoplayer2/source/MaskingMediaSource$PlaceholderTimeline;
.super Lcom/google/android/exoplayer2/Timeline;
.source "MaskingMediaSource.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/MaskingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaceholderTimeline"
.end annotation


# instance fields
.field private final mediaItem:Lcom/google/android/exoplayer2/MediaItem;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/MediaItem;)V
    .registers 2

    .line 356
    invoke-direct {p0}, Lcom/google/android/exoplayer2/Timeline;-><init>()V

    .line 357
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaSource$PlaceholderTimeline;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    return-void
.end method


# virtual methods
.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .registers 3

    .line 404
    sget-object v0, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    if-ne p1, v0, :cond_6

    const/4 p1, 0x0

    goto :goto_7

    :cond_6
    const/4 p1, -0x1

    :goto_7
    return p1
.end method

.method public getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;
    .registers 13

    const/4 p1, 0x0

    if-eqz p3, :cond_a

    const/4 v0, 0x0

    .line 395
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v2, v0

    goto :goto_b

    :cond_a
    move-object v2, p1

    :goto_b
    if-eqz p3, :cond_f

    .line 396
    sget-object p1, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    :cond_f
    move-object v3, p1

    const/4 v4, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v7, 0x0

    move-object v1, p2

    .line 394
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/exoplayer2/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p1

    return-object p1
.end method

.method public getPeriodCount()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getUidOfPeriod(I)Ljava/lang/Object;
    .registers 2

    .line 409
    sget-object p1, Lcom/google/android/exoplayer2/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    return-object p1
.end method

.method public getWindow(ILcom/google/android/exoplayer2/Timeline$Window;J)Lcom/google/android/exoplayer2/Timeline$Window;
    .registers 26

    move-object/from16 v15, p2

    move-object/from16 v0, p2

    .line 367
    sget-object v1, Lcom/google/android/exoplayer2/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    move-object/from16 v13, p0

    iget-object v2, v13, Lcom/google/android/exoplayer2/source/MaskingMediaSource$PlaceholderTimeline;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    const/4 v3, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v13, v16

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    invoke-virtual/range {v0 .. v20}, Lcom/google/android/exoplayer2/Timeline$Window;->set(Ljava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;Ljava/lang/Object;JJJZZLcom/google/android/exoplayer2/MediaItem$LiveConfiguration;JJIIJ)Lcom/google/android/exoplayer2/Timeline$Window;

    const/4 v0, 0x1

    move-object/from16 v1, p2

    .line 383
    iput-boolean v0, v1, Lcom/google/android/exoplayer2/Timeline$Window;->isPlaceholder:Z

    return-object v1
.end method

.method public getWindowCount()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
