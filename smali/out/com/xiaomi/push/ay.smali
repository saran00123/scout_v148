.class Lcom/xiaomi/push/ay;
.super Ljava/lang/Object;


# static fields
.field static a:I


# direct methods
.method public static a(Landroid/content/Context;)Lcom/xiaomi/push/at;
    .registers 2

    invoke-static {}, Lcom/xiaomi/push/l;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    sput v0, Lcom/xiaomi/push/ay;->a:I

    new-instance v0, Lcom/xiaomi/push/ax;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/ax;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_f
    invoke-static {p0}, Lcom/xiaomi/push/ar;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x2

    sput v0, Lcom/xiaomi/push/ay;->a:I

    new-instance v0, Lcom/xiaomi/push/ar;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/ar;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_1e
    invoke-static {p0}, Lcom/xiaomi/push/ba;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x4

    sput v0, Lcom/xiaomi/push/ay;->a:I

    new-instance v0, Lcom/xiaomi/push/ba;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/ba;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_2d
    invoke-static {p0}, Lcom/xiaomi/push/be;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v0, 0x5

    sput v0, Lcom/xiaomi/push/ay;->a:I

    new-instance v0, Lcom/xiaomi/push/be;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/be;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_3c
    invoke-static {p0}, Lcom/xiaomi/push/aw;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const/4 v0, 0x3

    sput v0, Lcom/xiaomi/push/ay;->a:I

    new-instance v0, Lcom/xiaomi/push/au;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/au;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_4b
    const/4 p0, 0x0

    sput p0, Lcom/xiaomi/push/ay;->a:I

    new-instance p0, Lcom/xiaomi/push/bd;

    invoke-direct {p0}, Lcom/xiaomi/push/bd;-><init>()V

    return-object p0
.end method
