.class public Lcom/xiaomi/push/ez;
.super Lcom/xiaomi/push/eu;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/xiaomi/push/eu;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/xiaomi/push/ez;->b:Ljava/lang/String;

    const-string p1, "[Policy] Fixed Interval"

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 3

    const-string v0, "WIFI-ID-UNKNOWN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p1, p0, Lcom/xiaomi/push/ez;->b:Ljava/lang/String;

    if-eqz p1, :cond_15

    const-string v0, "W-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_18

    :cond_15
    const/4 p1, 0x0

    :cond_16
    iput-object p1, p0, Lcom/xiaomi/push/ez;->b:Ljava/lang/String;

    :goto_18
    iget-object p1, p0, Lcom/xiaomi/push/ez;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/push/ez;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    invoke-virtual {p0}, Lcom/xiaomi/push/ez;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/ez;->a:J

    return-wide v0
.end method

.method public a()V
    .registers 1

    invoke-super {p0}, Lcom/xiaomi/push/eu;->a()V

    return-void
.end method

.method public a(J)V
    .registers 3

    return-void
.end method

.method public a(Landroid/net/NetworkInfo;)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_41

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_2d

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_41

    const-string v1, "UNKNOWN"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_41

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "M-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_41

    :cond_2d
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3b

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    const/4 v1, 0x6

    if-ne p1, v1, :cond_41

    :cond_3b
    const-string p1, "WIFI-ID-UNKNOWN"

    invoke-direct {p0, p1}, Lcom/xiaomi/push/ez;->b(Ljava/lang/String;)V

    goto :goto_44

    :cond_41
    :goto_41
    invoke-direct {p0, v0}, Lcom/xiaomi/push/ez;->b(Ljava/lang/String;)V

    :goto_44
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "W-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/push/ez;->b(Ljava/lang/String;)V

    :cond_1a
    iget-object p1, p0, Lcom/xiaomi/push/ez;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_25

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/push/ez;->a:Z

    :cond_25
    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public c()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/ez;->a:Z

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/push/ez;->a(ZJ)V

    return-void
.end method

.method public d()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/ez;->a:Z

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/push/ez;->a(ZJ)V

    return-void
.end method
