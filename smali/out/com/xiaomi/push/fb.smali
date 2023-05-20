.class public Lcom/xiaomi/push/fb;
.super Lcom/xiaomi/push/eu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/fb$a;
    }
.end annotation


# instance fields
.field private a:Lcom/xiaomi/push/fb$a;

.field private b:J

.field private b:Ljava/lang/String;

.field private c:Z

.field private volatile d:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/xiaomi/push/eu;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaomi/push/fb;->c:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/push/fb;->d:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaomi/push/fb;->b:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/push/fb;->b:J

    new-instance p1, Lcom/xiaomi/push/fb$a;

    invoke-direct {p1}, Lcom/xiaomi/push/fb$a;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    const-string p1, "[Policy] Intelligent policy"

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Z)J
    .registers 16

    iget-object v0, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-wide v0, v0, Lcom/xiaomi/push/fb$a;->a:J

    const-wide/32 v2, 0xea60

    rem-long/2addr v0, v2

    iget-object v4, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-wide v4, v4, Lcom/xiaomi/push/fb$a;->a:J

    const-wide/32 v6, 0x927c0

    const-wide/16 v8, 0x7530

    const-wide/32 v10, 0x33450

    if-nez p1, :cond_2c

    const-wide/16 v12, 0x0

    cmp-long p1, v0, v12

    if-eqz p1, :cond_22

    cmp-long v0, v4, v10

    if-ltz v0, :cond_22

    add-long/2addr v4, v2

    goto :goto_23

    :cond_22
    add-long/2addr v4, v8

    :goto_23
    if-eqz p1, :cond_2a

    cmp-long p1, v4, v6

    if-lez p1, :cond_2a

    goto :goto_33

    :cond_2a
    move-wide v6, v4

    goto :goto_33

    :cond_2c
    cmp-long p1, v4, v10

    if-gtz p1, :cond_31

    return-wide v4

    :cond_31
    sub-long v6, v4, v8

    :goto_33
    return-wide v6
.end method

