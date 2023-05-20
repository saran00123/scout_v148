.class Lanet/channel/strategy/ConnHistoryItem;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field a:B

.field b:J

.field c:J


# direct methods
.method constructor <init>()V
    .registers 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-byte v0, p0, Lanet/channel/strategy/ConnHistoryItem;->a:B

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lanet/channel/strategy/ConnHistoryItem;->b:J

    .line 18
    iput-wide v0, p0, Lanet/channel/strategy/ConnHistoryItem;->c:J

    return-void
.end method


# virtual methods
.method a()I
    .registers 4

    .line 35
    iget-byte v0, p0, Lanet/channel/strategy/ConnHistoryItem;->a:B

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    :goto_5
    if-lez v0, :cond_d

    and-int/lit8 v2, v0, 0x1

    add-int/2addr v1, v2

    shr-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_d
    return v1
.end method

.method a(Z)V
    .registers 8

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p1, :cond_9

    .line 22
    iget-wide v2, p0, Lanet/channel/strategy/ConnHistoryItem;->b:J

    goto :goto_b

    :cond_9
    iget-wide v2, p0, Lanet/channel/strategy/ConnHistoryItem;->c:J

    :goto_b
    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-lez v2, :cond_24

    .line 24
    iget-byte v2, p0, Lanet/channel/strategy/ConnHistoryItem;->a:B

    shl-int/lit8 v2, v2, 0x1

    xor-int/lit8 v3, p1, 0x1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    iput-byte v2, p0, Lanet/channel/strategy/ConnHistoryItem;->a:B

    if-eqz p1, :cond_22

    .line 26
    iput-wide v0, p0, Lanet/channel/strategy/ConnHistoryItem;->b:J

    goto :goto_24

    .line 28
    :cond_22
    iput-wide v0, p0, Lanet/channel/strategy/ConnHistoryItem;->c:J

    :cond_24
    :goto_24
    return-void
.end method

.method b()Z
    .registers 3

    .line 43
    iget-byte v0, p0, Lanet/channel/strategy/ConnHistoryItem;->a:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method c()Z
    .registers 7

    .line 47
    invoke-virtual {p0}, Lanet/channel/strategy/ConnHistoryItem;->a()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_9

    return v1

    .line 51
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lanet/channel/strategy/ConnHistoryItem;->c:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x493e0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1
.end method

.method d()Z
    .registers 6

    .line 55
    iget-wide v0, p0, Lanet/channel/strategy/ConnHistoryItem;->b:J

    iget-wide v2, p0, Lanet/channel/strategy/ConnHistoryItem;->c:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_9

    goto :goto_a

    :cond_9
    move-wide v0, v2

    :goto_a
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1e

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x5265c00

    cmp-long v0, v2, v0

    if-lez v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method
