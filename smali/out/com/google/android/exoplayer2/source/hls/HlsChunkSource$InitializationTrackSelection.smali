.class final Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;
.super Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InitializationTrackSelection"
.end annotation


# instance fields
.field private selectedIndex:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V
    .registers 4

    .line 819
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    const/4 v0, 0x0

    .line 822
    aget p2, p2, v0

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->selectedIndex:I

    return-void
.end method


# virtual methods
.method public getSelectedIndex()I
    .registers 2

    .line 849
    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->selectedIndex:I

    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionReason()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public updateSelectedTrack(JJJLjava/util/List;[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;[",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;",
            ")V"
        }
    .end annotation

    .line 832
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 833
    iget p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->selectedIndex:I

    invoke-virtual {p0, p3, p1, p2}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->isBlacklisted(IJ)Z

    move-result p3

    if-nez p3, :cond_d

    return-void

    .line 837
    :cond_d
    iget p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->length:I

    add-int/lit8 p3, p3, -0x1

    :goto_11
    if-ltz p3, :cond_1f

    .line 838
    invoke-virtual {p0, p3, p1, p2}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->isBlacklisted(IJ)Z

    move-result p4

    if-nez p4, :cond_1c

    .line 839
    iput p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$InitializationTrackSelection;->selectedIndex:I

    return-void

    :cond_1c
    add-int/lit8 p3, p3, -0x1

    goto :goto_11

    .line 844
    :cond_1f
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
