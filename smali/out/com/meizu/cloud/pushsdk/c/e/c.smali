.class public final Lcom/meizu/cloud/pushsdk/c/e/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/meizu/cloud/pushsdk/c/a/b;)Lcom/meizu/cloud/pushsdk/c/a/c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/meizu/cloud/pushsdk/c/a/b;",
            ")",
            "Lcom/meizu/cloud/pushsdk/c/a/c<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/c/a/b;->g()I

    move-result v0

    if-eqz v0, :cond_21

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_17

    new-instance p0, Lcom/meizu/cloud/pushsdk/c/a/c;

    new-instance v0, Lcom/meizu/cloud/pushsdk/c/b/a;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/c/b/a;-><init>()V

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/c/a/c;-><init>(Lcom/meizu/cloud/pushsdk/c/b/a;)V

    return-object p0

    :cond_17
    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/c/e/c;->d(Lcom/meizu/cloud/pushsdk/c/a/b;)Lcom/meizu/cloud/pushsdk/c/a/c;

    move-result-object p0

    return-object p0

    :cond_1c
    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/c/e/c;->c(Lcom/meizu/cloud/pushsdk/c/a/b;)Lcom/meizu/cloud/pushsdk/c/a/c;

    move-result-object p0

    return-object p0

    :cond_21
    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/c/e/c;->b(Lcom/meizu/cloud/pushsdk/c/a/b;)Lcom/meizu/cloud/pushsdk/c/a/c;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/meizu/cloud/pushsdk/c/a/b;)Lcom/meizu/cloud/pushsdk/c/a/c;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/meizu/cloud/pushsdk/c/a/b;",
            ")",
            "Lcom/meizu/cloud/pushsdk/c/a/c<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/c/e/a;->a(Lcom/meizu/cloud/pushsdk/c/a/b;)Lcom/meizu/cloud/pushsdk/c/c/k;

    move-result-object v0

    if-nez v0, :cond_19

    new-instance v1, Lcom/meizu/cloud/pushsdk/c/a/c;

    new-instance v2, Lcom/meizu/cloud/pushsdk/c/b/a;

    invoke-direct {v2}, Lcom/meizu/cloud/pushsdk/c/b/a;-><init>()V

    invoke-static {v2}, Lcom/meizu/cloud/pushsdk/c/h/b;->a(Lcom/meizu/cloud/pushsdk/c/b/a;)Lcom/meizu/cloud/pushsdk/c/b/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/meizu/cloud/pushsdk/c/a/c;-><init>(Lcom/meizu/cloud/pushsdk/c/b/a;)V
    :try_end_15
    .catch Lcom/meizu/cloud/pushsdk/c/b/a; {:try_start_1 .. :try_end_15} :catch_69
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_5b
    .catchall {:try_start_1 .. :try_end_15} :catchall_59

    invoke-static {v0, p0}, Lcom/meizu/cloud/pushsdk/c/h/a;->a(Lcom/meizu/cloud/pushsdk/c/c/k;Lcom/meizu/cloud/pushsdk/c/a/b;)V

    return-object v1

    :cond_19
    :try_start_19
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/c/a/b;->f()Lcom/meizu/cloud/pushsdk/c/a/e;

    move-result-object v1

    sget-object v2, Lcom/meizu/cloud/pushsdk/c/a/e;->d:Lcom/meizu/cloud/pushsdk/c/a/e;

    if-ne v1, v2, :cond_2d

    new-instance v1, Lcom/meizu/cloud/pushsdk/c/a/c;

    invoke-direct {v1, v0}, Lcom/meizu/cloud/pushsdk/c/a/c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/meizu/cloud/pushsdk/c/a/c;->a(Lcom/meizu/cloud/pushsdk/c/c/k;)V
    :try_end_29
    .catch Lcom/meizu/cloud/pushsdk/c/b/a; {:try_start_19 .. :try_end_29} :catch_69
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_29} :catch_5b
    .catchall {:try_start_19 .. :try_end_29} :catchall_59

    invoke-static {v0, p0}, Lcom/meizu/cloud/pushsdk/c/h/a;->a(Lcom/meizu/cloud/pushsdk/c/c/k;Lcom/meizu/cloud/pushsdk/c/a/b;)V

    return-object v1

    :cond_2d
    :try_start_2d
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/c/c/k;->a()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_4e

    new-instance v1, Lcom/meizu/cloud/pushsdk/c/a/c;

    new-instance v2, Lcom/meizu/cloud/pushsdk/c/b/a;

    invoke-direct {v2, v0}, Lcom/meizu/cloud/pushsdk/c/b/a;-><init>(Lcom/meizu/cloud/pushsdk/c/c/k;)V

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/c/c/k;->a()I

    move-result v3

    invoke-static {v2, p0, v3}, Lcom/meizu/cloud/pushsdk/c/h/b;->a(Lcom/meizu/cloud/pushsdk/c/b/a;Lcom/meizu/cloud/pushsdk/c/a/b;I)Lcom/meizu/cloud/pushsdk/c/b/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/meizu/cloud/pushsdk/c/a/c;-><init>(Lcom/meizu/cloud/pushsdk/c/b/a;)V

    invoke-virtual {v1, v0}, Lcom/meizu/cloud/pushsdk/c/a/c;->a(Lcom/meizu/cloud/pushsdk/c/c/k;)V
    :try_end_4a
    .catch Lcom/meizu/cloud/pushsdk/c/b/a; {:try_start_2d .. :try_end_4a} :catch_69
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_4a} :catch_5b
    .catchall {:try_start_2d .. :try_end_4a} :catchall_59

    invoke-static {v0, p0}, Lcom/meizu/cloud/pushsdk/c/h/a;->a(Lcom/meizu/cloud/pushsdk/c/c/k;Lcom/meizu/cloud/pushsdk/c/a/b;)V

    return-object v1

    :cond_4e
    :try_start_4e
    invoke-virtual {p0, v0}, Lcom/meizu/cloud/pushsdk/c/a/b;->a(Lcom/meizu/cloud/pushsdk/c/c/k;)Lcom/meizu/cloud/pushsdk/c/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/meizu/cloud/pushsdk/c/a/c;->a(Lcom/meizu/cloud/pushsdk/c/c/k;)V
    :try_end_55
    .catch Lcom/meizu/cloud/pushsdk/c/b/a; {:try_start_4e .. :try_end_55} :catch_69
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_55} :catch_5b
    .catchall {:try_start_4e .. :try_end_55} :catchall_59

    invoke-static {v0, p0}, Lcom/meizu/cloud/pushsdk/c/h/a;->a(Lcom/meizu/cloud/pushsdk/c/c/k;Lcom/meizu/cloud/pushsdk/c/a/b;)V

    return-object v1

    :catchall_59
    move-exception v1

    goto :goto_7c

    :catch_5b
    move-exception v1

    :try_start_5c
    new-instance v2, Lcom/meizu/cloud/pushsdk/c/a/c;

    invoke-static {v1}, Lcom/meizu/cloud/pushsdk/c/h/b;->a(Ljava/lang/Exception;)Lcom/meizu/cloud/pushsdk/c/b/a;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/meizu/cloud/pushsdk/c/a/c;-><init>(Lcom/meizu/cloud/pushsdk/c/b/a;)V
    :try_end_65
    .catchall {:try_start_5c .. :try_end_65} :catchall_59

    invoke-static {v0, p0}, Lcom/meizu/cloud/pushsdk/c/h/a;->a(Lcom/meizu/cloud/pushsdk/c/c/k;Lcom/meizu/cloud/pushsdk/c/a/b;)V

    return-object v2

    :catch_69
    move-exception v1

    :try_start_6a
    new-instance v2, Lcom/meizu/cloud/pushsdk/c/a/c;

    new-instance v3, Lcom/meizu/cloud/pushsdk/c/b/a;

    invoke-direct {v3, v1}, Lcom/meizu/cloud/pushsdk/c/b/a;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3}, Lcom/meizu/cloud/pushsdk/c/h/b;->a(Lcom/meizu/cloud/pushsdk/c/b/a;)Lcom/meizu/cloud/pushsdk/c/b/a;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/meizu/cloud/pushsdk/c/a/c;-><init>(Lcom/meizu/cloud/pushsdk/c/b/a;)V
    :try_end_78
    .catchall {:try_start_6a .. :try_end_78} :catchall_59

    invoke-static {v0, p0}, Lcom/meizu/cloud/pushsdk/c/h/a;->a(Lcom/meizu/cloud/pushsdk/c/c/k;Lcom/meizu/cloud/pushsdk/c/a/b;)V

    return-object v2

    :goto_7c
    invoke-static {v0, p0}, Lcom/meizu/cloud/pushsdk/c/h/a;->a(Lcom/meizu/cloud/pushsdk/c/c/k;Lcom/meizu/cloud/pushsdk/c/a/b;)V

    throw v1
