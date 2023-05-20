.class public Lcom/xiaomi/push/hi;
.super Ljava/lang/Object;


# static fields
.field private static a:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/push/gx;
    .registers 4

    invoke-static {}, Lcom/xiaomi/push/hh;->a()Lcom/xiaomi/push/hh;

    move-result-object p0

    const-string p1, "all"

    const-string v0, "xm:chat"

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/hh;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_19

    instance-of p1, p0, Lcom/xiaomi/push/service/k;

    if-eqz p1, :cond_19

    check-cast p0, Lcom/xiaomi/push/service/k;

    invoke-virtual {p0, p2}, Lcom/xiaomi/push/service/k;->b(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/push/gx;

    move-result-object p0

    return-object p0

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;Lcom/xiaomi/push/gj;)Lcom/xiaomi/push/gy;
    .registers 15

    const-string v0, ""

    const-string v1, "id"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "to"

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "from"

    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "chid"

    invoke-interface {p0, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "type"

    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/push/gy$a;->a(Ljava/lang/String;)Lcom/xiaomi/push/gy$a;

    move-result-object v5

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v7, 0x0

    move v8, v7

    :goto_2b
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v9

    if-ge v8, v9, :cond_3f

    invoke-interface {p0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p0, v0, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2b

    :cond_3f
    const/4 v0, 0x0

    move-object v8, v0

    move-object v9, v8

    :cond_42
    :goto_42
    if-nez v7, :cond_7e

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_6d

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v11

    const-string v12, "error"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_60

    invoke-static {p0}, Lcom/xiaomi/push/hi;->a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/push/he;

    move-result-object v9

    goto :goto_42

    :cond_60
    new-instance v8, Lcom/xiaomi/push/gy;

    invoke-direct {v8}, Lcom/xiaomi/push/gy;-><init>()V

    invoke-static {v10, v11, p0}, Lcom/xiaomi/push/hi;->a(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/push/gx;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/xiaomi/push/gy;->a(Lcom/xiaomi/push/gx;)V

    goto :goto_42

    :cond_6d
    const/4 v11, 0x3

    if-ne v10, v11, :cond_42

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "iq"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_42

    const/4 v7, 0x1

    goto :goto_42

    :cond_7e
    if-nez v8, :cond_b8

    sget-object p0, Lcom/xiaomi/push/gy$a;->a:Lcom/xiaomi/push/gy$a;

    if-eq p0, v5, :cond_8f

    sget-object p0, Lcom/xiaomi/push/gy$a;->b:Lcom/xiaomi/push/gy$a;

    if-ne p0, v5, :cond_89

    goto :goto_8f

    :cond_89
    new-instance v8, Lcom/xiaomi/push/hk;

    invoke-direct {v8}, Lcom/xiaomi/push/hk;-><init>()V

    goto :goto_b8

    :cond_8f
    :goto_8f
    new-instance p0, Lcom/xiaomi/push/hj;

    invoke-direct {p0}, Lcom/xiaomi/push/hj;-><init>()V

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/gy;->k(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/xiaomi/push/gy;->m(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/xiaomi/push/gy;->n(Ljava/lang/String;)V

    sget-object v1, Lcom/xiaomi/push/gy$a;->d:Lcom/xiaomi/push/gy$a;

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/gy;->a(Lcom/xiaomi/push/gy$a;)V

    invoke-virtual {p0, v4}, Lcom/xiaomi/push/gy;->l(Ljava/lang/String;)V

    new-instance v1, Lcom/xiaomi/push/he;

    sget-object v2, Lcom/xiaomi/push/he$a;->e:Lcom/xiaomi/push/he$a;

    invoke-direct {v1, v2}, Lcom/xiaomi/push/he;-><init>(Lcom/xiaomi/push/he$a;)V

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/gy;->a(Lcom/xiaomi/push/he;)V

    invoke-virtual {p1, p0}, Lcom/xiaomi/push/gj;->a(Lcom/xiaomi/push/ha;)V

    const-string p0, "iq usage error. send packet in packet parser."

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    return-object v0

    :cond_b8
    :goto_b8
    invoke-virtual {v8, v1}, Lcom/xiaomi/push/gy;->k(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Lcom/xiaomi/push/gy;->m(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Lcom/xiaomi/push/gy;->l(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Lcom/xiaomi/push/gy;->n(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Lcom/xiaomi/push/gy;->a(Lcom/xiaomi/push/gy$a;)V

    invoke-virtual {v8, v9}, Lcom/xiaomi/push/gy;->a(Lcom/xiaomi/push/he;)V

    invoke-virtual {v8, v6}, Lcom/xiaomi/push/gy;->a(Ljava/util/Map;)V

    return-object v8
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/push/ha;
    .registers 17

    move-object/from16 v0, p0

    const-string v1, "s"

    const-string v2, ""

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "message"

    const/4 v6, 0x2

    const-string v7, "type"

    const-string v8, "to"

    const-string v9, "from"

    const-string v10, "chid"

    const-string v11, "id"

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v3, :cond_e8

    invoke-interface {v0, v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v2, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/xiaomi/push/service/bd;->a()Lcom/xiaomi/push/service/bd;

    move-result-object v7

    invoke-virtual {v7, v3, v8}, Lcom/xiaomi/push/service/bd;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/bd$b;

    move-result-object v7

    if-nez v7, :cond_48

    invoke-static {}, Lcom/xiaomi/push/service/bd;->a()Lcom/xiaomi/push/service/bd;

    move-result-object v7

    invoke-virtual {v7, v3, v9}, Lcom/xiaomi/push/service/bd;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/bd$b;

    move-result-object v7

    :cond_48
    if-eqz v7, :cond_e0

    move-object v11, v14

    :cond_4b
    :goto_4b
    const-string v15, "error while receiving a encrypted message with wrong format"

    if-nez v12, :cond_d7

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-ne v5, v6, :cond_c7

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c1

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v11, 0x4

    if-ne v5, v11, :cond_bb

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    const-string v11, "5"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_95

    const-string v11, "6"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7b

    goto :goto_95

    :cond_7b
    iget-object v11, v7, Lcom/xiaomi/push/service/bd$b;->h:Ljava/lang/String;

    invoke-static {v11, v10}, Lcom/xiaomi/push/service/bm;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v11

    invoke-static {v11, v5}, Lcom/xiaomi/push/service/bm;->a([BLjava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/push/hi;->a([B)V

    sget-object v5, Lcom/xiaomi/push/hi;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    sget-object v5, Lcom/xiaomi/push/hi;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v5}, Lcom/xiaomi/push/hi;->a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/push/ha;

    move-result-object v5

    move-object v11, v5

    goto :goto_4b

    :cond_95
    :goto_95
    new-instance v0, Lcom/xiaomi/push/gz;

    invoke-direct {v0}, Lcom/xiaomi/push/gz;-><init>()V

    invoke-virtual {v0, v3}, Lcom/xiaomi/push/gz;->l(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Lcom/xiaomi/push/gz;->b(Z)V

    invoke-virtual {v0, v9}, Lcom/xiaomi/push/gz;->n(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/xiaomi/push/gz;->m(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lcom/xiaomi/push/gz;->k(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/gz;->f(Ljava/lang/String;)V

    new-instance v2, Lcom/xiaomi/push/gx;

    move-object v3, v14

    check-cast v3, [Ljava/lang/String;

    invoke-direct {v2, v1, v14, v3, v3}, Lcom/xiaomi/push/gx;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/xiaomi/push/gx;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/gz;->a(Lcom/xiaomi/push/gx;)V

    return-object v0

    :cond_bb
    new-instance v0, Lcom/xiaomi/push/gu;

    invoke-direct {v0, v15}, Lcom/xiaomi/push/gu;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c1
    new-instance v0, Lcom/xiaomi/push/gu;

    invoke-direct {v0, v15}, Lcom/xiaomi/push/gu;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c7
    const/4 v15, 0x3

    if-ne v5, v15, :cond_4b

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    move v12, v13

    goto/16 :goto_4b

    :cond_d7
    if-eqz v11, :cond_da

    return-object v11

    :cond_da
    new-instance v0, Lcom/xiaomi/push/gu;

    invoke-direct {v0, v15}, Lcom/xiaomi/push/gu;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e0
    new-instance v0, Lcom/xiaomi/push/gu;

    const-string v1, "the channel id is wrong while receiving a encrypted message"

    invoke-direct {v0, v1}, Lcom/xiaomi/push/gu;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e8
    new-instance v1, Lcom/xiaomi/push/gz;

    invoke-direct {v1}, Lcom/xiaomi/push/gz;-><init>()V

    invoke-interface {v0, v2, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_f5

    const-string v3, "ID_NOT_AVAILABLE"

    :cond_f5
    invoke-virtual {v1, v3}, Lcom/xiaomi/push/gz;->k(Ljava/lang/String;)V

    invoke-interface {v0, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaomi/push/gz;->m(Ljava/lang/String;)V

    invoke-interface {v0, v2, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaomi/push/gz;->n(Ljava/lang/String;)V

    invoke-interface {v0, v2, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaomi/push/gz;->l(Ljava/lang/String;)V

    const-string v3, "appid"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaomi/push/gz;->a(Ljava/lang/String;)V

    :try_start_116
    const-string v3, "transient"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_11c} :catch_11d

    goto :goto_11e

    :catch_11d
    move-object v3, v14

    :goto_11e
    :try_start_11e
    const-string v5, "seq"

    invoke-interface {v0, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_12d

    invoke-virtual {v1, v5}, Lcom/xiaomi/push/gz;->b(Ljava/lang/String;)V
    :try_end_12d
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_12d} :catch_12d

    :catch_12d
    :cond_12d
    :try_start_12d
    const-string v5, "mseq"

    invoke-interface {v0, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_13c

    invoke-virtual {v1, v5}, Lcom/xiaomi/push/gz;->c(Ljava/lang/String;)V
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_13c} :catch_13c

    :catch_13c
    :cond_13c
    :try_start_13c
    const-string v5, "fseq"

    invoke-interface {v0, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_14b

    invoke-virtual {v1, v5}, Lcom/xiaomi/push/gz;->d(Ljava/lang/String;)V
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_13c .. :try_end_14b} :catch_14b

    :catch_14b
    :cond_14b
    :try_start_14b
    const-string v5, "status"

    invoke-interface {v0, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_15a

    invoke-virtual {v1, v5}, Lcom/xiaomi/push/gz;->e(Ljava/lang/String;)V
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_15a} :catch_15a

    :catch_15a
    :cond_15a
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_16a

    const-string v5, "true"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16a

    move v3, v13

    goto :goto_16b

    :cond_16a
    move v3, v12

    :goto_16b
    invoke-virtual {v1, v3}, Lcom/xiaomi/push/gz;->a(Z)V

    invoke-interface {v0, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaomi/push/gz;->f(Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/xiaomi/push/hi;->b(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_189

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_189

    invoke-virtual {v1, v3}, Lcom/xiaomi/push/gz;->j(Ljava/lang/String;)V

    goto :goto_18c

    :cond_189
    invoke-static {}, Lcom/xiaomi/push/ha;->q()Ljava/lang/String;

    :cond_18c
    :goto_18c
    if-nez v12, :cond_210

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-ne v3, v6, :cond_200

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1a4

    const-string v5, "xm"

    :cond_1a4
    const-string v7, "subject"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b8

    invoke-static/range {p0 .. p0}, Lcom/xiaomi/push/hi;->b(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Lcom/xiaomi/push/hi;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaomi/push/gz;->g(Ljava/lang/String;)V

    goto :goto_1fe

    :cond_1b8
    const-string v7, "body"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d8

    const-string v3, "encode"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Lcom/xiaomi/push/hi;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1d4

    invoke-virtual {v1, v5, v3}, Lcom/xiaomi/push/gz;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1fe

    :cond_1d4
    invoke-virtual {v1, v5}, Lcom/xiaomi/push/gz;->h(Ljava/lang/String;)V

    goto :goto_1fe

    :cond_1d8
    const-string v7, "thread"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e7

    if-nez v14, :cond_1fe

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v14

    goto :goto_1fe

    :cond_1e7
    const-string v7, "error"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f7

    invoke-static/range {p0 .. p0}, Lcom/xiaomi/push/hi;->a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/push/he;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaomi/push/gz;->a(Lcom/xiaomi/push/he;)V

    goto :goto_1fe

    :cond_1f7
    invoke-static {v3, v5, v0}, Lcom/xiaomi/push/hi;->a(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/push/gx;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaomi/push/gz;->a(Lcom/xiaomi/push/gx;)V

    :cond_1fe
    :goto_1fe
    const/4 v5, 0x3

    goto :goto_18c

    :cond_200
    const/4 v5, 0x3

    if-ne v3, v5, :cond_18c

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18c

    move v12, v13

    goto/16 :goto_18c

    :cond_210
    invoke-virtual {v1, v14}, Lcom/xiaomi/push/gz;->i(Ljava/lang/String;)V

    return-object v1
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/push/hc;
    .registers 8

    sget-object v0, Lcom/xiaomi/push/hc$b;->a:Lcom/xiaomi/push/hc$b;

    const-string v1, ""

    const-string v2, "type"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2d

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    :try_start_12
    invoke-static {v2}, Lcom/xiaomi/push/hc$b;->valueOf(Ljava/lang/String;)Lcom/xiaomi/push/hc$b;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_16} :catch_17

    goto :goto_2d

    :catch_17
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found invalid presence type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2d
    :goto_2d
    new-instance v2, Lcom/xiaomi/push/hc;

    invoke-direct {v2, v0}, Lcom/xiaomi/push/hc;-><init>(Lcom/xiaomi/push/hc$b;)V

    const-string v0, "to"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/push/hc;->m(Ljava/lang/String;)V

    const-string v0, "from"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/push/hc;->n(Ljava/lang/String;)V

    const-string v0, "chid"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/push/hc;->l(Ljava/lang/String;)V

    const-string v0, "id"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_57

    const-string v0, "ID_NOT_AVAILABLE"

    :cond_57
    invoke-virtual {v2, v0}, Lcom/xiaomi/push/hc;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :catch_5c
    :cond_5c
    :goto_5c
    if-nez v1, :cond_ea

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_d8

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v4

    const-string v5, "status"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7d

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/push/hc;->a(Ljava/lang/String;)V

    goto :goto_5c

    :cond_7d
    const-string v5, "priority"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_95

    :try_start_85
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/push/hc;->a(I)V
    :try_end_90
    .catch Ljava/lang/NumberFormatException; {:try_start_85 .. :try_end_90} :catch_5c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_85 .. :try_end_90} :catch_91

    goto :goto_5c

    :catch_91
    invoke-virtual {v2, v0}, Lcom/xiaomi/push/hc;->a(I)V

    goto :goto_5c

    :cond_95
    const-string v5, "show"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    :try_start_a1
    invoke-static {v3}, Lcom/xiaomi/push/hc$a;->valueOf(Ljava/lang/String;)Lcom/xiaomi/push/hc$a;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/xiaomi/push/hc;->a(Lcom/xiaomi/push/hc$a;)V
    :try_end_a8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a1 .. :try_end_a8} :catch_a9

    goto :goto_5c

    :catch_a9
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found invalid presence mode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5c

    :cond_c0
    const-string v5, "error"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d0

    invoke-static {p0}, Lcom/xiaomi/push/hi;->a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/push/he;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/push/hc;->a(Lcom/xiaomi/push/he;)V

    goto :goto_5c

    :cond_d0
    invoke-static {v3, v4, p0}, Lcom/xiaomi/push/hi;->a(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/push/gx;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/push/hc;->a(Lcom/xiaomi/push/gx;)V

    goto :goto_5c

    :cond_d8
    const/4 v4, 0x3

    if-ne v3, v4, :cond_5c

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "presence"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    const/4 v1, 0x1

    goto/16 :goto_5c

    :cond_ea
    return-object v2
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/push/hd;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_2
    :goto_2
    if-nez v1, :cond_26

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_15

    new-instance v0, Lcom/xiaomi/push/hd;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xiaomi/push/hd;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_15
    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "error"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_26
    return-object v0
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/push/he;
    .registers 11

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "-1"

    move-object v4, v1

    move-object v5, v4

    move-object v3, v2

    move v2, v0

    :goto_d
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v7

    if-ge v2, v7, :cond_48

    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "code"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v9, ""

    if-eqz v7, :cond_25

    invoke-interface {p0, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_25
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "type"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_35

    invoke-interface {p0, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_35
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "reason"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_45

    invoke-interface {p0, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_48
    move-object v7, v1

    move-object v8, v7

    :cond_4a
    :goto_4a
    if-nez v0, :cond_97

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7e

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    goto :goto_4a

    :cond_64
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    const-string v9, "urn:ietf:params:xml:ns:xmpp-stanzas"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_76

    move-object v7, v1

    goto :goto_4a

    :cond_76
    invoke-static {v1, v2, p0}, Lcom/xiaomi/push/hi;->a(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lcom/xiaomi/push/gx;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    :cond_7e
    const/4 v2, 0x3

    if-ne v1, v2, :cond_8f

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    const/4 v0, 0x1

    goto :goto_4a

    :cond_8f
    const/4 v2, 0x4

    if-ne v1, v2, :cond_4a

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    goto :goto_4a

    :cond_97
    if-nez v4, :cond_9d

    const-string p0, "cancel"

    move-object v2, p0

    goto :goto_9e

    :cond_9d
    move-object v2, v4

    :goto_9e
    new-instance p0, Lcom/xiaomi/push/he;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move-object v0, p0

    move-object v3, v5

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/push/he;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .registers 5

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const-string v1, ""

    :goto_6
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_15

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-eq v2, v0, :cond_14

    goto :goto_15

    :cond_14
    return-object v1

    :cond_15
    :goto_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6
.end method

.method private static a([B)V
    .registers 4

    sget-object v0, Lcom/xiaomi/push/hi;->a:Lorg/xmlpull/v1/XmlPullParser;

    if-nez v0, :cond_1b

    :try_start_4
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/hi;->a:Lorg/xmlpull/v1/XmlPullParser;

    sget-object v0, Lcom/xiaomi/push/hi;->a:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_16
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_1b
    :goto_1b
    sget-object v0, Lcom/xiaomi/push/hi;->a:Lorg/xmlpull/v1/XmlPullParser;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    return-void
.end method

.method private static b(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    if-ge v0, v1, :cond_30

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "xml:lang"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    const-string v2, "lang"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "xml"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_2b

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2b
    :goto_2b
    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_30
    const/4 p0, 0x0

    return-object p0
.end method
