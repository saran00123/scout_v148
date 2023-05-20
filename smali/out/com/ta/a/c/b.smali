.class public Lcom/ta/a/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 15
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    .line 20
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/ta/a/e/g;->b([B)[B

    move-result-object p0

    .line 21
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/ta/utdid2/a/a/b;->encode([BI)[B

    move-result-object p0

    const-string v2, "UTF-8"

    invoke-direct {v0, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1d} :catch_1e

    goto :goto_26

    :catch_1e
    move-exception p0

    const/4 v0, 0x0

    .line 23
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/ta/a/e/h;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move-object v0, v1

    :goto_26
    return-object v0
.end method