.method private a(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iput p1, v0, Lcom/xiaomi/push/fb$a;->a:I

    const-string p1, "WIFI-ID-UNKNOWN"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-object p1, p1, Lcom/xiaomi/push/fb$a;->a:Ljava/lang/String;

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-object p1, p1, Lcom/xiaomi/push/fb$a;->a:Ljava/lang/String;

    const-string v0, "W-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1f

    goto :goto_29

    :cond_1f
    iget-object p1, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/xiaomi/push/fb$a;->a:Ljava/lang/String;

    goto :goto_29

    :cond_25
    iget-object p1, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iput-object p2, p1, Lcom/xiaomi/push/fb$a;->a:Ljava/lang/String;

    :goto_29
    iput-object p2, p0, Lcom/xiaomi/push/fb;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-object p1, p1, Lcom/xiaomi/push/fb$a;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3e

    iget-object p1, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget p1, p1, Lcom/xiaomi/push/fb$a;->a:I

    if-nez p1, :cond_3c

    goto :goto_3e

    :cond_3c
    const/4 p1, 0x1

    goto :goto_3f

    :cond_3e
    :goto_3e
    const/4 p1, 0x0

    :goto_3f
    iput-boolean p1, p0, Lcom/xiaomi/push/fb;->d:Z

    return-void
.end method

.method private a(JZ)V
    .registers 6

    iget-object v0, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget v1, v0, Lcom/xiaomi/push/fb$a;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/xiaomi/push/fb$a;->c:I

    iget-object v0, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    const/4 v1, 0x0

    iput v1, v0, Lcom/xiaomi/push/fb$a;->b:I

    iput-wide p1, v0, Lcom/xiaomi/push/fb$a;->a:J

    xor-int/lit8 p1, p3, 0x1

    iput-boolean p1, v0, Lcom/xiaomi/push/fb$a;->b:Z

    return-void
.end method

.method private a(Z)V
    .registers 4

    const/4 v0, 0x1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    :goto_5
    iput v0, p1, Lcom/xiaomi/push/fb$a;->b:I

    goto :goto_19

    :cond_8
    iget-object p1, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget p1, p1, Lcom/xiaomi/push/fb$a;->b:I

    if-ltz p1, :cond_12

    iget-object p1, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    const/4 v0, -0x1

    goto :goto_5

    :cond_12
    iget-object p1, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget v1, p1, Lcom/xiaomi/push/fb$a;->b:I

    sub-int/2addr v1, v0

    iput v1, p1, Lcom/xiaomi/push/fb$a;->b:I

    :goto_19
    return-void
.end method

.method private a(J)Z
    .registers 7

    const-wide/32 v0, 0x927c0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-lez v0, :cond_9

    goto :goto_20

    :cond_9
    const-wide/32 v2, 0x395f8

    cmp-long p1, p1, v2

    const/4 p2, -0x4

    if-gez p1, :cond_18

    iget-object p1, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget p1, p1, Lcom/xiaomi/push/fb$a;->b:I

    if-gt p1, p2, :cond_18

    goto :goto_20

    :cond_18
    iget-object p1, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget p1, p1, Lcom/xiaomi/push/fb$a;->b:I

    if-gt p1, p2, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    return v1
.end method

.method private b(J)V
    .registers 6

    iget-object v0, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iput-wide p1, v0, Lcom/xiaomi/push/fb$a;->a:J

    const/4 p1, 0x0

    iput p1, v0, Lcom/xiaomi/push/fb$a;->b:I

    iput p1, v0, Lcom/xiaomi/push/fb$a;->c:I

    iput-boolean p1, v0, Lcom/xiaomi/push/fb$a;->a:Z

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/xiaomi/push/fb$a;->b:J

    iput-boolean p1, v0, Lcom/xiaomi/push/fb$a;->b:Z

    iput-wide v1, v0, Lcom/xiaomi/push/fb$a;->c:J

    return-void
.end method

.method private b(Z)V
    .registers 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HB] adjustHeartbeat isTimeOut = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-boolean v2, v2, Lcom/xiaomi/push/fb$a;->a:Z

    if-nez v2, :cond_41

    iget-object v2, v0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-wide v3, v2, Lcom/xiaomi/push/fb$a;->c:J

    iget-object v5, v0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-wide v5, v5, Lcom/xiaomi/push/fb$a;->a:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/xiaomi/push/fb$a;->c:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HB] adjustHeartbeat duration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-wide v3, v3, Lcom/xiaomi/push/fb$a;->c:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :cond_41
    iget-object v2, v0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-boolean v2, v2, Lcom/xiaomi/push/fb$a;->a:Z

    const-wide/16 v3, 0x7530

    const-string v5, "[HB] update Alarm interval = "

    const-wide/32 v10, 0x395f8

    if-eqz v2, :cond_b3

    iget-object v2, v0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-wide v12, v2, Lcom/xiaomi/push/fb$a;->c:J

    invoke-virtual {v0, v1, v12, v13}, Lcom/xiaomi/push/fb;->a(ZJ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v12, v0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-wide v12, v12, Lcom/xiaomi/push/fb$a;->b:J

    const-wide v14, 0x9a7ec800L

    add-long/2addr v12, v14

    sub-long/2addr v12, v1

    const-wide/16 v1, 0x0

    cmp-long v12, v12, v1

    if-lez v12, :cond_6b

    return-void

    :cond_6b
    iget-object v12, v0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-wide v12, v12, Lcom/xiaomi/push/fb$a;->a:J

    const-wide/32 v14, 0xea60

    rem-long/2addr v12, v14

    iget-object v6, v0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-wide v6, v6, Lcom/xiaomi/push/fb$a;->a:J

    iget-object v8, v0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-wide v8, v8, Lcom/xiaomi/push/fb$a;->a:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_8f

    cmp-long v1, v12, v1

    if-nez v1, :cond_89

    iget-object v1, v0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-wide v1, v1, Lcom/xiaomi/push/fb$a;->a:J

    sub-long/2addr v1, v14

    goto :goto_8e

    :cond_89
    iget-object v1, v0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-wide v1, v1, Lcom/xiaomi/push/fb$a;->a:J

    sub-long/2addr v1, v3

    :goto_8e
    move-wide v6, v1

    :cond_8f
    const-wide/32 v1, 0x33450

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/push/fb;->b(J)V

    const-wide/16 v3, 0x3a98

    sub-long v3, v1, v3

    invoke-static {v3, v4}, Lcom/xiaomi/push/fh;->a(J)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    return-void

    :cond_b3
    invoke-direct/range {p0 .. p1}, Lcom/xiaomi/push/fb;->a(Z)J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Lcom/xiaomi/push/fb;->a(J)Z

    move-result v2

    if-eqz v2, :cond_da

    iget-object v8, v0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget v8, v8, Lcom/xiaomi/push/fb$a;->b:I

    const/4 v9, -0x4

    if-gt v8, v9, :cond_cf

    cmp-long v8, v6, v10

    if-lez v8, :cond_cf

    iget-object v8, v0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-wide v9, v8, Lcom/xiaomi/push/fb$a;->a:J

    sub-long/2addr v9, v3

    iput-wide v9, v8, Lcom/xiaomi/push/fb$a;->a:J

    :cond_cf
    iget-object v3, v0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/xiaomi/push/fb$a;->a:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v3, Lcom/xiaomi/push/fb$a;->b:J

    :cond_da
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HB] adjustHeartbeat fixed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", continuousCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget v4, v4, Lcom/xiaomi/push/fb$a;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", interval = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-wide v8, v4, Lcom/xiaomi/push/fb$a;->a:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/xiaomi/push/fb;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/push/ev;->a(Landroid/content/Context;)Lcom/xiaomi/push/ev;

    move-result-object v3

    iget-object v4, v0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-wide v8, v4, Lcom/xiaomi/push/fb$a;->a:J

    invoke-virtual {v3, v4, v2, v8, v9}, Lcom/xiaomi/push/ev;->a(Lcom/xiaomi/push/fb$a;ZJ)V

    if-eqz v2, :cond_123

    iget-object v1, v0, Lcom/xiaomi/push/fb;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/ev;->a(Landroid/content/Context;)Lcom/xiaomi/push/ev;

    move-result-object v1

    iget-object v2, v0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-object v2, v2, Lcom/xiaomi/push/fb$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/ev;->a(Ljava/lang/String;)V

    return-void

    :cond_123
    if-eqz v1, :cond_135

    iget-object v2, v0, Lcom/xiaomi/push/fb;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/ev;->a(Landroid/content/Context;)Lcom/xiaomi/push/ev;

    move-result-object v2

    iget-object v3, v0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-object v3, v3, Lcom/xiaomi/push/fb$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v6, v7}, Lcom/xiaomi/push/ev;->a(Ljava/lang/String;J)Z

    move-result v2

    if-nez v2, :cond_158

    :cond_135
    invoke-direct {v0, v6, v7, v1}, Lcom/xiaomi/push/fb;->a(JZ)V

    const-wide/32 v1, 0x33450

    cmp-long v1, v6, v1

    if-lez v1, :cond_158

    const-wide/16 v1, 0x3a98

    sub-long v1, v6, v1

    invoke-static {v1, v2}, Lcom/xiaomi/push/fh;->a(J)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :cond_158
    return-void
