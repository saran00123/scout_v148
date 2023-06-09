.class public Lcom/google/android/exoplayer2/source/SampleQueue;
.super Ljava/lang/Object;
.source "SampleQueue.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/TrackOutput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;,
        Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;
    }
.end annotation


# static fields
.field static final SAMPLE_CAPACITY_INCREMENT:I = 0x3e8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SampleQueue"


# instance fields
.field private absoluteFirstIndex:I

.field private capacity:I

.field private cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

.field private currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private downstreamFormat:Lcom/google/android/exoplayer2/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final extrasHolder:Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;

.field private flags:[I

.field private formats:[Lcom/google/android/exoplayer2/Format;

.field private isLastSampleQueued:Z

.field private largestDiscardedTimestampUs:J

.field private largestQueuedTimestampUs:J

.field private length:I

.field private loggedUnexpectedNonSyncSample:Z

.field private offsets:[J

.field private pendingSplice:Z

.field private final playbackLooper:Landroid/os/Looper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private readPosition:I

.field private relativeFirstIndex:I

.field private final sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

.field private sampleOffsetUs:J

.field private sizes:[I

.field private sourceIds:[I

.field private startTimeUs:J

.field private timesUs:[J

.field private unadjustedUpstreamFormat:Lcom/google/android/exoplayer2/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private upstreamAllSamplesAreSyncSamples:Z

.field private upstreamCommittedFormat:Lcom/google/android/exoplayer2/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private upstreamFormat:Lcom/google/android/exoplayer2/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private upstreamFormatAdjustmentRequired:Z

.field private upstreamFormatChangeListener:Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private upstreamFormatRequired:Z

.field private upstreamKeyframeRequired:Z

.field private upstreamSourceId:I


# direct methods
.method protected constructor <init>(Lcom/google/android/exoplayer2/upstream/Allocator;Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V
    .registers 5
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/exoplayer2/drm/DrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->playbackLooper:Landroid/os/Looper;

    .line 146
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 147
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 148
    new-instance p2, Lcom/google/android/exoplayer2/source/SampleDataQueue;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/source/SampleDataQueue;-><init>(Lcom/google/android/exoplayer2/upstream/Allocator;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    .line 149
    new-instance p1, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->extrasHolder:Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;

    const/16 p1, 0x3e8

    .line 150
    iput p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    .line 151
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sourceIds:[I

    .line 152
    new-array p2, p1, [J

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->offsets:[J

    .line 153
    new-array p2, p1, [J

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    .line 154
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->flags:[I

    .line 155
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sizes:[I

    .line 156
    new-array p2, p1, [Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 157
    new-array p1, p1, [Lcom/google/android/exoplayer2/Format;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    const-wide/high16 p1, -0x8000000000000000L

    .line 158
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->startTimeUs:J

    .line 159
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestDiscardedTimestampUs:J

    .line 160
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestQueuedTimestampUs:J

    const/4 p1, 0x1

    .line 161
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatRequired:Z

    .line 162
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamKeyframeRequired:Z

    return-void
.end method

.method private declared-synchronized attemptSplice(J)Z
    .registers 8

    monitor-enter p0

    .line 842
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_11

    .line 843
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestDiscardedTimestampUs:J
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_27

    cmp-long p1, p1, v3

    if-lez p1, :cond_e

    goto :goto_f

    :cond_e
    move v1, v2

    :goto_f
    monitor-exit p0

    return v1

    .line 845
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getLargestReadTimestampUs()J

    move-result-wide v3
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_27

    cmp-long v0, v3, p1

    if-ltz v0, :cond_1b

    .line 846
    monitor-exit p0

    return v2

    .line 848
    :cond_1b
    :try_start_1b
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->countUnreadSamplesBefore(J)I

    move-result p1

    .line 849
    iget p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->absoluteFirstIndex:I

    add-int/2addr p2, p1

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardUpstreamSampleMetadata(I)J
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_27

    .line 850
    monitor-exit p0

    return v1

    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized commitSample(JIJILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V
    .registers 16
    .param p7    # Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 775
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_22

    .line 777
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getRelativeIndex(I)I

    move-result v0

    .line 778
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->offsets:[J

    aget-wide v4, v3, v0

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sizes:[I

    aget v0, v3, v0

    int-to-long v6, v0

    add-long/2addr v4, v6

    cmp-long v0, v4, p4

    if-gtz v0, :cond_1e

    move v0, v1

    goto :goto_1f

    :cond_1e
    move v0, v2

    :goto_1f
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    :cond_22
    const/high16 v0, 0x20000000

    and-int/2addr v0, p3

    if-eqz v0, :cond_29

    move v0, v1

    goto :goto_2a

    :cond_29
    move v0, v2

    .line 782
    :goto_2a
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->isLastSampleQueued:Z

    .line 783
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestQueuedTimestampUs:J

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestQueuedTimestampUs:J

    .line 785
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getRelativeIndex(I)I

    move-result v0

    .line 786
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    aput-wide p1, v3, v0

    .line 787
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->offsets:[J

    aput-wide p4, p1, v0

    .line 788
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sizes:[I

    aput p6, p1, v0

    .line 789
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->flags:[I

    aput p3, p1, v0

    .line 790
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    aput-object p7, p1, v0

    .line 791
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    aput-object p2, p1, v0

    .line 792
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sourceIds:[I

    iget p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamSourceId:I

    aput p2, p1, v0

    .line 793
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamCommittedFormat:Lcom/google/android/exoplayer2/Format;

    .line 795
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    .line 796
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    iget p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    if-ne p1, p2, :cond_e8

    .line 798
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    add-int/lit16 p1, p1, 0x3e8

    .line 799
    new-array p2, p1, [I

    .line 800
    new-array p3, p1, [J

    .line 801
    new-array p4, p1, [J

    .line 802
    new-array p5, p1, [I

    .line 803
    new-array p6, p1, [I

    .line 804
    new-array p7, p1, [Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 805
    new-array v0, p1, [Lcom/google/android/exoplayer2/Format;

    .line 806
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    iget v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    sub-int/2addr v1, v3

    .line 807
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->offsets:[J

    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v3, v4, p3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 808
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v3, v4, p4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 809
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->flags:[I

    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v3, v4, p5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 810
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sizes:[I

    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v3, v4, p6, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 811
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v3, v4, p7, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 812
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v3, v4, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 813
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sourceIds:[I

    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v3, v4, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 814
    iget v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    .line 815
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->offsets:[J

    invoke-static {v4, v2, p3, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 816
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    invoke-static {v4, v2, p4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 817
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->flags:[I

    invoke-static {v4, v2, p5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 818
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sizes:[I

    invoke-static {v4, v2, p6, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 819
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    invoke-static {v4, v2, p7, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 820
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    invoke-static {v4, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 821
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sourceIds:[I

    invoke-static {v4, v2, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 822
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->offsets:[J

    .line 823
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    .line 824
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->flags:[I

    .line 825
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sizes:[I

    .line 826
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 827
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    .line 828
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sourceIds:[I

    .line 829
    iput v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    .line 830
    iput p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I
    :try_end_e8
    .catchall {:try_start_1 .. :try_end_e8} :catchall_ea

    .line 832
    :cond_e8
    monitor-exit p0

    return-void

    :catchall_ea
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private countUnreadSamplesBefore(J)I
    .registers 8

    .line 966
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    add-int/lit8 v1, v0, -0x1

    .line 967
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->getRelativeIndex(I)I

    move-result v1

    .line 968
    :cond_8
    :goto_8
    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    if-le v0, v2, :cond_20

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    aget-wide v3, v2, v1

    cmp-long v2, v3, p1

    if-ltz v2, :cond_20

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_8

    .line 972
    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_20
    return v0
.end method

.method public static createWithDrm(Lcom/google/android/exoplayer2/upstream/Allocator;Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)Lcom/google/android/exoplayer2/source/SampleQueue;
    .registers 5

    .line 133
    new-instance v0, Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 135
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Looper;

    .line 136
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 137
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/SampleQueue;-><init>(Lcom/google/android/exoplayer2/upstream/Allocator;Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    return-object v0
.end method

.method public static createWithoutDrm(Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/SampleQueue;
    .registers 3

    .line 108
    new-instance v0, Lcom/google/android/exoplayer2/source/SampleQueue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;-><init>(Lcom/google/android/exoplayer2/upstream/Allocator;Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    return-object v0
.end method

.method private declared-synchronized discardSampleMetadataTo(JZZ)J
    .registers 14

    monitor-enter p0

    .line 734
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    iget v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    aget-wide v3, v0, v3

    cmp-long v0, p1, v3

    if-gez v0, :cond_12

    goto :goto_36

    :cond_12
    if-eqz p4, :cond_1f

    .line 737
    iget p4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    if-eq p4, v0, :cond_1f

    iget p4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    add-int/lit8 p4, p4, 0x1

    goto :goto_21

    :cond_1f
    iget p4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    :goto_21
    move v5, p4

    .line 738
    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    move-object v3, p0

    move-wide v6, p1

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/source/SampleQueue;->findSampleBefore(IIJZ)I

    move-result p1
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_38

    const/4 p2, -0x1

    if-ne p1, p2, :cond_30

    .line 740
    monitor-exit p0

    return-wide v1

    .line 742
    :cond_30
    :try_start_30
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardSamples(I)J

    move-result-wide p1
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_38

    monitor-exit p0

    return-wide p1

    .line 735
    :cond_36
    :goto_36
    monitor-exit p0

    return-wide v1

    :catchall_38
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized discardSampleMetadataToEnd()J
    .registers 3

    monitor-enter p0

    .line 753
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    if-nez v0, :cond_9

    const-wide/16 v0, -0x1

    .line 754
    monitor-exit p0

    return-wide v0

    .line 756
    :cond_9
    :try_start_9
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardSamples(I)J

    move-result-wide v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-wide v0

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private discardSamples(I)J
    .registers 7

    .line 985
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestDiscardedTimestampUs:J

    .line 986
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->getLargestTimestamp(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestDiscardedTimestampUs:J

    .line 987
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    .line 988
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->absoluteFirstIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->absoluteFirstIndex:I

    .line 989
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    .line 990
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    if-lt v0, v1, :cond_24

    sub-int/2addr v0, v1

    .line 991
    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    .line 993
    :cond_24
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    .line 994
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    if-gez p1, :cond_30

    const/4 p1, 0x0

    .line 995
    iput p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    .line 997
    :cond_30
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    if-nez p1, :cond_47

    .line 998
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    if-nez p1, :cond_3a

    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    :cond_3a
    add-int/lit8 p1, p1, -0x1

    .line 999
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->offsets:[J

    aget-wide v1, v0, p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sizes:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1

    .line 1001
    :cond_47
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->offsets:[J

    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method private discardUpstreamSampleMetadata(I)J
    .registers 8

    .line 854
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getWriteIndex()I

    move-result v0

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    const/4 v1, 0x1

    if-ltz v0, :cond_12

    .line 855
    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    iget v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_12

    move v2, v1

    goto :goto_13

    :cond_12
    move v2, p1

    :goto_13
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 856
    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    .line 857
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestDiscardedTimestampUs:J

    iget v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->getLargestTimestamp(I)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestQueuedTimestampUs:J

    if-nez v0, :cond_30

    .line 858
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->isLastSampleQueued:Z

    if-eqz v0, :cond_30

    move p1, v1

    :cond_30
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->isLastSampleQueued:Z

    .line 859
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    if-eqz p1, :cond_46

    sub-int/2addr p1, v1

    .line 860
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->getRelativeIndex(I)I

    move-result p1

    .line 861
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->offsets:[J

    aget-wide v1, v0, p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sizes:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1

    :cond_46
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private findSampleBefore(IIJZ)I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v1

    move v1, p1

    move p1, v0

    :goto_5
    if-ge p1, p2, :cond_2d

    .line 940
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    aget-wide v4, v3, v1

    cmp-long v3, v4, p3

    if-gtz v3, :cond_2d

    if-eqz p5, :cond_19

    .line 941
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->flags:[I

    aget v3, v3, v1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_23

    .line 944
    :cond_19
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    aget-wide v3, v2, v1

    cmp-long v2, v3, p3

    if-nez v2, :cond_22

    goto :goto_2e

    :cond_22
    move v2, p1

    :cond_23
    add-int/lit8 v1, v1, 0x1

    .line 951
    iget v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    if-ne v1, v3, :cond_2a

    move v1, v0

    :cond_2a
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_2d
    move p1, v2

    :goto_2e
    return p1
.end method

.method private getLargestTimestamp(I)J
    .registers 9

    const-wide/high16 v0, -0x8000000000000000L

    if-nez p1, :cond_5

    return-wide v0

    :cond_5
    add-int/lit8 v2, p1, -0x1

    .line 1018
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->getRelativeIndex(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_c
    if-ge v3, p1, :cond_2b

    .line 1020
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    aget-wide v5, v4, v2

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1021
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->flags:[I

    aget v4, v4, v2

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1f

    goto :goto_2b

    :cond_1f
    add-int/lit8 v2, v2, -0x1

    const/4 v4, -0x1

    if-ne v2, v4, :cond_28

    .line 1026
    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    add-int/lit8 v2, v2, -0x1

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_2b
    :goto_2b
    return-wide v0
.end method

.method private getRelativeIndex(I)I
    .registers 3

    .line 1038
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    add-int/2addr v0, p1

    .line 1039
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->capacity:I

    if-ge v0, p1, :cond_8

    goto :goto_9

    :cond_8
    sub-int/2addr v0, p1

    :goto_9
    return v0
.end method

.method private hasNextSample()Z
    .registers 3

    .line 867
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private mayReadSample(I)Z
    .registers 4

    .line 917
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_1f

    .line 918
    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->flags:[I

    aget p1, v0, p1

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p1, v0

    if-nez p1, :cond_1d

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 920
    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/DrmSession;->playClearSamplesWithoutKeys()Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p1, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p1, 0x1

    :goto_20
    return p1
.end method

.method private onFormatResult(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/FormatHolder;)V
    .registers 7

    .line 878
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_b

    const/4 v1, 0x0

    goto :goto_f

    .line 879
    :cond_b
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 880
    :goto_f
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    .line 881
    iget-object v2, p1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 884
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    if-eqz v3, :cond_20

    .line 886
    invoke-interface {v3, p1}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->getExoMediaCryptoType(Lcom/google/android/exoplayer2/Format;)Ljava/lang/Class;

    move-result-object v3

    .line 885
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/Format;->copyWithExoMediaCryptoType(Ljava/lang/Class;)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    goto :goto_21

    :cond_20
    move-object v3, p1

    .line 887
    :goto_21
    iput-object v3, p2, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    .line 888
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iput-object v3, p2, Lcom/google/android/exoplayer2/FormatHolder;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 889
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    if-nez v3, :cond_2c

    return-void

    :cond_2c
    if-nez v0, :cond_35

    .line 893
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    return-void

    .line 899
    :cond_35
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 900
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->playbackLooper:Landroid/os/Looper;

    .line 902
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Looper;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 901
    invoke-interface {v1, v2, v3, p1}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->acquireSession(Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/drm/DrmSession;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 903
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    iput-object p1, p2, Lcom/google/android/exoplayer2/FormatHolder;->drmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_54

    .line 906
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/drm/DrmSession;->release(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    :cond_54
    return-void
.end method

.method private declared-synchronized peekSampleMetadata(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZLcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;)I
    .registers 12

    monitor-enter p0

    const/4 v0, 0x0

    .line 674
    :try_start_2
    iput-boolean v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->waitingForKeys:Z

    .line 675
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->hasNextSample()Z

    move-result v0

    const/4 v1, -0x5

    const/4 v2, -0x3

    const/4 v3, -0x4

    if-nez v0, :cond_35

    if-nez p4, :cond_2f

    .line 676
    iget-boolean p4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->isLastSampleQueued:Z

    if-eqz p4, :cond_14

    goto :goto_2f

    .line 679
    :cond_14
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz p2, :cond_2d

    if-nez p3, :cond_20

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    if-eq p2, p3, :cond_2d

    .line 680
    :cond_20
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/Format;

    invoke-direct {p0, p2, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->onFormatResult(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/FormatHolder;)V
    :try_end_2b
    .catchall {:try_start_2 .. :try_end_2b} :catchall_88

    .line 681
    monitor-exit p0

    return v1

    .line 683
    :cond_2d
    monitor-exit p0

    return v2

    :cond_2f
    :goto_2f
    const/4 p1, 0x4

    .line 677
    :try_start_30
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->setFlags(I)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_88

    .line 678
    monitor-exit p0

    return v3

    .line 687
    :cond_35
    :try_start_35
    iget p4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/SampleQueue;->getRelativeIndex(I)I

    move-result p4

    if-nez p3, :cond_7f

    .line 688
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object p3, p3, p4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    if-eq p3, v0, :cond_46

    goto :goto_7f

    .line 693
    :cond_46
    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/SampleQueue;->mayReadSample(I)Z

    move-result p1

    if-nez p1, :cond_51

    const/4 p1, 0x1

    .line 694
    iput-boolean p1, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->waitingForKeys:Z
    :try_end_4f
    .catchall {:try_start_35 .. :try_end_4f} :catchall_88

    .line 695
    monitor-exit p0

    return v2

    .line 698
    :cond_51
    :try_start_51
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->flags:[I

    aget p1, p1, p4

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 699
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    aget-wide v0, p1, p4

    iput-wide v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    .line 700
    iget-wide v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->startTimeUs:J

    cmp-long p1, v0, v4

    if-gez p1, :cond_6b

    const/high16 p1, -0x80000000

    .line 701
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->addFlag(I)V

    .line 703
    :cond_6b
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sizes:[I

    aget p1, p1, p4

    iput p1, p5, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->size:I

    .line 704
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->offsets:[J

    aget-wide p2, p1, p4

    iput-wide p2, p5, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->offset:J

    .line 705
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->cryptoDatas:[Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    aget-object p1, p1, p4

    iput-object p1, p5, Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;->cryptoData:Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;
    :try_end_7d
    .catchall {:try_start_51 .. :try_end_7d} :catchall_88

    .line 707
    monitor-exit p0

    return v3

    .line 689
    :cond_7f
    :goto_7f
    :try_start_7f
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object p2, p2, p4

    invoke-direct {p0, p2, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->onFormatResult(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/FormatHolder;)V
    :try_end_86
    .catchall {:try_start_7f .. :try_end_86} :catchall_88

    .line 690
    monitor-exit p0

    return v1

    :catchall_88
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private releaseDrmSessionReferences()V
    .registers 3

    .line 760
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_e

    .line 761
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/drm/DrmSession;->release(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    const/4 v0, 0x0

    .line 762
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    .line 765
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    :cond_e
    return-void
.end method

.method private declared-synchronized rewind()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 663
    :try_start_2
    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    .line 664
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->rewind()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 665
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setUpstreamFormat(Lcom/google/android/exoplayer2/Format;)Z
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 711
    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatRequired:Z

    .line 712
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_30

    if-eqz v1, :cond_e

    .line 716
    monitor-exit p0

    return v0

    .line 718
    :cond_e
    :try_start_e
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamCommittedFormat:Lcom/google/android/exoplayer2/Format;

    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 722
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamCommittedFormat:Lcom/google/android/exoplayer2/Format;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    goto :goto_1d

    .line 724
    :cond_1b
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    .line 726
    :goto_1d
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 727
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/MimeTypes;->allSamplesAreSyncSamples(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamAllSamplesAreSyncSamples:Z

    .line 728
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->loggedUnexpectedNonSyncSample:Z
    :try_end_2d
    .catchall {:try_start_e .. :try_end_2d} :catchall_30

    const/4 p1, 0x1

    .line 729
    monitor-exit p0

    return p1

    :catchall_30
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized discardSampleMetadataToRead()J
    .registers 3

    monitor-enter p0

    .line 746
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    if-nez v0, :cond_9

    const-wide/16 v0, -0x1

    .line 747
    monitor-exit p0

    return-wide v0

    .line 749
    :cond_9
    :try_start_9
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardSamples(I)J

    move-result-wide v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-wide v0

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final discardTo(JZZ)V
    .registers 6

    .line 517
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    .line 518
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardSampleMetadataTo(JZZ)J

    move-result-wide p1

    .line 517
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->discardDownstreamTo(J)V

    return-void
.end method

.method public final discardToEnd()V
    .registers 4

    .line 528
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardSampleMetadataToEnd()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->discardDownstreamTo(J)V

    return-void
.end method

.method public final discardToRead()V
    .registers 4

    .line 523
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardSampleMetadataToRead()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->discardDownstreamTo(J)V

    return-void
.end method

.method public final discardUpstreamFrom(J)V
    .registers 5

    .line 254
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    if-nez v0, :cond_5

    return-void

    .line 257
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getLargestReadTimestampUs()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 258
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->countUnreadSamplesBefore(J)I

    move-result p1

    .line 259
    iget p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->absoluteFirstIndex:I

    add-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardUpstreamSamples(I)V

    return-void
.end method

.method public final discardUpstreamSamples(I)V
    .registers 5

    .line 243
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardUpstreamSampleMetadata(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->discardUpstreamSampleBytes(J)V

    return-void
.end method

.method public final format(Lcom/google/android/exoplayer2/Format;)V
    .registers 4

    .line 560
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->getAdjustedUpstreamFormat(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    const/4 v1, 0x0

    .line 561
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatAdjustmentRequired:Z

    .line 562
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->unadjustedUpstreamFormat:Lcom/google/android/exoplayer2/Format;

    .line 563
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->setUpstreamFormat(Lcom/google/android/exoplayer2/Format;)Z

    move-result p1

    .line 564
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatChangeListener:Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;

    if-eqz v1, :cond_16

    if-eqz p1, :cond_16

    .line 565
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;->onUpstreamFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    :cond_16
    return-void
.end method

.method protected getAdjustedUpstreamFormat(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .registers 7
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 649
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleOffsetUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_24

    iget-wide v0, p1, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_24

    .line 652
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    iget-wide v1, p1, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleOffsetUs:J

    add-long/2addr v1, v3

    .line 653
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setSubsampleOffsetUs(J)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    .line 654
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    :cond_24
    return-object p1
.end method

.method public final getFirstIndex()I
    .registers 2

    .line 286
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->absoluteFirstIndex:I

    return v0
.end method

.method public final declared-synchronized getFirstTimestampUs()J
    .registers 4

    monitor-enter p0

    .line 350
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    if-nez v0, :cond_8

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_f

    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    aget-wide v1, v0, v1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    move-wide v0, v1

    :goto_f
    monitor-exit p0

    return-wide v0

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getLargestQueuedTimestampUs()J
    .registers 3

    monitor-enter p0

    .line 322
    :try_start_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestQueuedTimestampUs:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getLargestReadTimestampUs()J
    .registers 5

    monitor-enter p0

    .line 332
    :try_start_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestDiscardedTimestampUs:J

    iget v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->getLargestTimestamp(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-wide v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getReadIndex()I
    .registers 3

    .line 291
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->absoluteFirstIndex:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final declared-synchronized getSkipCount(JZ)I
    .registers 12

    monitor-enter p0

    .line 480
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getRelativeIndex(I)I

    move-result v2

    .line 481
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->hasNextSample()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    aget-wide v3, v0, v2

    cmp-long v0, p1, v3

    if-gez v0, :cond_17

    goto :goto_3a

    .line 484
    :cond_17
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestQueuedTimestampUs:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_26

    if-eqz p3, :cond_26

    .line 485
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    iget p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_3c

    sub-int/2addr p1, p2

    monitor-exit p0

    return p1

    .line 487
    :cond_26
    :try_start_26
    iget p3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    sub-int v3, p3, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v4, p1

    .line 488
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/SampleQueue;->findSampleBefore(IIJZ)I

    move-result p1
    :try_end_33
    .catchall {:try_start_26 .. :try_end_33} :catchall_3c

    const/4 p2, -0x1

    if-ne p1, p2, :cond_38

    .line 490
    monitor-exit p0

    return v7

    .line 492
    :cond_38
    monitor-exit p0

    return p1

    .line 482
    :cond_3a
    :goto_3a
    monitor-exit p0

    return v7

    :catchall_3c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getUpstreamFormat()Lcom/google/android/exoplayer2/Format;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 308
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatRequired:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    :goto_9
    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getWriteIndex()I
    .registers 3

    .line 233
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->absoluteFirstIndex:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected final invalidateUpstreamFormatAdjustment()V
    .registers 2

    const/4 v0, 0x1

    .line 634
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatAdjustmentRequired:Z

    return-void
.end method

.method public final declared-synchronized isLastSampleQueued()Z
    .registers 2

    monitor-enter p0

    .line 345
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->isLastSampleQueued:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isReady(Z)Z
    .registers 5
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    monitor-enter p0

    .line 367
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->hasNextSample()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1c

    if-nez p1, :cond_1a

    .line 368
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->isLastSampleQueued:Z

    if-nez p1, :cond_1a

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_32

    if-eq p1, v0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :cond_1a
    :goto_1a
    monitor-exit p0

    return v1

    .line 372
    :cond_1c
    :try_start_1c
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->getRelativeIndex(I)I

    move-result p1

    .line 373
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    aget-object v0, v0, p1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_32

    if-eq v0, v2, :cond_2c

    .line 375
    monitor-exit p0

    return v1

    .line 377
    :cond_2c
    :try_start_2c
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->mayReadSample(I)Z

    move-result p1
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_32

    monitor-exit p0

    return p1

    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public maybeThrowError()V
    .registers 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v0, :cond_19

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    goto :goto_19

    .line 280
    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->currentDrmSession:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    throw v0

    :cond_19
    :goto_19
    return-void
.end method

.method public final peek(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZ)I
    .registers 11

    .line 386
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->extrasHolder:Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 387
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/SampleQueue;->peekSampleMetadata(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZLcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;)I

    move-result p1

    const/4 p3, -0x4

    if-ne p1, p3, :cond_21

    .line 388
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result p3

    if-nez p3, :cond_21

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isFlagsOnly()Z

    move-result p3

    if-nez p3, :cond_21

    .line 389
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    iget-object p4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->extrasHolder:Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;

    invoke-virtual {p3, p2, p4}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->peekToBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;)V

    :cond_21
    return p1
.end method

.method public final declared-synchronized peekSourceId()I
    .registers 3

    monitor-enter p0

    .line 301
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getRelativeIndex(I)I

    move-result v0

    .line 302
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->hasNextSample()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sourceIds:[I

    aget v0, v1, v0

    goto :goto_14

    :cond_12
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamSourceId:I
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    :goto_14
    monitor-exit p0

    return v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public preRelease()V
    .registers 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 267
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardToEnd()V

    .line 268
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->releaseDrmSessionReferences()V

    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZ)I
    .registers 11
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 419
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->extrasHolder:Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 420
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/SampleQueue;->peekSampleMetadata(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZLcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;)I

    move-result p1

    const/4 p3, -0x4

    if-ne p1, p3, :cond_27

    .line 421
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result p3

    if-nez p3, :cond_27

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isFlagsOnly()Z

    move-result p3

    if-nez p3, :cond_27

    .line 422
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    iget-object p4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->extrasHolder:Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;

    invoke-virtual {p3, p2, p4}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->readToBuffer(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/source/SampleQueue$SampleExtrasHolder;)V

    .line 423
    iget p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    :cond_27
    return p1
.end method

.method public release()V
    .registers 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    .line 170
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset(Z)V

    .line 171
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->releaseDrmSessionReferences()V

    return-void
.end method

.method public final reset()V
    .registers 2

    const/4 v0, 0x0

    .line 176
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset(Z)V

    return-void
.end method

.method public reset(Z)V
    .registers 6
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->reset()V

    const/4 v0, 0x0

    .line 190
    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    .line 191
    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->absoluteFirstIndex:I

    .line 192
    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->relativeFirstIndex:I

    .line 193
    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    const/4 v1, 0x1

    .line 194
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamKeyframeRequired:Z

    const-wide/high16 v2, -0x8000000000000000L

    .line 195
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->startTimeUs:J

    .line 196
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestDiscardedTimestampUs:J

    .line 197
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestQueuedTimestampUs:J

    .line 198
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->isLastSampleQueued:Z

    const/4 v0, 0x0

    .line 199
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamCommittedFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz p1, :cond_26

    .line 201
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->unadjustedUpstreamFormat:Lcom/google/android/exoplayer2/Format;

    .line 202
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    .line 203
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatRequired:Z

    :cond_26
    return-void
.end method

.method public synthetic sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/TrackOutput$-CC;->$default$sampleData(Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I

    move-result p1

    return p1
.end method

.method public final sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZI)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 573
    iget-object p4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    invoke-virtual {p4, p1, p2, p3}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I

    move-result p1

    return p1
.end method

.method public synthetic sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/TrackOutput$-CC;->$default$sampleData(Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    return-void
.end method

.method public final sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)V
    .registers 4

    .line 579
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    return-void
.end method

.method public sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V
    .registers 18
    .param p6    # Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v8, p0

    .line 589
    iget-boolean v0, v8, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatAdjustmentRequired:Z

    if-eqz v0, :cond_10

    .line 590
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/SampleQueue;->unadjustedUpstreamFormat:Lcom/google/android/exoplayer2/Format;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->format(Lcom/google/android/exoplayer2/Format;)V

    :cond_10
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_18

    move v3, v2

    goto :goto_19

    :cond_18
    move v3, v1

    .line 594
    :goto_19
    iget-boolean v4, v8, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamKeyframeRequired:Z

    if-eqz v4, :cond_22

    if-nez v3, :cond_20

    return-void

    .line 598
    :cond_20
    iput-boolean v1, v8, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamKeyframeRequired:Z

    .line 601
    :cond_22
    iget-wide v4, v8, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleOffsetUs:J

    add-long/2addr v4, p1

    .line 602
    iget-boolean v6, v8, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamAllSamplesAreSyncSamples:Z

    if-eqz v6, :cond_62

    .line 603
    iget-wide v6, v8, Lcom/google/android/exoplayer2/source/SampleQueue;->startTimeUs:J

    cmp-long v6, v4, v6

    if-gez v6, :cond_30

    return-void

    :cond_30
    if-nez v0, :cond_62

    .line 611
    iget-boolean v0, v8, Lcom/google/android/exoplayer2/source/SampleQueue;->loggedUnexpectedNonSyncSample:Z

    if-nez v0, :cond_5e

    .line 612
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x32

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Overriding unexpected non-sync sample for format: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "SampleQueue"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iput-boolean v2, v8, Lcom/google/android/exoplayer2/source/SampleQueue;->loggedUnexpectedNonSyncSample:Z

    :cond_5e
    or-int/lit8 v0, p3, 0x1

    move v6, v0

    goto :goto_63

    :cond_62
    move v6, p3

    .line 618
    :goto_63
    iget-boolean v0, v8, Lcom/google/android/exoplayer2/source/SampleQueue;->pendingSplice:Z

    if-eqz v0, :cond_74

    if-eqz v3, :cond_73

    .line 619
    invoke-direct {p0, v4, v5}, Lcom/google/android/exoplayer2/source/SampleQueue;->attemptSplice(J)Z

    move-result v0

    if-nez v0, :cond_70

    goto :goto_73

    .line 622
    :cond_70
    iput-boolean v1, v8, Lcom/google/android/exoplayer2/source/SampleQueue;->pendingSplice:Z

    goto :goto_74

    :cond_73
    :goto_73
    return-void

    .line 625
    :cond_74
    :goto_74
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleDataQueue:Lcom/google/android/exoplayer2/source/SampleDataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleDataQueue;->getTotalBytesWritten()J

    move-result-wide v0

    move v7, p4

    int-to-long v2, v7

    sub-long/2addr v0, v2

    move/from16 v2, p5

    int-to-long v2, v2

    sub-long v9, v0, v2

    move-object v0, p0

    move-wide v1, v4

    move v3, v6

    move-wide v4, v9

    move v6, p4

    move-object/from16 v7, p6

    .line 626
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/SampleQueue;->commitSample(JIJILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    return-void
.end method

.method public final declared-synchronized seekTo(I)Z
    .registers 4

    monitor-enter p0

    .line 435
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->rewind()V

    .line 436
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->absoluteFirstIndex:I

    if-lt p1, v0, :cond_1c

    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->absoluteFirstIndex:I

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    add-int/2addr v0, v1

    if-le p1, v0, :cond_10

    goto :goto_1c

    :cond_10
    const-wide/high16 v0, -0x8000000000000000L

    .line 439
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->startTimeUs:J

    .line 440
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->absoluteFirstIndex:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1f

    const/4 p1, 0x1

    .line 441
    monitor-exit p0

    return p1

    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    .line 437
    monitor-exit p0

    return p1

    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized seekTo(JZ)Z
    .registers 12

    monitor-enter p0

    .line 453
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->rewind()V

    .line 454
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getRelativeIndex(I)I

    move-result v2

    .line 455
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->hasNextSample()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->timesUs:[J

    aget-wide v3, v0, v2

    cmp-long v0, p1, v3

    if-ltz v0, :cond_3e

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->largestQueuedTimestampUs:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_22

    if-nez p3, :cond_22

    goto :goto_3e

    .line 460
    :cond_22
    iget p3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    sub-int v3, p3, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v4, p1

    .line 461
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/SampleQueue;->findSampleBefore(IIJZ)I

    move-result p3
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_40

    const/4 v0, -0x1

    if-ne p3, v0, :cond_34

    .line 463
    monitor-exit p0

    return v7

    .line 465
    :cond_34
    :try_start_34
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->startTimeUs:J

    .line 466
    iget p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_40

    const/4 p1, 0x1

    .line 467
    monitor-exit p0

    return p1

    .line 458
    :cond_3e
    :goto_3e
    monitor-exit p0

    return v7

    :catchall_40
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setSampleOffsetUs(J)V
    .registers 5

    .line 540
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleOffsetUs:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_b

    .line 541
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleOffsetUs:J

    .line 542
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->invalidateUpstreamFormatAdjustment()V

    :cond_b
    return-void
.end method

.method public final setStartTimeUs(J)V
    .registers 3

    .line 214
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->startTimeUs:J

    return-void
.end method

.method public final setUpstreamFormatChangeListener(Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;)V
    .registers 2
    .param p1    # Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 553
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatChangeListener:Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;

    return-void
.end method

.method public final declared-synchronized skip(I)V
    .registers 4

    monitor-enter p0

    if-ltz p1, :cond_e

    .line 502
    :try_start_3
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->length:I

    if-gt v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :catchall_c
    move-exception p1

    goto :goto_19

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 503
    iget v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readPosition:I
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_c

    .line 504
    monitor-exit p0

    return-void

    :goto_19
    monitor-exit p0

    throw p1
.end method

.method public final sourceId(I)V
    .registers 2

    .line 223
    iput p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamSourceId:I

    return-void
.end method

.method public final splice()V
    .registers 2

    const/4 v0, 0x1

    .line 228
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->pendingSplice:Z

    return-void
.end method
