.class public Lcom/xiaomi/push/ju;
.super Ljava/lang/Object;


# static fields
.field private static a:I = 0x7fffffff


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static a(Lcom/xiaomi/push/jr;B)V
    .registers 3

    sget v0, Lcom/xiaomi/push/ju;->a:I

    invoke-static {p0, p1, v0}, Lcom/xiaomi/push/ju;->a(Lcom/xiaomi/push/jr;BI)V

    return-void
.end method

.method public static a(Lcom/xiaomi/push/jr;BI)V
    .registers 6

    if-lez p2, :cond_86

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_90

    :pswitch_6
    goto/16 :goto_85

    :pswitch_8
    invoke-virtual {p0}, Lcom/xiaomi/push/jr;->a()Lcom/xiaomi/push/jp;

    move-result-object p1

    :goto_c
    iget v1, p1, Lcom/xiaomi/push/jp;->a:I

    if-ge v0, v1, :cond_1a

    iget-byte v1, p1, Lcom/xiaomi/push/jp;->a:B

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v1, v2}, Lcom/xiaomi/push/ju;->a(Lcom/xiaomi/push/jr;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1a
    invoke-virtual {p0}, Lcom/xiaomi/push/jr;->i()V

    goto/16 :goto_85

    :pswitch_1f
    invoke-virtual {p0}, Lcom/xiaomi/push/jr;->a()Lcom/xiaomi/push/jv;

    move-result-object p1

    :goto_23
    iget v1, p1, Lcom/xiaomi/push/jv;->a:I

    if-ge v0, v1, :cond_31

    iget-byte v1, p1, Lcom/xiaomi/push/jv;->a:B

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v1, v2}, Lcom/xiaomi/push/ju;->a(Lcom/xiaomi/push/jr;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_31
    invoke-virtual {p0}, Lcom/xiaomi/push/jr;->j()V

    goto :goto_85

    :pswitch_35
    invoke-virtual {p0}, Lcom/xiaomi/push/jr;->a()Lcom/xiaomi/push/jq;

    move-result-object p1

    :goto_39
    iget v1, p1, Lcom/xiaomi/push/jq;->a:I

    if-ge v0, v1, :cond_4c

    iget-byte v1, p1, Lcom/xiaomi/push/jq;->a:B

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v1, v2}, Lcom/xiaomi/push/ju;->a(Lcom/xiaomi/push/jr;BI)V

    iget-byte v1, p1, Lcom/xiaomi/push/jq;->b:B

    invoke-static {p0, v1, v2}, Lcom/xiaomi/push/ju;->a(Lcom/xiaomi/push/jr;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_4c
    invoke-virtual {p0}, Lcom/xiaomi/push/jr;->h()V

    goto :goto_85

    :pswitch_50
    invoke-virtual {p0}, Lcom/xiaomi/push/jr;->a()Lcom/xiaomi/push/jw;

    :goto_53
    invoke-virtual {p0}, Lcom/xiaomi/push/jr;->a()Lcom/xiaomi/push/jo;

    move-result-object p1

    iget-byte v0, p1, Lcom/xiaomi/push/jo;->a:B

    if-nez v0, :cond_5f

    invoke-virtual {p0}, Lcom/xiaomi/push/jr;->f()V

    goto :goto_85

    :cond_5f
    iget-byte p1, p1, Lcom/xiaomi/push/jo;->a:B

    add-int/lit8 v0, p2, -0x1

    :try_start_63
    invoke-static {p0, p1, v0}, Lcom/xiaomi/push/ju;->a(Lcom/xiaomi/push/jr;BI)V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_66} :catch_8e

    invoke-virtual {p0}, Lcom/xiaomi/push/jr;->g()V

    goto :goto_53

    :pswitch_6a
    invoke-virtual {p0}, Lcom/xiaomi/push/jr;->a()Ljava/nio/ByteBuffer;

    goto :goto_85

    :pswitch_6e
    invoke-virtual {p0}, Lcom/xiaomi/push/jr;->a()J

    goto :goto_85

    :pswitch_72
    invoke-virtual {p0}, Lcom/xiaomi/push/jr;->a()I

    goto :goto_85

    :pswitch_76
    invoke-virtual {p0}, Lcom/xiaomi/push/jr;->a()S

    goto :goto_85

    :pswitch_7a
    invoke-virtual {p0}, Lcom/xiaomi/push/jr;->a()D

    goto :goto_85

    :pswitch_7e
    invoke-virtual {p0}, Lcom/xiaomi/push/jr;->a()B

    goto :goto_85

    :pswitch_82
    invoke-virtual {p0}, Lcom/xiaomi/push/jr;->a()Z

    :goto_85
    return-void

    :cond_86
    new-instance p0, Lcom/xiaomi/push/jl;

    const-string p1, "Maximum skip depth exceeded"

    invoke-direct {p0, p1}, Lcom/xiaomi/push/jl;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_8e
    move-exception p0

    throw p0

    :pswitch_data_90
    .packed-switch 0x2
        :pswitch_82
        :pswitch_7e
        :pswitch_7a
        :pswitch_6
        :pswitch_76
        :pswitch_6
        :pswitch_72
        :pswitch_6
        :pswitch_6e
        :pswitch_6a
        :pswitch_50
        :pswitch_35
        :pswitch_1f
        :pswitch_8
    .end packed-switch
.end method
