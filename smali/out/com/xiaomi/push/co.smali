.class public Lcom/xiaomi/push/co;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)J
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/16 v1, 0x0

    const/16 v3, 0x15

    if-lt v0, v3, :cond_1f

    :try_start_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {p0}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object p0

    iget-wide v0, p0, Landroid/system/StructStat;->st_size:J
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_19} :catch_1b

    move-wide v1, v0

    goto :goto_1f

    :catch_1b
    move-exception p0

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    :cond_1f
    :goto_1f
    return-wide v1
.end method
