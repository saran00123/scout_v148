.class final Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;
.super Ljava/lang/Object;
.source "AudioTrackPositionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;
    }
.end annotation


# static fields
.field private static final FORCE_RESET_WORKAROUND_TIMEOUT_MS:J = 0xc8L

.field private static final MAX_AUDIO_TIMESTAMP_OFFSET_US:J = 0x4c4b40L

.field private static final MAX_LATENCY_US:J = 0x4c4b40L

.field private static final MAX_PLAYHEAD_OFFSET_COUNT:I = 0xa

.field private static final MIN_LATENCY_SAMPLE_INTERVAL_US:I = 0x7a120

.field private static final MIN_PLAYHEAD_OFFSET_SAMPLE_INTERVAL_US:I = 0x7530

.field private static final MODE_SWITCH_SMOOTHING_DURATION_US:J = 0xf4240L

.field private static final PLAYSTATE_PAUSED:I = 0x2

.field private static final PLAYSTATE_PLAYING:I = 0x3

.field private static final PLAYSTATE_STOPPED:I = 0x1


# instance fields
.field private audioTimestampPoller:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private audioTrack:Landroid/media/AudioTrack;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private audioTrackPlaybackSpeed:F

.field private bufferSize:I

.field private bufferSizeUs:J

.field private endPlaybackHeadPosition:J

.field private forceResetWorkaroundTimeMs:J

.field private getLatencyMethod:Ljava/lang/reflect/Method;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private hasData:Z

.field private isOutputPcm:Z

.field private lastLatencySampleTimeUs:J

.field private lastPlayheadSampleTimeUs:J

.field private lastPositionUs:J

.field private lastRawPlaybackHeadPosition:J

.field private lastSampleUsedGetTimestampMode:Z

.field private lastSystemTimeUs:J

.field private latencyUs:J

.field private final listener:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;

.field private needsPassthroughWorkarounds:Z

.field private nextPlayheadOffsetIndex:I

.field private notifiedPositionIncreasing:Z

.field private outputPcmFrameSize:I

.field private outputSampleRate:I

.field private passthroughWorkaroundPauseOffset:J

.field private playheadOffsetCount:I