.end method

.method private e()V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/fb;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/ev;->a(Landroid/content/Context;)Lcom/xiaomi/push/ev;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-object v1, v1, Lcom/xiaomi/push/fb$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/ev;->a(Ljava/lang/String;)Lcom/xiaomi/push/fb$a;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v1, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/fb$a;->a(Lcom/xiaomi/push/fb$a;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HB] reload interval = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-wide v1, v1, Lcom/xiaomi/push/fb$a;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    :cond_2b
    const-wide/32 v0, 0x33450

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/push/fb;->b(J)V

    const-string v0, "[HB] reload no cache"

    :goto_33
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()J
    .registers 5

    sget-boolean v0, Lcom/xiaomi/push/service/receivers/BatteryReceiver;->a:Z

    if-eqz v0, :cond_d

    const-string v0, "[HB] interval battery"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    const-wide/32 v0, 0x3a980

    return-wide v0

    :cond_d
    iget-boolean v0, p0, Lcom/xiaomi/push/fb;->b:Z

    if-eqz v0, :cond_4b

    iget-boolean v0, p0, Lcom/xiaomi/push/fb;->d:Z

    if-nez v0, :cond_16

    goto :goto_4b

    :cond_16
    iget-object v0, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-wide v0, v0, Lcom/xiaomi/push/fb$a;->a:J

    iput-wide v0, p0, Lcom/xiaomi/push/fb;->a:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HB] compute interval = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-wide v1, v1, Lcom/xiaomi/push/fb$a;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-wide v0, v0, Lcom/xiaomi/push/fb$a;->a:J

    const-wide/32 v2, 0x33450

    cmp-long v0, v0, v2

    if-gtz v0, :cond_43

    const-wide/32 v0, 0x2f9b8

    return-wide v0

    :cond_43
    iget-object v0, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-wide v0, v0, Lcom/xiaomi/push/fb$a;->a:J

    const-wide/16 v2, 0x3a98

    sub-long/2addr v0, v2

    return-wide v0

    :cond_4b
    :goto_4b
    invoke-virtual {p0}, Lcom/xiaomi/push/fb;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-boolean v0, v0, Lcom/xiaomi/push/fb$a;->a:Z

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-super {p0}, Lcom/xiaomi/push/eu;->a()V

    return-void
.end method

