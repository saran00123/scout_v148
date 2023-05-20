.class public Lcom/xiaomi/push/service/bk;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/xiaomi/push/service/bk;


# instance fields
.field private a:I

.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/service/bk;->a:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/push/service/bk;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/push/service/bk;
    .registers 2

    sget-object v0, Lcom/xiaomi/push/service/bk;->a:Lcom/xiaomi/push/service/bk;

    if-nez v0, :cond_b

    new-instance v0, Lcom/xiaomi/push/service/bk;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/bk;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/push/service/bk;->a:Lcom/xiaomi/push/service/bk;

    :cond_b
    sget-object p0, Lcom/xiaomi/push/service/bk;->a:Lcom/xiaomi/push/service/bk;

    return-object p0
.end method


# virtual methods
.method public a()I
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget v0, p0, Lcom/xiaomi/push/service/bk;->a:I

    if-eqz v0, :cond_5

    return v0

    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/xiaomi/push/service/bk;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/push/service/bk;->a:I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_14} :catch_14

    :catch_14
    iget v0, p0, Lcom/xiaomi/push/service/bk;->a:I

    return v0
.end method

.method public a()Landroid/net/Uri;
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "device_provisioned"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public a()Z
    .registers 3

    sget-object v0, Lcom/xiaomi/push/ad;->a:Ljava/lang/String;

    const-string v1, "xmsf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    sget-object v0, Lcom/xiaomi/push/ad;->a:Ljava/lang/String;

    const-string v1, "xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    sget-object v0, Lcom/xiaomi/push/ad;->a:Ljava/lang/String;

    const-string v1, "miui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v0, 0x1

    :goto_22
    return v0
.end method