.field private final playheadOffsets:[J

.field private previousModePositionUs:J

.field private previousModeSystemTimeUs:J

.field private rawPlaybackHeadWrapCount:J

.field private smoothedPlayheadOffsetUs:J

.field private stopPlaybackHeadPosition:J

.field private stopTimestampUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;)V
    .registers 4

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->listener:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;

    .line 194
    sget p1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v0, 0x12

    if-lt p1, v0, :cond_1e

    .line 196
    :try_start_11
    const-class p1, Landroid/media/AudioTrack;

    const-string v0, "getLatency"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getLatencyMethod:Ljava/lang/reflect/Method;
    :try_end_1e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_11 .. :try_end_1e} :catch_1e

    :catch_1e
    :cond_1e
    const/16 p1, 0xa

    .line 201
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->playheadOffsets:[J

    return-void
.end method

.method private forceHasPendingData()Z
    .registers 5

    .line 549
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    .line 550
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1f

    .line 551
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return v0
.end method

.method private framesToDurationUs(J)J
    .registers 5

    const-wide/32 v0, 0xf4240

    mul-long/2addr p1, v0

    .line 530
    iget v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->outputSampleRate:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method private getPlaybackHeadPosition()J
    .registers 12

    .line 576
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    .line 577
    iget-wide v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2f

    .line 579
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    sub-long/2addr v0, v2

    .line 580
    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->outputSampleRate:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 581
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->endPlaybackHeadPosition:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->stopPlaybackHeadPosition:J

    add-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 584
    :cond_2f
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x1

    const-wide/16 v5, 0x0

    if-ne v1, v2, :cond_39

    return-wide v5

    :cond_39
    const-wide v7, 0xffffffffL

    .line 590
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    int-to-long v9, v0

    and-long/2addr v7, v9

    .line 591
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    if-eqz v0, :cond_56

    const/4 v0, 0x2

    if-ne v1, v0, :cond_53

    cmp-long v0, v7, v5

    if-nez v0, :cond_53

    .line 596
    iget-wide v9, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastRawPlaybackHeadPosition:J

    iput-wide v9, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->passthroughWorkaroundPauseOffset:J

    .line 598
    :cond_53
    iget-wide v9, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->passthroughWorkaroundPauseOffset:J

    add-long/2addr v7, v9

    .line 601
    :cond_56
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x1d

    if-gt v0, v2, :cond_7a

    cmp-long v0, v7, v5

    if-nez v0, :cond_78

    .line 602
    iget-wide v9, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastRawPlaybackHeadPosition:J

    cmp-long v0, v9, v5

    if-lez v0, :cond_78

    const/4 v0, 0x3

    if-ne v1, v0, :cond_78

    .line 610
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_75

    .line 611
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    .line 613
    :cond_75
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastRawPlaybackHeadPosition:J

    return-wide v0

    .line 615
    :cond_78
    iput-wide v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    .line 619
    :cond_7a
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastRawPlaybackHeadPosition:J

    cmp-long v0, v0, v7

    if-lez v0, :cond_87

    .line 621
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->rawPlaybackHeadWrapCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->rawPlaybackHeadWrapCount:J

    .line 623
    :cond_87
    iput-wide v7, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastRawPlaybackHeadPosition:J

    .line 624
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->rawPlaybackHeadWrapCount:J

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    add-long/2addr v7, v0

    return-wide v7
.end method

.method private getPlaybackHeadPositionUs()J
    .registers 3

    .line 564
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->framesToDurationUs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private maybePollAndCheckTimestamp(JJ)V
    .registers 16

    .line 475
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTimestampPoller:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;

    .line 476
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->maybePollTimestamp(J)Z

    move-result v1

    if-nez v1, :cond_f

    return-void

    .line 481
    :cond_f
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->getTimestampSystemTimeUs()J

    move-result-wide v5

    .line 482
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->getTimestampPositionFrames()J

    move-result-wide v3

    sub-long v1, v5, p1

    .line 483
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v7, 0x4c4b40

    cmp-long v1, v1, v7

    if-lez v1, :cond_2f

    .line 484
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->listener:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;

    move-wide v7, p1

    move-wide v9, p3

    invoke-interface/range {v2 .. v10}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;->onSystemTimeUsMismatch(JJJJ)V

    .line 489
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->rejectTimestamp()V

    goto :goto_4a

    .line 490
    :cond_2f
    invoke-direct {p0, v3, v4}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->framesToDurationUs(J)J

    move-result-wide v1

    sub-long/2addr v1, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    cmp-long v1, v1, v7

    if-lez v1, :cond_47

    .line 492
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->listener:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;

    move-wide v7, p1

    move-wide v9, p3

    invoke-interface/range {v2 .. v10}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;->onPositionFramesMismatch(JJJJ)V

    .line 497
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->rejectTimestamp()V

    goto :goto_4a

    .line 499
    :cond_47
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->acceptTimestamp()V

    :goto_4a
    return-void
.end method

.method private maybeSampleSyncParams()V
    .registers 14

    .line 444
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getPlaybackHeadPositionUs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    return-void

    .line 449
    :cond_b
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 450
    iget-wide v6, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastPlayheadSampleTimeUs:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x7530

    cmp-long v6, v6, v8

    if-ltz v6, :cond_4a

    .line 452
    iget-object v6, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->playheadOffsets:[J

    iget v7, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->nextPlayheadOffsetIndex:I

    sub-long v8, v0, v4

    aput-wide v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    const/16 v6, 0xa

    .line 453
    rem-int/2addr v7, v6

    iput v7, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->nextPlayheadOffsetIndex:I

    .line 454
    iget v7, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    if-ge v7, v6, :cond_33

    add-int/lit8 v7, v7, 0x1

    .line 455
    iput v7, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    .line 457
    :cond_33
    iput-wide v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastPlayheadSampleTimeUs:J

    .line 458
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    const/4 v2, 0x0

    .line 459
    :goto_38
    iget v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    if-ge v2, v3, :cond_4a

    .line 460
    iget-wide v6, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    iget-object v8, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->playheadOffsets:[J

    aget-wide v9, v8, v2

    int-to-long v11, v3

    div-long/2addr v9, v11

    add-long/2addr v6, v9

    iput-wide v6, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 464
    :cond_4a
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    if-eqz v2, :cond_4f

    return-void

    .line 470
    :cond_4f
    invoke-direct {p0, v4, v5, v0, v1}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->maybePollAndCheckTimestamp(JJ)V

    .line 471
    invoke-direct {p0, v4, v5}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->maybeUpdateLatency(J)V

    return-void
.end method

.method private maybeUpdateLatency(J)V
    .registers 9

    .line 504
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->isOutputPcm:Z

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getLatencyMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_57

    iget-wide v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastLatencySampleTimeUs:J

    sub-long v1, p1, v1

    const-wide/32 v3, 0x7a120

    cmp-long v1, v1, v3

    if-ltz v1, :cond_57

    .line 510
    :try_start_13
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    .line 511
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->bufferSizeUs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->latencyUs:J

    .line 515
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->latencyUs:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->latencyUs:J

    .line 517
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->latencyUs:J

    const-wide/32 v4, 0x4c4b40

    cmp-long v0, v0, v4

    if-lez v0, :cond_55

    .line 518
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->listener:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->latencyUs:J

    invoke-interface {v0, v4, v5}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;->onInvalidLatency(J)V

    .line 519
    iput-wide v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->latencyUs:J
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_51} :catch_52

    goto :goto_55

    :catch_52
    const/4 v0, 0x0

    .line 523
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getLatencyMethod:Ljava/lang/reflect/Method;

    .line 525
    :cond_55
    :goto_55
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastLatencySampleTimeUs:J

    :cond_57
    return-void
.end method

.method private static needsPassthroughWorkarounds(I)Z
    .registers 3

    .line 559
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_e

    const/4 v0, 0x5

    if-eq p0, v0, :cond_c

    const/4 v0, 0x6

    if-ne p0, v0, :cond_e

    :cond_c
    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private resetSyncParams()V
    .registers 4

    const-wide/16 v0, 0x0

    .line 534
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    const/4 v2, 0x0

    .line 535
    iput v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    .line 536
    iput v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->nextPlayheadOffsetIndex:I

    .line 537
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastPlayheadSampleTimeUs:J

    .line 538
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastSystemTimeUs:J

    .line 539
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->previousModeSystemTimeUs:J

    .line 540
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->notifiedPositionIncreasing:Z

    return-void
.end method


# virtual methods
.method public getAvailableBufferSize(J)I
    .registers 7

    .line 376
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->outputPcmFrameSize:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    sub-long/2addr p1, v0

    long-to-int p1, p1

    .line 377
    iget p2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->bufferSize:I

    sub-int/2addr p2, p1

    return p2
.end method

.method public getCurrentPositionUs(Z)J
    .registers 19

    move-object/from16 v0, p0

    .line 250
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 251
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->maybeSampleSyncParams()V

    .line 256
    :cond_14
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 258
    iget-object v5, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTimestampPoller:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;

    .line 259
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->hasAdvancingTimestamp()Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 262
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->getTimestampPositionFrames()J

    move-result-wide v7

    .line 263
    invoke-direct {v0, v7, v8}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->framesToDurationUs(J)J

    move-result-wide v7

    .line 264
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->getTimestampSystemTimeUs()J

    move-result-wide v9

    sub-long v9, v1, v9

    .line 265
    iget v5, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    .line 266
    invoke-static {v9, v10, v5}, Lcom/google/android/exoplayer2/util/Util;->getMediaDurationForPlayoutDuration(JF)J

    move-result-wide v9

    add-long/2addr v7, v9

    goto :goto_56

    .line 269
    :cond_3f
    iget v5, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    if-nez v5, :cond_48

    .line 271
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getPlaybackHeadPositionUs()J

    move-result-wide v7

    goto :goto_4b

    .line 276
    :cond_48
    iget-wide v7, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    add-long/2addr v7, v1

    :goto_4b
    if-nez p1, :cond_56

    const-wide/16 v9, 0x0

    .line 279
    iget-wide v11, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->latencyUs:J

    sub-long/2addr v7, v11

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 283
    :cond_56
    :goto_56
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastSampleUsedGetTimestampMode:Z

    if-eq v5, v6, :cond_62

    .line 285
    iget-wide v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastSystemTimeUs:J

    iput-wide v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->previousModeSystemTimeUs:J

    .line 286
    iget-wide v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastPositionUs:J

    iput-wide v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->previousModePositionUs:J

    .line 288
    :cond_62
    iget-wide v9, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->previousModeSystemTimeUs:J

    sub-long v9, v1, v9

    const-wide/32 v11, 0xf4240

    cmp-long v5, v9, v11

    if-gez v5, :cond_7e

    .line 292
    iget-wide v13, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->previousModePositionUs:J

    iget v5, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    .line 294
    invoke-static {v9, v10, v5}, Lcom/google/android/exoplayer2/util/Util;->getMediaDurationForPlayoutDuration(JF)J

    move-result-wide v15

    add-long/2addr v13, v15

    mul-long/2addr v9, v3

    .line 297
    div-long/2addr v9, v11

    mul-long/2addr v7, v9

    sub-long v9, v3, v9

    mul-long/2addr v9, v13

    add-long/2addr v7, v9

    .line 300
    div-long/2addr v7, v3

    .line 303
    :cond_7e
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->notifiedPositionIncreasing:Z

    if-nez v3, :cond_a5

    iget-wide v3, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastPositionUs:J

    cmp-long v5, v7, v3

    if-lez v5, :cond_a5

    const/4 v5, 0x1

    .line 304
    iput-boolean v5, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->notifiedPositionIncreasing:Z

    sub-long v3, v7, v3

    .line 305
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v3

    .line 306
    iget v5, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    .line 307
    invoke-static {v3, v4, v5}, Lcom/google/android/exoplayer2/util/Util;->getPlayoutDurationForMediaDuration(JF)J

    move-result-wide v3

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v3

    sub-long/2addr v9, v3

    .line 311
    iget-object v3, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->listener:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;

    invoke-interface {v3, v9, v10}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;->onPositionAdvancing(J)V

    .line 314
    :cond_a5
    iput-wide v1, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastSystemTimeUs:J

    .line 315
    iput-wide v7, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastPositionUs:J

    .line 316
    iput-boolean v6, v0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastSampleUsedGetTimestampMode:Z

    return-wide v7
.end method

.method public getPendingBufferDurationMs(J)J
    .registers 5

    .line 382
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->framesToDurationUs(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public handleEndOfStream(J)V
    .registers 7

    .line 400
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->stopPlaybackHeadPosition:J

    .line 401
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    .line 402
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->endPlaybackHeadPosition:J

    return-void
.end method

.method public hasPendingData(J)Z
    .registers 5

    .line 412
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-gtz p1, :cond_11

    .line 413
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->forceHasPendingData()Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p1, 0x1

    :goto_12
    return p1
.end method

.method public isPlaying()Z
    .registers 3

    .line 328
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public isStalled(J)Z
    .registers 7

    .line 387
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_20

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_20

    .line 389
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0xc8

    cmp-long p1, p1, v0

    if-ltz p1, :cond_20

    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    return p1
.end method

.method public mayHandleBuffer(J)Z
    .registers 11

    .line 339
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    .line 340
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_25

    const/4 v1, 0x2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_18

    .line 345
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->hasData:Z

    return v3

    :cond_18
    if-ne v0, v2, :cond_25

    .line 352
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_25

    return v3

    .line 357
    :cond_25
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->hasData:Z

    .line 358
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->hasPendingData(J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->hasData:Z

    if-eqz v1, :cond_42

    .line 359
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->hasData:Z

    if-nez p1, :cond_42

    if-eq v0, v2, :cond_42

    .line 360
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->listener:Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;

    iget p2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->bufferSize:I

    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->bufferSizeUs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker$Listener;->onUnderrun(IJ)V

    :cond_42
    return v2
.end method

.method public pause()Z
    .registers 5

    .line 422
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->resetSyncParams()V

    .line 423
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 426
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTimestampPoller:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->reset()V

    const/4 v0, 0x1

    return v0

    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .registers 2

    .line 438
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->resetSyncParams()V

    const/4 v0, 0x0

    .line 439
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    .line 440
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTimestampPoller:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;

    return-void
.end method

.method public setAudioTrack(Landroid/media/AudioTrack;ZIII)V
    .registers 8

    .line 221
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    .line 222
    iput p4, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->outputPcmFrameSize:I

    .line 223
    iput p5, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->bufferSize:I

    .line 224
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTimestampPoller:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;

    .line 225
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->outputSampleRate:I

    const/4 p1, 0x0

    if-eqz p2, :cond_1e

    .line 226
    invoke-static {p3}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds(I)Z

    move-result p2

    if-eqz p2, :cond_1e

    const/4 p2, 0x1

    goto :goto_1f

    :cond_1e
    move p2, p1

    :goto_1f
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    .line 227
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Util;->isEncodingLinearPcm(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->isOutputPcm:Z

    .line 228
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->isOutputPcm:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p2, :cond_37

    div-int/2addr p5, p4

    int-to-long p2, p5

    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->framesToDurationUs(J)J

    move-result-wide p2

    goto :goto_38

    :cond_37
    move-wide p2, v0

    :goto_38
    iput-wide p2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->bufferSizeUs:J

    const-wide/16 p2, 0x0

    .line 229
    iput-wide p2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastRawPlaybackHeadPosition:J

    .line 230
    iput-wide p2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->rawPlaybackHeadWrapCount:J

    .line 231
    iput-wide p2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->passthroughWorkaroundPauseOffset:J

    .line 232
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->hasData:Z

    .line 233
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    .line 234
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    .line 235
    iput-wide p2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->lastLatencySampleTimeUs:J

    .line 236
    iput-wide p2, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->latencyUs:J

    const/high16 p1, 0x3f800000    # 1.0f

    .line 237
    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    return-void
.end method

.method public setAudioTrackPlaybackSpeed(F)V
    .registers 2

    .line 241
    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    .line 244
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTimestampPoller:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;

    if-eqz p1, :cond_9

    .line 245
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->reset()V

    :cond_9
    return-void
.end method

.method public start()V
    .registers 2

    .line 323
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioTrackPositionTracker;->audioTimestampPoller:Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioTimestampPoller;->reset()V

    return-void
.end method
