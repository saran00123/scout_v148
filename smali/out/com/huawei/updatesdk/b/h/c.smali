.class public final Lcom/huawei/updatesdk/b/h/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Landroid/content/res/Resources;


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    const-string v0, "id"

    invoke-static {p0, p1, v0}, Lcom/huawei/updatesdk/b/h/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    sget-object v0, Lcom/huawei/updatesdk/b/h/c;->b:Landroid/content/res/Resources;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/huawei/updatesdk/b/h/c;->b:Landroid/content/res/Resources;

    :cond_a
    sget-object v0, Lcom/huawei/updatesdk/b/h/c;->b:Landroid/content/res/Resources;

    invoke-static {p0}, Lcom/huawei/updatesdk/b/h/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/huawei/updatesdk/b/h/c;->a:Ljava/lang/String;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/huawei/updatesdk/b/h/c;->a:Ljava/lang/String;

    :cond_a
    sget-object p0, Lcom/huawei/updatesdk/b/h/c;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    const-string v0, "layout"

    invoke-static {p0, p1, v0}, Lcom/huawei/updatesdk/b/h/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    const-string v0, "string"

    invoke-static {p0, p1, v0}, Lcom/huawei/updatesdk/b/h/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "string"

    invoke-static {p0, p1, v1}, Lcom/huawei/updatesdk/b/h/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "recource get error name: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UpdateSDK"

    invoke-static {p1, p0}, Lcom/huawei/updatesdk/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method