.end method

.method private static c(Lcom/meizu/cloud/pushsdk/c/a/b;)Lcom/meizu/cloud/pushsdk/c/a/c;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/meizu/cloud/pushsdk/c/a/b;",
            ")",
            "Lcom/meizu/cloud/pushsdk/c/a/c<",
            "TT;>;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/c/e/a;->b(Lcom/meizu/cloud/pushsdk/c/a/b;)Lcom/meizu/cloud/pushsdk/c/c/k;

    move-result-object v0

    if-nez v0, :cond_15

    new-instance p0, Lcom/meizu/cloud/pushsdk/c/a/c;

    new-instance v0, Lcom/meizu/cloud/pushsdk/c/b/a;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/c/b/a;-><init>()V

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/c/h/b;->a(Lcom/meizu/cloud/pushsdk/c/b/a;)Lcom/meizu/cloud/pushsdk/c/b/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/c/a/c;-><init>(Lcom/meizu/cloud/pushsdk/c/b/a;)V

    return-object p0

    :cond_15
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/c/c/k;->a()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_33

    new-instance v1, Lcom/meizu/cloud/pushsdk/c/a/c;

    new-instance v2, Lcom/meizu/cloud/pushsdk/c/b/a;

    invoke-direct {v2, v0}, Lcom/meizu/cloud/pushsdk/c/b/a;-><init>(Lcom/meizu/cloud/pushsdk/c/c/k;)V

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/c/c/k;->a()I

    move-result v3

    invoke-static {v2, p0, v3}, Lcom/meizu/cloud/pushsdk/c/h/b;->a(Lcom/meizu/cloud/pushsdk/c/b/a;Lcom/meizu/cloud/pushsdk/c/a/b;I)Lcom/meizu/cloud/pushsdk/c/b/a;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/meizu/cloud/pushsdk/c/a/c;-><init>(Lcom/meizu/cloud/pushsdk/c/b/a;)V

    invoke-virtual {v1, v0}, Lcom/meizu/cloud/pushsdk/c/a/c;->a(Lcom/meizu/cloud/pushsdk/c/c/k;)V

    return-object v1

    :cond_33
    new-instance p0, Lcom/meizu/cloud/pushsdk/c/a/c;

    const-string v1, "success"

    invoke-direct {p0, v1}, Lcom/meizu/cloud/pushsdk/c/a/c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/meizu/cloud/pushsdk/c/a/c;->a(Lcom/meizu/cloud/pushsdk/c/c/k;)V
    :try_end_3d
    .catch Lcom/meizu/cloud/pushsdk/c/b/a; {:try_start_0 .. :try_end_3d} :catch_49
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3d} :catch_3e

    return-object p0

    :catch_3e
    move-exception p0

    new-instance v0, Lcom/meizu/cloud/pushsdk/c/a/c;

    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/c/h/b;->a(Ljava/lang/Exception;)Lcom/meizu/cloud/pushsdk/c/b/a;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/meizu/cloud/pushsdk/c/a/c;-><init>(Lcom/meizu/cloud/pushsdk/c/b/a;)V

    return-object v0

    :catch_49
    move-exception p0

    new-instance v0, Lcom/meizu/cloud/pushsdk/c/a/c;

    new-instance v1, Lcom/meizu/cloud/pushsdk/c/b/a;

    invoke-direct {v1, p0}, Lcom/meizu/cloud/pushsdk/c/b/a;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/meizu/cloud/pushsdk/c/h/b;->a(Lcom/meizu/cloud/pushsdk/c/b/a;)Lcom/meizu/cloud/pushsdk/c/b/a;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/meizu/cloud/pushsdk/c/a/c;-><init>(Lcom/meizu/cloud/pushsdk/c/b/a;)V

    return-object v0