.method public a(J)V
    .registers 7

    iget-boolean v0, p0, Lcom/xiaomi/push/fb;->b:Z

    if-eqz v0, :cond_2f

    iget-boolean v0, p0, Lcom/xiaomi/push/fb;->d:Z

    if-nez v0, :cond_9

    goto :goto_2f

    :cond_9
    iget-object v0, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-boolean v0, v0, Lcom/xiaomi/push/fb$a;->a:Z

    if-eqz v0, :cond_10

    return-void

    :cond_10
    const-string v0, "[HB] onReadOrWrite = "

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/push/fb;->b:J

    sub-long/2addr v0, v2

    iput-wide p1, p0, Lcom/xiaomi/push/fb;->b:J

    const-wide/16 p1, 0x1388

    cmp-long p1, v0, p1

    if-lez p1, :cond_2f

    iget-wide p1, p0, Lcom/xiaomi/push/fb;->b:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_2f

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/push/fb;->c:Z

    :cond_2f
    :goto_2f
    return-void
.end method

.method public a(Landroid/net/NetworkInfo;)V
    .registers 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p1, :cond_8

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/push/fb;->a(ILjava/lang/String;)V

    return-void

    :cond_8
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_36

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "UNKNOWN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "M-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_31
    const/4 p1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/xiaomi/push/fb;->a(ILjava/lang/String;)V

    goto :goto_4e

    :cond_36
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_49

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    const/4 v2, 0x6

    if-ne p1, v2, :cond_45

    goto :goto_49

    :cond_45
    invoke-direct {p0, v0, v1}, Lcom/xiaomi/push/fb;->a(ILjava/lang/String;)V

    goto :goto_4e

    :cond_49
    :goto_49
    const-string p1, "WIFI-ID-UNKNOWN"

    invoke-direct {p0, v3, p1}, Lcom/xiaomi/push/fb;->a(ILjava/lang/String;)V

    :goto_4e
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/fb;->a:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/xiaomi/push/fb;->b:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "W-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/push/fb;->a(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-object p1, p1, Lcom/xiaomi/push/fb$a;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_31

    invoke-direct {p0}, Lcom/xiaomi/push/fb;->e()V

    goto :goto_38

    :cond_31
    iget-object p1, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    if-eqz p1, :cond_38

    invoke-virtual {p1}, Lcom/xiaomi/push/fb$a;->a()V

    :cond_38
    :goto_38
    return-void
.end method

.method public b()V
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/push/fb;->b:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/xiaomi/push/fb;->d:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-object v0, v0, Lcom/xiaomi/push/fb$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/push/fb;->b:Ljava/lang/String;

    :cond_f
    return-void
.end method

.method public c()V
    .registers 7

    iget-boolean v0, p0, Lcom/xiaomi/push/fb;->b:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/xiaomi/push/fb;->d:Z

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-object v0, v0, Lcom/xiaomi/push/fb$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/push/fb;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_5b

    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HB] onPong isWifiChanged ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaomi/push/fb;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/xiaomi/push/fb;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    iput-boolean v1, p0, Lcom/xiaomi/push/fb;->a:Z

    iput-boolean v1, p0, Lcom/xiaomi/push/fb;->c:Z

    return-void

    :cond_36
    iget-boolean v0, p0, Lcom/xiaomi/push/fb;->c:Z

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-boolean v0, v0, Lcom/xiaomi/push/fb$a;->a:Z

    if-nez v0, :cond_53

    iget-object v0, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-wide v2, v0, Lcom/xiaomi/push/fb$a;->c:J

    iget-object v4, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-wide v4, v4, Lcom/xiaomi/push/fb$a;->a:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/xiaomi/push/fb$a;->c:J

    goto :goto_53

    :cond_4c
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaomi/push/fb;->a(Z)V

    invoke-direct {p0, v1}, Lcom/xiaomi/push/fb;->b(Z)V

    :cond_53
    :goto_53
    iput-boolean v1, p0, Lcom/xiaomi/push/fb;->c:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/fb;->b:J

    :cond_5b
    :goto_5b
    return-void
.end method

.method public d()V
    .registers 3

    iget-boolean v0, p0, Lcom/xiaomi/push/fb;->b:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/xiaomi/push/fb;->d:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/xiaomi/push/fb;->a:Lcom/xiaomi/push/fb$a;

    iget-object v0, v0, Lcom/xiaomi/push/fb$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/push/fb;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_29

    :cond_16
    const-string v0, "[HB] onPingTimeout"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/push/fb;->a(Z)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/xiaomi/push/fb;->b(Z)V

    iput-boolean v0, p0, Lcom/xiaomi/push/fb;->c:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/push/fb;->b:J

    :cond_29
    :goto_29
    return-void
.end method
