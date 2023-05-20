.class public final Lcom/google/android/exoplayer2/device/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/device/DeviceInfo$PlaybackType;
    }
.end annotation


# static fields
.field public static final PLAYBACK_TYPE_LOCAL:I = 0x0

.field public static final PLAYBACK_TYPE_REMOTE:I = 0x1

.field public static final UNKNOWN:Lcom/google/android/exoplayer2/device/DeviceInfo;


# instance fields
.field public final maxVolume:I

.field public final minVolume:I

.field public final playbackType:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 44
    new-instance v0, Lcom/google/android/exoplayer2/device/DeviceInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/google/android/exoplayer2/device/DeviceInfo;-><init>(III)V

    sput-object v0, Lcom/google/android/exoplayer2/device/DeviceInfo;->UNKNOWN:Lcom/google/android/exoplayer2/device/DeviceInfo;

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/google/android/exoplayer2/device/DeviceInfo;->playbackType:I

    .line 57
    iput p2, p0, Lcom/google/android/exoplayer2/device/DeviceInfo;->minVolume:I

    .line 58
    iput p3, p0, Lcom/google/android/exoplayer2/device/DeviceInfo;->maxVolume:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 66
    :cond_4
    instance-of v1, p1, Lcom/google/android/exoplayer2/device/DeviceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 69
    :cond_a
    check-cast p1, Lcom/google/android/exoplayer2/device/DeviceInfo;

    .line 70
    iget v1, p0, Lcom/google/android/exoplayer2/device/DeviceInfo;->playbackType:I

    iget v3, p1, Lcom/google/android/exoplayer2/device/DeviceInfo;->playbackType:I

    if-ne v1, v3, :cond_1f

    iget v1, p0, Lcom/google/android/exoplayer2/device/DeviceInfo;->minVolume:I

    iget v3, p1, Lcom/google/android/exoplayer2/device/DeviceInfo;->minVolume:I

    if-ne v1, v3, :cond_1f

    iget v1, p0, Lcom/google/android/exoplayer2/device/DeviceInfo;->maxVolume:I

    iget p1, p1, Lcom/google/android/exoplayer2/device/DeviceInfo;->maxVolume:I

    if-ne v1, p1, :cond_1f

    goto :goto_20

    :cond_1f
    move v0, v2

    :goto_20
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 78
    iget v0, p0, Lcom/google/android/exoplayer2/device/DeviceInfo;->playbackType:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 79
    iget v0, p0, Lcom/google/android/exoplayer2/device/DeviceInfo;->minVolume:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 80
    iget v0, p0, Lcom/google/android/exoplayer2/device/DeviceInfo;->maxVolume:I

    add-int/2addr v1, v0

    return v1
.end method