.end method

.method private static d(Lcom/meizu/cloud/pushsdk/c/a/b;)Lcom/meizu/cloud/pushsdk/c/a/c;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/meizu/cloud/pushsdk/c/a/b;",
            ")",
            "Lcom/meizu/cloud/pushsdk/c/a/c<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/c/e/a;->c(Lcom/meizu/cloud/pushsdk/c/a/b;)Lcom/meizu/cloud/pushsdk/c/c/k;

    move-result-object v0

    if-nez v0, :cond_19

    new-instance v1, Lcom/meizu/cloud/pushsdk/c/a/c;

    new-instance v2, Lcom/meizu/cloud/pushsdk/c/b/a;

    invoke-direct {v2}, Lcom/meizu/cloud/pushsdk/c/b/a;-><init>()V

    invoke-static {v2}, Lcom/meizu/cloud/pushsdk/c/h/b;->a(Lcom/meizu/cloud/pushsdk/c/b/a;)Lcom/meizu/cloud/pushsdk/c/b/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/meizu/cloud/pushsdk/c/a/c;-><init>(Lcom/meizu/cloud/pushsdk/c/b/a;)V
    :try_end_15
    .catch Lcom/meizu/cloud/pushsdk/c/b/a; {:try_start_1 .. :try_end_15} :catch_69
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_5b
    .catchall {:try_start_1 .. :try_end_15} :catchall_59

    invoke-static {v0, p0}, Lcom/meizu/cloud/pushsdk/c/h/a;->a(Lcom/meizu/cloud/pushsdk/c/c/k;Lcom/meizu/cloud/pushsdk/c/a/b;)V

    return-object v1

    :cond_19
    :try_start_19
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/c/a/b;->f()Lcom/meizu/cloud/pushsdk/c/a/e;

    move-result-object v1

    sget-object v2, Lcom/meizu/cloud/pushsdk/c/a/e;->d:Lcom/meizu/cloud/pushsdk/c/a/e;

    if-ne v1, v2, :cond_2d

    new-instance v1, Lcom/meizu/cloud/pushsdk/c/a/c;

    invoke-direct {v1, v0}, Lcom/meizu/cloud/pushsdk/c/a/c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/meizu/cloud/pushsdk/c/a/c;->a(Lcom/meizu/cloud/pushsdk/c/c/k;)V
    :try_end_29
    .catch Lcom/meizu/cloud/pushsdk/c/b/a; {:try_start_19 .. :try_end_29} :catch_69
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_29} :catch_5b
    .catchall {:try_start_19 .. :try_end_29} :catchall_59

    invoke-static {v0, p0}, Lcom/meizu/cloud/pushsdk/c/h/a;->a(Lcom/meizu/cloud/pushsdk/c/c/k;Lcom/meizu/cloud/pushsdk/c/a/b;)V

    return-object v1

    :cond_2d
    :try_start_2d
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/c/c/k;->a()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_4e

    new-instance v1, Lcom/meizu/cloud/pushsdk/c/a/c;

    new-instance v2, Lcom/meizu/cloud/pushsdk/c/b/a;

    invoke-direct {v2, v0}, Lcom/meizu/cloud/pushsdk/c/b/a;-><init>(Lcom/meizu/cloud/pushsdk/c/c/k;)V

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/c/c/k;->a()I

    move-result v3

    invoke-static {v2, p0, v3}, Lcom/meizu/cloud/pushsdk/c/h/b;->a(Lcom/meizu/cloud/pushsdk/c/b/a;Lcom/meizu/cloud/pushsdk/c/a/b;I)Lcom/meizu/cloud/pushsdk/c/b/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/meizu/cloud/pushsdk/c/a/c;-><init>(Lcom/meizu/cloud/pushsdk/c/b/a;)V

    invoke-virtual {v1, v0}, Lcom/meizu/cloud/pushsdk/c/a/c;->a(Lcom/meizu/cloud/pushsdk/c/c/k;)V
    :try_end_4a
    .catch Lcom/meizu/cloud/pushsdk/c/b/a; {:try_start_2d .. :try_end_4a} :catch_69
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_4a} :catch_5b
    .catchall {:try_start_2d .. :try_end_4a} :catchall_59

    invoke-static {v0, p0}, Lcom/meizu/cloud/pushsdk/c/h/a;->a(Lcom/meizu/cloud/pushsdk/c/c/k;Lcom/meizu/cloud/pushsdk/c/a/b;)V

    return-object v1

    :cond_4e
    :try_start_4e
    invoke-virtual {p0, v0}, Lcom/meizu/cloud/pushsdk/c/a/b;->a(Lcom/meizu/cloud/pushsdk/c/c/k;)Lcom/meizu/cloud/pushsdk/c/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/meizu/cloud/pushsdk/c/a/c;->a(Lcom/meizu/cloud/pushsdk/c/c/k;)V
    :try_end_55
    .catch Lcom/meizu/cloud/pushsdk/c/b/a; {:try_start_4e .. :try_end_55} :catch_69
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_55} :catch_5b
    .catchall {:try_start_4e .. :try_end_55} :catchall_59

    invoke-static {v0, p0}, Lcom/meizu/cloud/pushsdk/c/h/a;->a(Lcom/meizu/cloud/pushsdk/c/c/k;Lcom/meizu/cloud/pushsdk/c/a/b;)V

    return-object v1

    :catchall_59
    move-exception v1

    goto :goto_77

    :catch_5b
    move-exception v1

    :try_start_5c
    new-instance v2, Lcom/meizu/cloud/pushsdk/c/a/c;

    invoke-static {v1}, Lcom/meizu/cloud/pushsdk/c/h/b;->a(Ljava/lang/Exception;)Lcom/meizu/cloud/pushsdk/c/b/a;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/meizu/cloud/pushsdk/c/a/c;-><init>(Lcom/meizu/cloud/pushsdk/c/b/a;)V
    :try_end_65
    .catchall {:try_start_5c .. :try_end_65} :catchall_59

    invoke-static {v0, p0}, Lcom/meizu/cloud/pushsdk/c/h/a;->a(Lcom/meizu/cloud/pushsdk/c/c/k;Lcom/meizu/cloud/pushsdk/c/a/b;)V

    return-object v2

    :catch_69
    move-exception v1

    :try_start_6a
    new-instance v2, Lcom/meizu/cloud/pushsdk/c/a/c;

    invoke-static {v1}, Lcom/meizu/cloud/pushsdk/c/h/b;->a(Lcom/meizu/cloud/pushsdk/c/b/a;)Lcom/meizu/cloud/pushsdk/c/b/a;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/meizu/cloud/pushsdk/c/a/c;-><init>(Lcom/meizu/cloud/pushsdk/c/b/a;)V
    :try_end_73
    .catchall {:try_start_6a .. :try_end_73} :catchall_59

    invoke-static {v0, p0}, Lcom/meizu/cloud/pushsdk/c/h/a;->a(Lcom/meizu/cloud/pushsdk/c/c/k;Lcom/meizu/cloud/pushsdk/c/a/b;)V

    return-object v2

    :goto_77
    invoke-static {v0, p0}, Lcom/meizu/cloud/pushsdk/c/h/a;->a(Lcom/meizu/cloud/pushsdk/c/c/k;Lcom/meizu/cloud/pushsdk/c/a/b;)V

    throw v1
.end method
