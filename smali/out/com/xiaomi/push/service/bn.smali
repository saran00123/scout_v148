.class Lcom/xiaomi/push/service/bn;
.super Ljava/lang/Object;


# static fields
.field private static d:I = 0x493e0


# instance fields
.field private a:I

.field private a:J

.field private a:Lcom/xiaomi/push/service/XMPushService;

.field private b:I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/service/bn;->b:I

    iput v0, p0, Lcom/xiaomi/push/service/bn;->c:I

    iput-object p1, p0, Lcom/xiaomi/push/service/bn;->a:Lcom/xiaomi/push/service/XMPushService;

    const/16 p1, 0x1f4

    iput p1, p0, Lcom/xiaomi/push/service/bn;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/push/service/bn;->a:J

    return-void
.end method

.method private a()I
    .registers 10

    iget v0, p0, Lcom/xiaomi/push/service/bn;->b:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_a

    const v0, 0x493e0

    return v0

    :cond_a
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    add-double/2addr v2, v0

    iget v0, p0, Lcom/xiaomi/push/service/bn;->b:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_21

    const-wide v0, 0x40ed4c0000000000L    # 60000.0

    :goto_1e
    mul-double/2addr v2, v0

    double-to-int v0, v2

    return v0

    :cond_21
    const/4 v4, 0x1

    if-le v0, v4, :cond_2a

    const-wide v0, 0x40c3880000000000L    # 10000.0

    goto :goto_1e

    :cond_2a
    iget-wide v2, p0, Lcom/xiaomi/push/service/bn;->a:J

    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    const/4 v2, 0x0

    if-nez v0, :cond_34

    return v2

    :cond_34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/xiaomi/push/service/bn;->a:J

    sub-long/2addr v5, v7

    const-wide/32 v7, 0x4baf0

    cmp-long v0, v5, v7

    if-gez v0, :cond_5c

    iget v0, p0, Lcom/xiaomi/push/service/bn;->a:I

    sget v2, Lcom/xiaomi/push/service/bn;->d:I

    if-lt v0, v2, :cond_49

    return v0

    :cond_49
    iget v3, p0, Lcom/xiaomi/push/service/bn;->c:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/xiaomi/push/service/bn;->c:I

    iget v3, p0, Lcom/xiaomi/push/service/bn;->c:I

    if-lt v3, v1, :cond_54

    move v0, v2

    goto :goto_5b

    :cond_54
    int-to-double v1, v0

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/xiaomi/push/service/bn;->a:I

    :goto_5b
    return v0

    :cond_5c
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/xiaomi/push/service/bn;->a:I

    iput v2, p0, Lcom/xiaomi/push/service/bn;->c:I

    return v2
.end method


# virtual methods
.method public a()V
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/service/bn;->a:J

    iget-object v0, p0, Lcom/xiaomi/push/service/bn;->a:Lcom/xiaomi/push/service/XMPushService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/service/bn;->b:I

    return-void
.end method

.method public a(Z)V
    .registers 6

    iget-object v0, p0, Lcom/xiaomi/push/service/bn;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->a()Z

    move-result v0

    if-eqz v0, :cond_7f

    const/4 v0, 0x1

    if-eqz p1, :cond_2b

    iget-object p1, p0, Lcom/xiaomi/push/service/bn;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/service/XMPushService;->a(I)Z

    move-result p1

    if-nez p1, :cond_18

    iget p1, p0, Lcom/xiaomi/push/service/bn;->b:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/xiaomi/push/service/bn;->b:I

    :cond_18
    iget-object p1, p0, Lcom/xiaomi/push/service/bn;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/service/XMPushService;->a(I)V

    iget-object p1, p0, Lcom/xiaomi/push/service/bn;->a:Lcom/xiaomi/push/service/XMPushService;

    new-instance v0, Lcom/xiaomi/push/service/XMPushService$e;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p1}, Lcom/xiaomi/push/service/XMPushService$e;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$j;)V

    goto :goto_84

    :cond_2b
    iget-object p1, p0, Lcom/xiaomi/push/service/bn;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/service/XMPushService;->a(I)Z

    move-result p1

    if-eqz p1, :cond_34

    return-void

    :cond_34
    invoke-direct {p0}, Lcom/xiaomi/push/service/bn;->a()I

    move-result p1

    iget v1, p0, Lcom/xiaomi/push/service/bn;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/xiaomi/push/service/bn;->b:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "schedule reconnect in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/bn;->a:Lcom/xiaomi/push/service/XMPushService;

    new-instance v1, Lcom/xiaomi/push/service/XMPushService$e;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v1, v0}, Lcom/xiaomi/push/service/XMPushService$e;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$j;J)V

    iget p1, p0, Lcom/xiaomi/push/service/bn;->b:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_76

    invoke-static {}, Lcom/xiaomi/push/fu;->a()Lcom/xiaomi/push/fu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/push/fu;->a()Z

    move-result p1

    if-eqz p1, :cond_76

    invoke-static {}, Lcom/xiaomi/push/service/am;->b()V

    :cond_76
    iget p1, p0, Lcom/xiaomi/push/service/bn;->b:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_84

    invoke-static {}, Lcom/xiaomi/push/service/am;->a()V

    goto :goto_84

    :cond_7f
    const-string p1, "should not reconnect as no client or network."

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    :cond_84
    :goto_84
    return-void
.end method
