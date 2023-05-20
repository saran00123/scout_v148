.class public Lcom/ta/a/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .registers 2

    :try_start_0
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 19
    invoke-static {p0, v0}, Lcom/ta/a/b/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 40
    :cond_4
    invoke-static {p0}, Lcom/ta/a/e/a;->a(Landroid/content/Context;)I

    move-result v1

    .line 42
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x1

    if-lt v2, v3, :cond_20

    if-lt v1, v3, :cond_19

    .line 46
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_27

    :goto_17
    move v0, v4

    goto :goto_27

    .line 50
    :cond_19
    invoke-static {p0, p1}, Lcom/ta/a/b/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_27

    goto :goto_17

    .line 55
    :cond_20
    invoke-static {p0, p1}, Lcom/ta/a/b/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_27

    goto :goto_17

    :cond_27
    :goto_27
    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 2

    :try_start_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 28
    invoke-static {p0, v0}, Lcom/ta/a/b/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    const/4 p0, 0x0

    return p0
.end method
