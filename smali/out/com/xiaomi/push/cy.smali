.class public abstract Lcom/xiaomi/push/cy;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/cy$a;
    }
.end annotation


# direct methods
.method static a(II)I
    .registers 3

    add-int/lit16 v0, p1, 0xf3

    div-int/lit16 v0, v0, 0x5a8

    mul-int/lit16 v0, v0, 0x84

    add-int/lit16 v0, v0, 0x438

    add-int/2addr v0, p0

    add-int/2addr v0, p1

    return v0
.end method

.method static a(III)I
    .registers 4

    add-int/lit16 v0, p1, 0xc8

    div-int/lit16 v0, v0, 0x5a8

    mul-int/lit16 v0, v0, 0x84

    add-int/lit16 v0, v0, 0x3f3

    add-int/2addr v0, p1

    add-int/2addr v0, p0

    add-int/2addr v0, p2

    return v0
.end method

.method private static a(Lcom/xiaomi/push/cx;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/push/cx;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaomi/push/bh;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/push/cx;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {p3}, Lcom/xiaomi/push/cy;->a(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/xiaomi/push/cy;->a(II)I

    move-result p0

    return p0

    :cond_14
    invoke-virtual {p0}, Lcom/xiaomi/push/cx;->a()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2c

    invoke-static {p2}, Lcom/xiaomi/push/cy;->a(Ljava/util/List;)I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p3}, Lcom/xiaomi/push/cy;->a(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p0, p2}, Lcom/xiaomi/push/cy;->a(III)I

    move-result p0

    return p0

    :cond_2c
    const/4 p0, -0x1

    return p0
.end method

.method static a(Ljava/lang/String;)I
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    :try_start_8
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    array-length p0, p0
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_f} :catch_10

    return p0

    :catch_10
    return v1
.end method

.method static a(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/push/bh;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_5
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/push/bh;

    invoke-interface {v1}, Lcom/xiaomi/push/bh;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    invoke-interface {v1}, Lcom/xiaomi/push/bh;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    :cond_24
    invoke-interface {v1}, Lcom/xiaomi/push/bh;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {v1}, Lcom/xiaomi/push/bh;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_5

    :cond_38
    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaomi/push/bh;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/push/cy$a;

    invoke-direct {v0}, Lcom/xiaomi/push/cy$a;-><init>()V

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/xiaomi/push/cy;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/xiaomi/push/cx;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/xiaomi/push/cx;Z)Ljava/lang/String;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaomi/push/bh;",
            ">;",
            "Lcom/xiaomi/push/cx;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static/range {p0 .. p0}, Lcom/xiaomi/push/bi;->b(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_c0

    :try_start_f
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz p4, :cond_26

    invoke-static {}, Lcom/xiaomi/push/cu;->a()Lcom/xiaomi/push/cu;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/xiaomi/push/cu;->a(Ljava/lang/String;)Lcom/xiaomi/push/cq;

    move-result-object v6

    if-eqz v6, :cond_24

    invoke-virtual {v6, v0}, Lcom/xiaomi/push/cq;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    :cond_24
    move-object v13, v6

    goto :goto_27

    :cond_26
    move-object v13, v5

    :goto_27
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_30

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_30
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v6, v5

    :goto_35
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ba

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    if-eqz v2, :cond_4b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v15, v0

    goto :goto_4c

    :cond_4b
    move-object v15, v5

    :goto_4c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16
    :try_end_50
    .catch Ljava/net/MalformedURLException; {:try_start_f .. :try_end_50} :catch_bc

    :try_start_50
    invoke-virtual {v3, v1, v14, v15}, Lcom/xiaomi/push/cx;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_58

    goto/16 :goto_ba

    :cond_58
    invoke-virtual {v3, v1, v14, v15}, Lcom/xiaomi/push/cx;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v12
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_5c} :catch_99
    .catch Ljava/net/MalformedURLException; {:try_start_50 .. :try_end_5c} :catch_bc

    :try_start_5c
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_60} :catch_95
    .catch Ljava/net/MalformedURLException; {:try_start_5c .. :try_end_60} :catch_bc

    if-nez v0, :cond_77

    if-eqz v13, :cond_bb

    :try_start_64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v8, v6, v16

    invoke-static {v3, v14, v15, v12}, Lcom/xiaomi/push/cy;->a(Lcom/xiaomi/push/cx;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    int-to-long v10, v0

    move-object v6, v13

    move-object v7, v14

    invoke-virtual/range {v6 .. v11}, Lcom/xiaomi/push/cq;->a(Ljava/lang/String;JJ)V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_74} :catch_75
    .catch Ljava/net/MalformedURLException; {:try_start_64 .. :try_end_74} :catch_bc

    goto :goto_bb

    :catch_75
    move-exception v0

    goto :goto_9b

    :cond_77
    if-eqz v13, :cond_92

    :try_start_79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v8, v6, v16

    invoke-static {v3, v14, v15, v12}, Lcom/xiaomi/push/cy;->a(Lcom/xiaomi/push/cx;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)I

    move-result v0
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_83} :catch_95
    .catch Ljava/net/MalformedURLException; {:try_start_79 .. :try_end_83} :catch_bc

    int-to-long v10, v0

    const/4 v0, 0x0

    move-object v6, v13

    move-object v7, v14

    move-object/from16 v18, v12

    move-object v12, v0

    :try_start_8a
    invoke-virtual/range {v6 .. v12}, Lcom/xiaomi/push/cq;->a(Ljava/lang/String;JJLjava/lang/Exception;)V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_8e
    .catch Ljava/net/MalformedURLException; {:try_start_8a .. :try_end_8d} :catch_bc

    goto :goto_b6

    :catch_8e
    move-exception v0

    move-object/from16 v12, v18

    goto :goto_9b

    :cond_92
    move-object/from16 v18, v12

    goto :goto_b6

    :catch_95
    move-exception v0

    move-object/from16 v18, v12

    goto :goto_9b

    :catch_99
    move-exception v0

    move-object v12, v6

    :goto_9b
    if-eqz v13, :cond_b1

    :try_start_9d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v8, v6, v16

    invoke-static {v3, v14, v15, v12}, Lcom/xiaomi/push/cy;->a(Lcom/xiaomi/push/cx;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)I

    move-result v6

    int-to-long v10, v6

    move-object v6, v13

    move-object v7, v14

    move-object/from16 v18, v12

    move-object v12, v0

    invoke-virtual/range {v6 .. v12}, Lcom/xiaomi/push/cq;->a(Ljava/lang/String;JJLjava/lang/Exception;)V

    goto :goto_b3

    :cond_b1
    move-object/from16 v18, v12

    :goto_b3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b6
    .catch Ljava/net/MalformedURLException; {:try_start_9d .. :try_end_b6} :catch_bc

    :goto_b6
    move-object/from16 v6, v18

    goto/16 :goto_35

    :cond_ba
    :goto_ba
    move-object v12, v6

    :cond_bb
    :goto_bb
    return-object v12

    :catch_bc
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    :cond_c0
    return-object v5
.end method
