.class final Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;
.super Ljava/lang/Object;
.source "CompositeMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
.implements Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/CompositeMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ForwardingEventListener"
.end annotation


# instance fields
.field private drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

.field private final id:Ljava/lang/Object;
    .annotation build Lcom/google/android/exoplayer2/util/UnknownNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field final synthetic this$0:Lcom/google/android/exoplayer2/source/CompositeMediaSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/CompositeMediaSource;Ljava/lang/Object;)V
    .registers 5
    .param p1    # Lcom/google/android/exoplayer2/source/CompositeMediaSource;
        .annotation build Lcom/google/android/exoplayer2/util/UnknownNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 216
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/source/CompositeMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 217
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->createEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 218
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->createDrmEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 219
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->id:Ljava/lang/Object;

    return-void
.end method

.method private maybeUpdateEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z
    .registers 6
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_e

    .line 340
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/source/CompositeMediaSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->id:Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p2

    if-nez p2, :cond_f

    const/4 p1, 0x0

    return p1

    :cond_e
    const/4 p2, 0x0

    .line 346
    :cond_f
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/source/CompositeMediaSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->id:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->getWindowIndexForChildWindowIndex(Ljava/lang/Object;I)I

    move-result p1

    .line 347
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget v0, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    if-ne v0, p1, :cond_27

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 348
    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 349
    :cond_27
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/source/CompositeMediaSource;

    const-wide/16 v1, 0x0

    .line 350
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->createEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 352
    :cond_31
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    iget v0, v0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->windowIndex:I

    if-ne v0, p1, :cond_41

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v0, v0, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 353
    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 354
    :cond_41
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/source/CompositeMediaSource;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->createDrmEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    :cond_49
    const/4 p1, 0x1

    return p1
.end method

.method private maybeUpdateMediaLoadData(Lcom/google/android/exoplayer2/source/MediaLoadData;)Lcom/google/android/exoplayer2/source/MediaLoadData;
    .registers 16

    .line 360
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/source/CompositeMediaSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->id:Ljava/lang/Object;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/MediaLoadData;->mediaStartTimeMs:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->getMediaTimeForChildMediaTime(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 361
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->this$0:Lcom/google/android/exoplayer2/source/CompositeMediaSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->id:Ljava/lang/Object;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/MediaLoadData;->mediaEndTimeMs:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->getMediaTimeForChildMediaTime(Ljava/lang/Object;J)J

    move-result-wide v12

    .line 362
    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/MediaLoadData;->mediaStartTimeMs:J

    cmp-long v0, v10, v0

    if-nez v0, :cond_21

    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/MediaLoadData;->mediaEndTimeMs:J

    cmp-long v0, v12, v0

    if-nez v0, :cond_21

    return-object p1

    .line 366
    :cond_21
    new-instance v0, Lcom/google/android/exoplayer2/source/MediaLoadData;

    iget v5, p1, Lcom/google/android/exoplayer2/source/MediaLoadData;->dataType:I

    iget v6, p1, Lcom/google/android/exoplayer2/source/MediaLoadData;->trackType:I

    iget-object v7, p1, Lcom/google/android/exoplayer2/source/MediaLoadData;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v8, p1, Lcom/google/android/exoplayer2/source/MediaLoadData;->trackSelectionReason:I

    iget-object v9, p1, Lcom/google/android/exoplayer2/source/MediaLoadData;->trackSelectionData:Ljava/lang/Object;

    move-object v4, v0

    invoke-direct/range {v4 .. v13}, Lcom/google/android/exoplayer2/source/MediaLoadData;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    return-object v0
.end method


# virtual methods
.method public onDownstreamFormatChanged(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 4
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 285
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 286
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateMediaLoadData(Lcom/google/android/exoplayer2/source/MediaLoadData;)Lcom/google/android/exoplayer2/source/MediaLoadData;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    :cond_f
    return-void
.end method

.method public onDrmKeysLoaded(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 3
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 301
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 302
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmKeysLoaded()V

    :cond_b
    return-void
.end method

.method public onDrmKeysRemoved(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 3
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 323
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 324
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmKeysRemoved()V

    :cond_b
    return-void
.end method

.method public onDrmKeysRestored(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 3
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 316
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 317
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmKeysRestored()V

    :cond_b
    return-void
.end method

.method public onDrmSessionAcquired(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 3
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 294
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 295
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionAcquired()V

    :cond_b
    return-void
.end method

.method public onDrmSessionManagerError(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V
    .registers 4
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 309
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 310
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionManagerError(Ljava/lang/Exception;)V

    :cond_b
    return-void
.end method

.method public onDrmSessionReleased(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .registers 3
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 330
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 331
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionReleased()V

    :cond_b
    return-void
.end method

.method public onLoadCanceled(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 5
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 254
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 255
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 256
    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateMediaLoadData(Lcom/google/android/exoplayer2/source/MediaLoadData;)Lcom/google/android/exoplayer2/source/MediaLoadData;

    move-result-object p2

    .line 255
    invoke-virtual {p1, p3, p2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    :cond_f
    return-void
.end method

.method public onLoadCompleted(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 5
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 242
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 243
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 244
    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateMediaLoadData(Lcom/google/android/exoplayer2/source/MediaLoadData;)Lcom/google/android/exoplayer2/source/MediaLoadData;

    move-result-object p2

    .line 243
    invoke-virtual {p1, p3, p2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    :cond_f
    return-void
.end method

.method public onLoadError(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V
    .registers 7
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 268
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 269
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 270
    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateMediaLoadData(Lcom/google/android/exoplayer2/source/MediaLoadData;)Lcom/google/android/exoplayer2/source/MediaLoadData;

    move-result-object p2

    .line 269
    invoke-virtual {p1, p3, p2, p5, p6}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V

    :cond_f
    return-void
.end method

.method public onLoadStarted(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 5
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 230
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 231
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 232
    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateMediaLoadData(Lcom/google/android/exoplayer2/source/MediaLoadData;)Lcom/google/android/exoplayer2/source/MediaLoadData;

    move-result-object p2

    .line 231
    invoke-virtual {p1, p3, p2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    :cond_f
    return-void
.end method

.method public onUpstreamDiscarded(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 4
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 277
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 278
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateMediaLoadData(Lcom/google/android/exoplayer2/source/MediaLoadData;)Lcom/google/android/exoplayer2/source/MediaLoadData;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->upstreamDiscarded(Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    :cond_f
    return-void
.end method
