.class final Lcom/google/android/exoplayer2/offline/DownloadHelper$DownloadTrackSelection$Factory;
.super Ljava/lang/Object;
.source "DownloadHelper.java"

# interfaces
.implements Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/DownloadHelper$DownloadTrackSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1070
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadHelper$1;)V
    .registers 2

    .line 1070
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper$DownloadTrackSelection$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public createTrackSelections([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;)[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .registers 7

    .line 1078
    array-length p2, p1

    new-array p2, p2, [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    const/4 p3, 0x0

    .line 1079
    :goto_4
    array-length p4, p1

    if-ge p3, p4, :cond_1f

    .line 1081
    aget-object p4, p1, p3

    if-nez p4, :cond_d

    const/4 p4, 0x0

    goto :goto_1a

    .line 1083
    :cond_d
    new-instance p4, Lcom/google/android/exoplayer2/offline/DownloadHelper$DownloadTrackSelection;

    aget-object v0, p1, p3

    iget-object v0, v0, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->group:Lcom/google/android/exoplayer2/source/TrackGroup;

    aget-object v1, p1, p3

    iget-object v1, v1, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->tracks:[I

    invoke-direct {p4, v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadHelper$DownloadTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    :goto_1a
    aput-object p4, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_1f
    return-object p2
.end method
