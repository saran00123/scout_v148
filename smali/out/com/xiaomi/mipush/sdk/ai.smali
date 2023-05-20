.class public Lcom/xiaomi/mipush/sdk/ai;
.super Ljava/lang/Object;


# direct methods
.method protected static a(Landroid/content/Context;Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;)Lcom/xiaomi/push/ir;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/xiaomi/push/jg<",
            "TT;*>;>(",
            "Landroid/content/Context;",
            "TT;",
            "Lcom/xiaomi/push/hv;",
            ")",
            "Lcom/xiaomi/push/ir;"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/push/hv;->a:Lcom/xiaomi/push/hv;

    invoke-virtual {p2, v0}, Lcom/xiaomi/push/hv;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/b;->a()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/xiaomi/mipush/sdk/ai;->a(Landroid/content/Context;Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;ZLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/ir;

    move-result-object p0

    return-object p0
.end method

.method protected static a(Landroid/content/Context;Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;ZLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/ir;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/xiaomi/push/jg<",
            "TT;*>;>(",
            "Landroid/content/Context;",
            "TT;",
            "Lcom/xiaomi/push/hv;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/push/ir;"
        }
    .end annotation

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/mipush/sdk/ai;->a(Landroid/content/Context;Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;ZLjava/lang/String;Ljava/lang/String;Z)Lcom/xiaomi/push/ir;

    move-result-object p0

    return-object p0
.end method

.method protected static a(Landroid/content/Context;Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;ZLjava/lang/String;Ljava/lang/String;Z)Lcom/xiaomi/push/ir;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/xiaomi/push/jg<",
            "TT;*>;>(",
            "Landroid/content/Context;",
            "TT;",
            "Lcom/xiaomi/push/hv;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/xiaomi/push/ir;"
        }
    .end annotation

    invoke-static {p1}, Lcom/xiaomi/push/jf;->a(Lcom/xiaomi/push/jg;)[B

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_d

    const-string p0, "invoke convertThriftObjectToBytes method, return null."

    :goto_9
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    return-object v0

    :cond_d
    new-instance v1, Lcom/xiaomi/push/ir;

    invoke-direct {v1}, Lcom/xiaomi/push/ir;-><init>()V

    if-eqz p3, :cond_33

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/b;->d()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    const-string p0, "regSecret is empty, return null"

    goto :goto_9

    :cond_25
    invoke-static {p0}, Lcom/xiaomi/push/bl;->a(Ljava/lang/String;)[B

    move-result-object p0

    :try_start_29
    invoke-static {p0, p1}, Lcom/xiaomi/push/h;->b([B[B)[B

    move-result-object p1
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2d} :catch_2e

    goto :goto_33

    :catch_2e
    const-string p0, "encryption error. "

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    :cond_33
    :goto_33
    new-instance p0, Lcom/xiaomi/push/ik;

    invoke-direct {p0}, Lcom/xiaomi/push/ik;-><init>()V

    const-wide/16 v2, 0x5

    iput-wide v2, p0, Lcom/xiaomi/push/ik;->a:J

    const-string v0, "fakeid"

    iput-object v0, p0, Lcom/xiaomi/push/ik;->a:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/xiaomi/push/ir;->a(Lcom/xiaomi/push/ik;)Lcom/xiaomi/push/ir;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/xiaomi/push/ir;->a(Ljava/nio/ByteBuffer;)Lcom/xiaomi/push/ir;

    invoke-virtual {v1, p2}, Lcom/xiaomi/push/ir;->a(Lcom/xiaomi/push/hv;)Lcom/xiaomi/push/ir;

    invoke-virtual {v1, p6}, Lcom/xiaomi/push/ir;->b(Z)Lcom/xiaomi/push/ir;

    invoke-virtual {v1, p4}, Lcom/xiaomi/push/ir;->b(Ljava/lang/String;)Lcom/xiaomi/push/ir;

    invoke-virtual {v1, p3}, Lcom/xiaomi/push/ir;->a(Z)Lcom/xiaomi/push/ir;

    invoke-virtual {v1, p5}, Lcom/xiaomi/push/ir;->a(Ljava/lang/String;)Lcom/xiaomi/push/ir;

    return-object v1
.end method

.method public static a(Landroid/content/Context;Lcom/xiaomi/push/ir;)Lcom/xiaomi/push/jg;
    .registers 3

    invoke-virtual {p1}, Lcom/xiaomi/push/ir;->b()Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Lcom/xiaomi/mipush/sdk/e;->b:Lcom/xiaomi/mipush/sdk/e;

    invoke-static {p0, p1, v0}, Lcom/xiaomi/mipush/sdk/i;->a(Landroid/content/Context;Lcom/xiaomi/push/ir;Lcom/xiaomi/mipush/sdk/e;)[B

    move-result-object v0

    if-nez v0, :cond_1a

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/b;->d()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/push/bl;->a(Ljava/lang/String;)[B

    move-result-object v0

    :cond_1a
    :try_start_1a
    invoke-virtual {p1}, Lcom/xiaomi/push/ir;->a()[B

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/push/h;->a([B[B)[B

    move-result-object p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_22} :catch_23

    goto :goto_30

    :catch_23
    move-exception p0

    new-instance p1, Lcom/xiaomi/mipush/sdk/u;

    const-string v0, "the aes decrypt failed."

    invoke-direct {p1, v0, p0}, Lcom/xiaomi/mipush/sdk/u;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_2c
    invoke-virtual {p1}, Lcom/xiaomi/push/ir;->a()[B

    move-result-object p0

    :goto_30
    invoke-virtual {p1}, Lcom/xiaomi/push/ir;->a()Lcom/xiaomi/push/hv;

    move-result-object v0

    iget-boolean p1, p1, Lcom/xiaomi/push/ir;->b:Z

    invoke-static {v0, p1}, Lcom/xiaomi/mipush/sdk/ai;->a(Lcom/xiaomi/push/hv;Z)Lcom/xiaomi/push/jg;

    move-result-object p1

    if-eqz p1, :cond_3f

    invoke-static {p1, p0}, Lcom/xiaomi/push/jf;->a(Lcom/xiaomi/push/jg;[B)V

    :cond_3f
    return-object p1
.end method

.method private static a(Lcom/xiaomi/push/hv;Z)Lcom/xiaomi/push/jg;
    .registers 3

    sget-object v0, Lcom/xiaomi/mipush/sdk/aj;->a:[I

    invoke-virtual {p0}, Lcom/xiaomi/push/hv;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_56

    const/4 p0, 0x0

    return-object p0

    :pswitch_d
    new-instance p0, Lcom/xiaomi/push/iq;

    invoke-direct {p0}, Lcom/xiaomi/push/iq;-><init>()V

    return-object p0

    :pswitch_13
    if-eqz p1, :cond_1b

    new-instance p0, Lcom/xiaomi/push/iu;

    invoke-direct {p0}, Lcom/xiaomi/push/iu;-><init>()V

    return-object p0

    :cond_1b
    new-instance p0, Lcom/xiaomi/push/im;

    invoke-direct {p0}, Lcom/xiaomi/push/im;-><init>()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/im;->a(Z)V

    return-object p0

    :pswitch_25
    new-instance p0, Lcom/xiaomi/push/ix;

    invoke-direct {p0}, Lcom/xiaomi/push/ix;-><init>()V

    return-object p0

    :pswitch_2b
    new-instance p0, Lcom/xiaomi/push/iq;

    invoke-direct {p0}, Lcom/xiaomi/push/iq;-><init>()V

    return-object p0

    :pswitch_31
    new-instance p0, Lcom/xiaomi/push/il;

    invoke-direct {p0}, Lcom/xiaomi/push/il;-><init>()V

    return-object p0

    :pswitch_37
    new-instance p0, Lcom/xiaomi/push/iy;

    invoke-direct {p0}, Lcom/xiaomi/push/iy;-><init>()V

    return-object p0

    :pswitch_3d
    new-instance p0, Lcom/xiaomi/push/je;

    invoke-direct {p0}, Lcom/xiaomi/push/je;-><init>()V

    return-object p0

    :pswitch_43
    new-instance p0, Lcom/xiaomi/push/ja;

    invoke-direct {p0}, Lcom/xiaomi/push/ja;-><init>()V

    return-object p0

    :pswitch_49
    new-instance p0, Lcom/xiaomi/push/jc;

    invoke-direct {p0}, Lcom/xiaomi/push/jc;-><init>()V

    return-object p0

    :pswitch_4f
    new-instance p0, Lcom/xiaomi/push/iw;

    invoke-direct {p0}, Lcom/xiaomi/push/iw;-><init>()V

    return-object p0

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_4f
        :pswitch_49
        :pswitch_43
        :pswitch_3d
        :pswitch_37
        :pswitch_31
        :pswitch_2b
        :pswitch_25
        :pswitch_13
        :pswitch_d
    .end packed-switch
.end method

.method protected static b(Landroid/content/Context;Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;ZLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/ir;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/xiaomi/push/jg<",
            "TT;*>;>(",
            "Landroid/content/Context;",
            "TT;",
            "Lcom/xiaomi/push/hv;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/push/ir;"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/mipush/sdk/ai;->a(Landroid/content/Context;Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;ZLjava/lang/String;Ljava/lang/String;Z)Lcom/xiaomi/push/ir;

    move-result-object p0

    return-object p0
.end method
