.class public Lcom/xuhao/didi/socket/common/interfaces/utils/ThreadUtils;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sleep(J)V
    .registers 7

    const-wide/16 v0, 0x0

    move-wide v2, p0

    move-wide p0, v0

    :goto_4
    sub-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1b

    sub-long/2addr v2, v0

    .line 15
    :try_start_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    .line 16
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_15} :catch_16

    goto :goto_4

    .line 19
    :catch_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_4

    :cond_1b
    return-void
.end method
