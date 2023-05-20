.class public Lcom/xiaomi/push/service/cb;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Lcom/xiaomi/push/ir;)Lcom/xiaomi/push/jg;
    .registers 3

    invoke-virtual {p1}, Lcom/xiaomi/push/ir;->b()Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    invoke-virtual {p1}, Lcom/xiaomi/push/ir;->a()[B

    move-result-object p0

    invoke-virtual {p1}, Lcom/xiaomi/push/ir;->a()Lcom/xiaomi/push/hv;

    move-result-object v0

    iget-boolean p1, p1, Lcom/xiaomi/push/ir;->b:Z

    invoke-static {v0, p1}, Lcom/xiaomi/push/service/cb;->a(Lcom/xiaomi/push/hv;Z)Lcom/xiaomi/push/jg;

    move-result-object p1

    if-eqz p1, :cond_1b

    invoke-static {p1, p0}, Lcom/xiaomi/push/jf;->a(Lcom/xiaomi/push/jg;[B)V

    :cond_1b
    return-object p1
.end method

.method private static a(Lcom/xiaomi/push/hv;Z)Lcom/xiaomi/push/jg;
    .registers 3

    sget-object v0, Lcom/xiaomi/push/service/cc;->a:[I

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
