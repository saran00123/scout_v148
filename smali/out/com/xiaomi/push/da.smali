.class public Lcom/xiaomi/push/da;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;I)I
    .registers 3

    invoke-static {p0}, Lcom/xiaomi/push/ho;->a(Landroid/content/Context;)I

    move-result p0

    const/4 v0, -0x1

    if-ne v0, p0, :cond_8

    return v0

    :cond_8
    if-nez p0, :cond_d

    const/16 p0, 0xd

    goto :goto_f

    :cond_d
    const/16 p0, 0xb

    :goto_f
    mul-int/2addr p1, p0

    div-int/lit8 p1, p1, 0xa

    return p1
.end method

.method public static a(Lcom/xiaomi/push/hv;)I
    .registers 1

    invoke-virtual {p0}, Lcom/xiaomi/push/hv;->a()I

    move-result p0

    invoke-static {p0}, Lcom/xiaomi/push/em;->a(I)I

    move-result p0

    return p0
.end method

.method public static a(Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;)I
    .registers 4

    sget-object v0, Lcom/xiaomi/push/db;->a:[I

    invoke-virtual {p1}, Lcom/xiaomi/push/hv;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_c0

    goto/16 :goto_be

    :pswitch_e
    invoke-virtual {p1}, Lcom/xiaomi/push/hv;->a()I

    move-result p1

    invoke-static {p1}, Lcom/xiaomi/push/em;->a(I)I

    move-result p1

    if-eqz p0, :cond_55

    :try_start_18
    instance-of v0, p0, Lcom/xiaomi/push/iq;

    if-eqz v0, :cond_33

    check-cast p0, Lcom/xiaomi/push/iq;

    invoke-virtual {p0}, Lcom/xiaomi/push/iq;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_55

    invoke-static {p0}, Lcom/xiaomi/push/fl;->a(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_55

    invoke-static {p0}, Lcom/xiaomi/push/fl;->a(Ljava/lang/String;)I

    move-result p1

    goto :goto_55

    :cond_33
    instance-of v0, p0, Lcom/xiaomi/push/ip;

    if-eqz v0, :cond_55

    check-cast p0, Lcom/xiaomi/push/ip;

    invoke-virtual {p0}, Lcom/xiaomi/push/ip;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_55

    invoke-static {p0}, Lcom/xiaomi/push/fl;->a(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_55

    invoke-static {p0}, Lcom/xiaomi/push/fl;->a(Ljava/lang/String;)I

    move-result p0
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_4d} :catch_50

    move v1, p0

    goto/16 :goto_be

    :catch_50
    const-string p0, "PERF_ERROR : parse Command type error"

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    :cond_55
    :goto_55
    move v1, p1

    goto :goto_be

    :pswitch_57
    invoke-virtual {p1}, Lcom/xiaomi/push/hv;->a()I

    move-result p1

    invoke-static {p1}, Lcom/xiaomi/push/em;->a(I)I

    move-result p1

    if-eqz p0, :cond_55

    :try_start_61
    instance-of v0, p0, Lcom/xiaomi/push/im;

    if-eqz v0, :cond_82

    check-cast p0, Lcom/xiaomi/push/im;

    iget-object p0, p0, Lcom/xiaomi/push/im;->d:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_55

    invoke-static {p0}, Lcom/xiaomi/push/em;->a(Ljava/lang/String;)Lcom/xiaomi/push/if;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/em;->a(Ljava/lang/Enum;)I

    move-result v0

    if-eq v0, v1, :cond_55

    invoke-static {p0}, Lcom/xiaomi/push/em;->a(Ljava/lang/String;)Lcom/xiaomi/push/if;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/push/em;->a(Ljava/lang/Enum;)I

    move-result p1

    goto :goto_55

    :cond_82
    instance-of v0, p0, Lcom/xiaomi/push/iu;

    if-eqz v0, :cond_55

    check-cast p0, Lcom/xiaomi/push/iu;

    iget-object p0, p0, Lcom/xiaomi/push/iu;->d:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_55

    invoke-static {p0}, Lcom/xiaomi/push/em;->a(Ljava/lang/String;)Lcom/xiaomi/push/if;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/em;->a(Ljava/lang/Enum;)I

    move-result v0

    if-eq v0, v1, :cond_a2

    invoke-static {p0}, Lcom/xiaomi/push/em;->a(Ljava/lang/String;)Lcom/xiaomi/push/if;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/em;->a(Ljava/lang/Enum;)I

    move-result p1

    :cond_a2
    sget-object v0, Lcom/xiaomi/push/if;->B:Lcom/xiaomi/push/if;

    invoke-static {p0}, Lcom/xiaomi/push/em;->a(Ljava/lang/String;)Lcom/xiaomi/push/if;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/if;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_ac} :catch_af

    if-eqz p0, :cond_55

    goto :goto_be

    :catch_af
    move v1, p1

    const-string p0, "PERF_ERROR : parse Notification type error"

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    goto :goto_be

    :pswitch_b6
    invoke-virtual {p1}, Lcom/xiaomi/push/hv;->a()I

    move-result p0

    invoke-static {p0}, Lcom/xiaomi/push/em;->a(I)I

    move-result v1

    :goto_be
    return v1

    nop

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_b6
        :pswitch_b6
        :pswitch_b6
        :pswitch_b6
        :pswitch_b6
        :pswitch_b6
        :pswitch_b6
        :pswitch_b6
        :pswitch_b6
        :pswitch_b6
        :pswitch_57
        :pswitch_e
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;II)V
    .registers 11

    if-lez p2, :cond_20

    if-lez p3, :cond_20

    invoke-static {p1, p3}, Lcom/xiaomi/push/da;->a(Landroid/content/Context;I)I

    move-result p3

    sget-object v0, Lcom/xiaomi/push/if;->B:Lcom/xiaomi/push/if;

    invoke-static {v0}, Lcom/xiaomi/push/em;->a(Ljava/lang/Enum;)I

    move-result v0

    if-eq p2, v0, :cond_20

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/push/en;->a(Landroid/content/Context;)Lcom/xiaomi/push/en;

    move-result-object v0

    const-wide/16 v3, 0x1

    int-to-long v5, p3

    move-object v1, p0

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/push/en;->a(Ljava/lang/String;IJJ)V

    :cond_20
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;Lcom/xiaomi/push/ir;I)V
    .registers 6

    if-eqz p1, :cond_1f

    if-nez p2, :cond_5

    goto :goto_1f

    :cond_5
    invoke-virtual {p2}, Lcom/xiaomi/push/ir;->a()Lcom/xiaomi/push/hv;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-static {v0}, Lcom/xiaomi/push/da;->a(Lcom/xiaomi/push/hv;)I

    move-result v0

    const/4 v1, 0x0

    if-gtz p3, :cond_1c

    invoke-static {p2}, Lcom/xiaomi/push/jf;->a(Lcom/xiaomi/push/jg;)[B

    move-result-object p2

    if-eqz p2, :cond_1b

    array-length p2, p2

    move p3, p2

    goto :goto_1c

    :cond_1b
    move p3, v1

    :cond_1c
    :goto_1c
    invoke-static {p0, p1, v0, p3}, Lcom/xiaomi/push/da;->a(Ljava/lang/String;Landroid/content/Context;II)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;I)V
    .registers 5

    invoke-static {p2, p3}, Lcom/xiaomi/push/da;->a(Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;)I

    move-result p2

    invoke-static {p0, p1, p2, p4}, Lcom/xiaomi/push/da;->a(Ljava/lang/String;Landroid/content/Context;II)V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;[B)V
    .registers 4

    if-eqz p1, :cond_1a

    if-eqz p2, :cond_1a

    array-length v0, p2

    if-gtz v0, :cond_8

    goto :goto_1a

    :cond_8
    new-instance v0, Lcom/xiaomi/push/ir;

    invoke-direct {v0}, Lcom/xiaomi/push/ir;-><init>()V

    :try_start_d
    invoke-static {v0, p2}, Lcom/xiaomi/push/jf;->a(Lcom/xiaomi/push/jg;[B)V

    array-length p2, p2

    invoke-static {p0, p1, v0, p2}, Lcom/xiaomi/push/da;->a(Ljava/lang/String;Landroid/content/Context;Lcom/xiaomi/push/ir;I)V
    :try_end_14
    .catch Lcom/xiaomi/push/jl; {:try_start_d .. :try_end_14} :catch_15

    goto :goto_1a

    :catch_15
    const-string p0, "fail to convert bytes to container"

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :cond_1a
    :goto_1a
    return-void
.end method
