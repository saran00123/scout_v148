.class Lanet/channel/monitor/d;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lanet/channel/monitor/b;


# direct methods
.method constructor <init>(Lanet/channel/monitor/b;JJJ)V
    .registers 8

    .line 103
    iput-object p1, p0, Lanet/channel/monitor/d;->d:Lanet/channel/monitor/b;

    iput-wide p2, p0, Lanet/channel/monitor/d;->a:J

    iput-wide p4, p0, Lanet/channel/monitor/d;->b:J

    iput-wide p6, p0, Lanet/channel/monitor/d;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .line 106
    sget v0, Lanet/channel/monitor/b;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lanet/channel/monitor/b;->a:I

    .line 107
    sget-wide v2, Lanet/channel/monitor/b;->e:J

    iget-wide v4, p0, Lanet/channel/monitor/d;->a:J

    add-long/2addr v2, v4

    sput-wide v2, Lanet/channel/monitor/b;->e:J

    .line 109
    sget v0, Lanet/channel/monitor/b;->a:I

    if-ne v0, v1, :cond_18

    .line 110
    iget-wide v2, p0, Lanet/channel/monitor/d;->b:J

    iget-wide v4, p0, Lanet/channel/monitor/d;->c:J

    sub-long/2addr v2, v4

    sput-wide v2, Lanet/channel/monitor/b;->d:J

    .line 113
    :cond_18
    sget v0, Lanet/channel/monitor/b;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-lt v0, v2, :cond_59

    sget v0, Lanet/channel/monitor/b;->a:I

    if-gt v0, v3, :cond_59

    .line 115
    iget-wide v4, p0, Lanet/channel/monitor/d;->c:J

    sget-wide v6, Lanet/channel/monitor/b;->c:J

    cmp-long v0, v4, v6

    if-ltz v0, :cond_35

    .line 116
    sget-wide v4, Lanet/channel/monitor/b;->d:J

    iget-wide v6, p0, Lanet/channel/monitor/d;->b:J

    iget-wide v8, p0, Lanet/channel/monitor/d;->c:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    sput-wide v4, Lanet/channel/monitor/b;->d:J

    goto :goto_59

    .line 119
    :cond_35
    iget-wide v4, p0, Lanet/channel/monitor/d;->c:J

    sget-wide v6, Lanet/channel/monitor/b;->c:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_59

    iget-wide v4, p0, Lanet/channel/monitor/d;->b:J

    sget-wide v6, Lanet/channel/monitor/b;->c:J

    cmp-long v0, v4, v6

    if-ltz v0, :cond_59

    .line 120
    sget-wide v4, Lanet/channel/monitor/b;->d:J

    iget-wide v6, p0, Lanet/channel/monitor/d;->b:J

    iget-wide v8, p0, Lanet/channel/monitor/d;->c:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    sput-wide v4, Lanet/channel/monitor/b;->d:J

    .line 121
    sget-wide v4, Lanet/channel/monitor/b;->d:J

    sget-wide v6, Lanet/channel/monitor/b;->c:J

    iget-wide v8, p0, Lanet/channel/monitor/d;->c:J

    sub-long/2addr v6, v8

    sub-long/2addr v4, v6

    sput-wide v4, Lanet/channel/monitor/b;->d:J

    .line 129
    :cond_59
    :goto_59
    iget-wide v4, p0, Lanet/channel/monitor/d;->c:J

    sput-wide v4, Lanet/channel/monitor/b;->b:J

    .line 130
    iget-wide v4, p0, Lanet/channel/monitor/d;->b:J

    sput-wide v4, Lanet/channel/monitor/b;->c:J

    .line 132
    sget v0, Lanet/channel/monitor/b;->a:I

    if-ne v0, v3, :cond_15e

    .line 133
    iget-object v0, p0, Lanet/channel/monitor/d;->d:Lanet/channel/monitor/b;

    invoke-static {v0}, Lanet/channel/monitor/b;->a(Lanet/channel/monitor/b;)Lanet/channel/monitor/e;

    move-result-object v0

    sget-wide v4, Lanet/channel/monitor/b;->e:J

    long-to-double v4, v4

    sget-wide v6, Lanet/channel/monitor/b;->d:J

    long-to-double v6, v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lanet/channel/monitor/e;->a(DD)D

    move-result-wide v4

    double-to-long v4, v4

    long-to-double v4, v4

    sput-wide v4, Lanet/channel/monitor/b;->i:D

    .line 135
    sget-wide v4, Lanet/channel/monitor/b;->f:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    sput-wide v4, Lanet/channel/monitor/b;->f:J

    .line 136
    iget-object v0, p0, Lanet/channel/monitor/d;->d:Lanet/channel/monitor/b;

    invoke-static {v0}, Lanet/channel/monitor/b;->b(Lanet/channel/monitor/b;)I

    .line 139
    sget-wide v4, Lanet/channel/monitor/b;->f:J

    const-wide/16 v6, 0x1e

    cmp-long v0, v4, v6

    if-lez v0, :cond_9a

    .line 140
    iget-object v0, p0, Lanet/channel/monitor/d;->d:Lanet/channel/monitor/b;

    invoke-static {v0}, Lanet/channel/monitor/b;->a(Lanet/channel/monitor/b;)Lanet/channel/monitor/e;

    move-result-object v0

    invoke-virtual {v0}, Lanet/channel/monitor/e;->a()V

    const-wide/16 v4, 0x3

    .line 141
    sput-wide v4, Lanet/channel/monitor/b;->f:J

    .line 145
    :cond_9a
    sget-wide v4, Lanet/channel/monitor/b;->i:D

    const-wide v6, 0x3fe5c28f5c28f5c3L    # 0.68

    mul-double/2addr v4, v6

    sget-wide v6, Lanet/channel/monitor/b;->h:D

    const-wide v8, 0x3fd147ae147ae148L    # 0.27

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    sget-wide v6, Lanet/channel/monitor/b;->g:D

    const-wide v8, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    .line 147
    sget-wide v6, Lanet/channel/monitor/b;->h:D

    sput-wide v6, Lanet/channel/monitor/b;->g:D

    .line 148
    sget-wide v6, Lanet/channel/monitor/b;->i:D

    sput-wide v6, Lanet/channel/monitor/b;->h:D

    .line 151
    sget-wide v6, Lanet/channel/monitor/b;->i:D

    const-wide v8, 0x3fe4cccccccccccdL    # 0.65

    sget-wide v10, Lanet/channel/monitor/b;->g:D

    mul-double/2addr v10, v8

    cmpg-double v0, v6, v10

    if-ltz v0, :cond_d5

    sget-wide v6, Lanet/channel/monitor/b;->i:D

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    sget-wide v10, Lanet/channel/monitor/b;->g:D

    mul-double/2addr v10, v8

    cmpl-double v0, v6, v10

    if-lez v0, :cond_d7

    .line 152
    :cond_d5
    sput-wide v4, Lanet/channel/monitor/b;->i:D

    .line 155
    :cond_d7
    invoke-static {v1}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    const/4 v4, 0x0

    const-string v5, "awcn.BandWidthSampler"

    const/4 v6, 0x5

    const/4 v7, 0x0

    if-eqz v0, :cond_11f

    const/16 v0, 0x8

    .line 156
    new-array v0, v0, [Ljava/lang/Object;

    const-string v8, "mKalmanDataSize"

    aput-object v8, v0, v7

    sget-wide v8, Lanet/channel/monitor/b;->e:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v0, v1

    const-string v8, "mKalmanTimeUsed"

    aput-object v8, v0, v2

    sget-wide v8, Lanet/channel/monitor/b;->d:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v3

    const/4 v2, 0x4

    const-string/jumbo v3, "speed"

    aput-object v3, v0, v2

    sget-wide v2, Lanet/channel/monitor/b;->i:D

    .line 157
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v6

    const/4 v2, 0x6

    const-string v3, "mSpeedKalmanCount"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    sget-wide v8, Lanet/channel/monitor/b;->f:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "NetworkSpeed"

    .line 156
    invoke-static {v5, v2, v4, v0}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    :cond_11f
    iget-object v0, p0, Lanet/channel/monitor/d;->d:Lanet/channel/monitor/b;

    invoke-static {v0}, Lanet/channel/monitor/b;->c(Lanet/channel/monitor/b;)I

    move-result v0

    if-gt v0, v6, :cond_12f

    sget-wide v2, Lanet/channel/monitor/b;->f:J

    const-wide/16 v8, 0x2

    cmp-long v0, v2, v8

    if-nez v0, :cond_156

    .line 163
    :cond_12f
    invoke-static {}, Lanet/channel/monitor/a;->a()Lanet/channel/monitor/a;

    move-result-object v0

    sget-wide v2, Lanet/channel/monitor/b;->i:D

    invoke-virtual {v0, v2, v3}, Lanet/channel/monitor/a;->a(D)V

    .line 164
    iget-object v0, p0, Lanet/channel/monitor/d;->d:Lanet/channel/monitor/b;

    invoke-static {v0, v7}, Lanet/channel/monitor/b;->a(Lanet/channel/monitor/b;I)I

    .line 165
    iget-object v0, p0, Lanet/channel/monitor/d;->d:Lanet/channel/monitor/b;

    sget-wide v2, Lanet/channel/monitor/b;->i:D

    sget-wide v8, Lanet/channel/monitor/b;->j:D

    cmpg-double v2, v2, v8

    if-gez v2, :cond_148

    move v6, v1

    :cond_148
    invoke-static {v0, v6}, Lanet/channel/monitor/b;->b(Lanet/channel/monitor/b;I)I

    .line 166
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Send Network quality notification."

    aput-object v1, v0, v7

    const-string v1, "NetworkSpeed notification!"

    invoke-static {v5, v1, v4, v0}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_156
    const-wide/16 v0, 0x0

    .line 168
    sput-wide v0, Lanet/channel/monitor/b;->d:J

    .line 169
    sput-wide v0, Lanet/channel/monitor/b;->e:J

    .line 170
    sput v7, Lanet/channel/monitor/b;->a:I

    :cond_15e
    return-void
.end method
