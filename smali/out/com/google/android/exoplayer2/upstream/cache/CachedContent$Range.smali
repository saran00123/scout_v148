.class final Lcom/google/android/exoplayer2/upstream/cache/CachedContent$Range;
.super Ljava/lang/Object;
.source "CachedContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Range"
.end annotation


# instance fields
.field public final length:J

.field public final position:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 5

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent$Range;->position:J

    .line 288
    iput-wide p3, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent$Range;->length:J

    return-void
.end method


# virtual methods
.method public contains(JJ)Z
    .registers 12

    .line 300
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent$Range;->length:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_13

    .line 301
    iget-wide p3, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent$Range;->position:J

    cmp-long p1, p1, p3

    if-ltz p1, :cond_11

    goto :goto_12

    :cond_11
    move v5, v6

    :goto_12
    return v5

    :cond_13
    cmp-long v2, p3, v2

    if-nez v2, :cond_18

    return v6

    .line 305
    :cond_18
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent$Range;->position:J

    cmp-long v4, v2, p1

    if-gtz v4, :cond_25

    add-long/2addr p1, p3

    add-long/2addr v2, v0

    cmp-long p1, p1, v2

    if-gtz p1, :cond_25

    goto :goto_26

    :cond_25
    move v5, v6

    :goto_26
    return v5
.end method

.method public intersects(JJ)Z
    .registers 12

    .line 318
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent$Range;->position:J

    cmp-long v2, v0, p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, -0x1

    if-gtz v2, :cond_17

    .line 319
    iget-wide p3, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContent$Range;->length:J

    cmp-long v2, p3, v5

    if-eqz v2, :cond_15

    add-long/2addr v0, p3

    cmp-long p1, v0, p1

    if-lez p1, :cond_16

    :cond_15
    move v3, v4

    :cond_16
    return v3

    :cond_17
    cmp-long v2, p3, v5

    if-eqz v2, :cond_20

    add-long/2addr p1, p3

    cmp-long p1, p1, v0

    if-lez p1, :cond_21

    :cond_20
    move v3, v4

    :cond_21
    return v3
.end method
