.class public final Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LiveConfiguration"
.end annotation


# static fields
.field public static final UNSET:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;


# instance fields
.field public final maxOffsetMs:J

.field public final maxPlaybackSpeed:F

.field public final minOffsetMs:J

.field public final minPlaybackSpeed:F

.field public final targetOffsetMs:J


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 842
    new-instance v9, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const v7, -0x800001

    const v8, -0x800001

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;-><init>(JJJFF)V

    sput-object v9, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->UNSET:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    return-void
.end method

.method public constructor <init>(JJJFF)V
    .registers 9

    .line 899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 900
    iput-wide p1, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    .line 901
    iput-wide p3, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minOffsetMs:J

    .line 902
    iput-wide p5, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxOffsetMs:J

    .line 903
    iput p7, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    .line 904
    iput p8, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 912
    :cond_4
    instance-of v1, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 915
    :cond_a
    check-cast p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 917
    iget-wide v3, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    iget-wide v5, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_35

    iget-wide v3, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minOffsetMs:J

    iget-wide v5, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minOffsetMs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_35

    iget-wide v3, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxOffsetMs:J

    iget-wide v5, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxOffsetMs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_35

    iget v1, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    iget v3, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_35

    iget v1, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    iget p1, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_35

    goto :goto_36

    :cond_35
    move v0, v2

    :goto_36
    return v0
.end method

.method public hashCode()I
    .registers 8

    .line 926
    iget-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    .line 927
    iget-wide v3, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minOffsetMs:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 928
    iget-wide v3, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxOffsetMs:J

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 929
    iget v1, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const/4 v4, 0x0

    if-eqz v3, :cond_29

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_2a

    :cond_29
    move v1, v4

    :goto_2a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 930
    iget v1, p0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_37

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    :cond_37
    add-int/2addr v0, v4

    return v0
.end method
