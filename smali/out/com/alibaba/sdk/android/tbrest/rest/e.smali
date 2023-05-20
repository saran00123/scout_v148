.class public Lcom/alibaba/sdk/android/tbrest/rest/e;
.super Ljava/lang/Object;
.source "RestReqDataBuilder.java"


# static fields
.field private static b:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/sdk/android/tbrest/rest/e;->b:J

    return-void
.end method

.method public static a(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Lcom/alibaba/sdk/android/tbrest/rest/d;
    .registers 41
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/tbrest/SendService;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/sdk/android/tbrest/rest/d;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, ""

    const-string v2, "-"

    const/4 v3, 0x0

    if-nez p7, :cond_a

    return-object v3

    .line 343
    :cond_a
    :try_start_a
    iget-object v4, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_18

    const-string v0, "get utdid failure, so build report failure, now return"

    .line 345
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    return-object v3

    .line 349
    :cond_18
    iget-object v5, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->getNetworkType(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 350
    aget-object v6, v5, v6

    .line 352
    array-length v7, v5

    const/4 v8, 0x1

    if-le v7, v8, :cond_32

    if-eqz v6, :cond_32

    const-string v7, "Wi-Fi"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_32

    .line 353
    aget-object v5, v5, v8

    goto :goto_33

    :cond_32
    move-object v5, v3

    :goto_33
    const-wide/16 v7, 0x0

    cmp-long v7, p4, v7

    if-lez v7, :cond_3c

    move-wide/from16 v7, p4

    goto :goto_40

    .line 356
    :cond_3c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 357
    :goto_40
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 358
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string/jumbo v11, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 359
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 360
    invoke-static/range {p6 .. p6}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 361
    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 362
    invoke-static/range {p8 .. p8}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 363
    invoke-static/range {p9 .. p9}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 364
    invoke-static/range {p10 .. p10}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 365
    invoke-static/range {p11 .. p11}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->convertMapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "5.0.1"

    .line 367
    iget-object v3, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 p4, v14

    .line 368
    iget-object v14, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->context:Landroid/content/Context;

    invoke-static {v14}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 369
    sget-object v16, Landroid/os/Build;->BRAND:Ljava/lang/String;

    move-object/from16 p5, v13

    invoke-static/range {v16 .. v16}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 370
    invoke-static {}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->getCpuName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 p6, v12

    invoke-static/range {v16 .. v16}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 p7, v11

    .line 371
    invoke-static {v3}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 372
    sget-object v16, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v17, v10

    invoke-static/range {v16 .. v16}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v16, v8

    .line 373
    iget-object v8, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->context:Landroid/content/Context;

    invoke-static {v8}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v18, v9

    .line 374
    iget-object v9, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 375
    invoke-static {v6}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 376
    invoke-static {v5}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v19, v7

    .line 377
    invoke-static/range {p1 .. p1}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v20, v2

    .line 378
    iget-object v2, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->appVersion:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 p1, v2

    .line 379
    iget-object v2, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->channel:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 p8, v7

    .line 381
    iget-object v7, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->userNick:Ljava/lang/String;

    invoke-static {v7}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 p9, v7

    .line 382
    iget-object v7, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->userNick:Ljava/lang/String;

    invoke-static {v7}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 384
    invoke-static {}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->getCountry()Ljava/lang/String;

    move-result-object v21

    move-object/from16 p10, v7

    invoke-static/range {v21 .. v21}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 385
    invoke-static {}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->getLanguage()Ljava/lang/String;

    move-result-object v21

    move-object/from16 p11, v7

    invoke-static/range {v21 .. v21}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 386
    iget-object v0, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->appId:Ljava/lang/String;

    const-string v21, "Android"
    :try_end_121
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_121} :catch_29e

    move-object/from16 v22, v7

    const-string v7, "aliyunos"

    if-eqz v0, :cond_12e

    .line 389
    :try_start_127
    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12e

    goto :goto_130

    :cond_12e
    move-object/from16 v7, v21

    .line 392
    :goto_130
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 p0, v0

    const-string v0, "mini"

    move-object/from16 v21, v0

    const-string v0, "1.0"

    move-object/from16 v23, v0

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v25, v5

    move-object/from16 v24, v6

    sget-wide v5, Lcom/alibaba/sdk/android/tbrest/rest/e;->b:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 396
    invoke-static {v4}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 402
    invoke-static {v1}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    .line 406
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "||"

    .line 410
    invoke-virtual {v1, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 411
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 412
    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 413
    invoke-virtual {v1, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 414
    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 415
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 416
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v3, v24

    .line 419
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v3, v25

    .line 420
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v3, p8

    .line 422
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v6, p1

    .line 423
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v8, p9

    .line 424
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v8, p10

    .line 425
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v8, v20

    .line 426
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v9, p11

    .line 427
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v9, v22

    .line 428
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 429
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v9, p0

    .line 430
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v9, v21

    .line 431
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v9, v23

    .line 432
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 434
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 435
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 437
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 438
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, v19

    .line 439
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, v18

    .line 440
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, v16

    .line 441
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, v17

    .line 442
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p7

    .line 443
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p6

    .line 444
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p5

    .line 445
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p4

    .line 446
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 448
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 449
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 450
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string/jumbo v5, "stm_x"

    .line 451
    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    new-instance v0, Lcom/alibaba/sdk/android/tbrest/rest/d;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/tbrest/rest/d;-><init>()V

    const/16 v20, 0x0

    const-string v27, ""

    move-object/from16 v19, p2

    move-object/from16 v21, v1

    move-object/from16 v22, p3

    move-object/from16 v23, v3

    move-object/from16 v24, v2

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v28, v4

    .line 454
    invoke-static/range {v19 .. v28}, Lcom/alibaba/sdk/android/tbrest/rest/RestUrlWrapper;->getSignedTransferUrl(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 457
    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/tbrest/rest/d;->b(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/tbrest/rest/d;->a(Ljava/util/Map;)V
    :try_end_29d
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_29d} :catch_29e

    return-object v0

    :catch_29e
    move-exception v0

    const-string v1, "UTRestAPI buildTracePostReqDataObj catch!"

    .line 462
    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public static a(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;
    .registers 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/tbrest/SendService;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "-"

    const-string v2, ""

    const/4 v3, 0x0

    if-nez p5, :cond_a

    return-object v3

    .line 69
    :cond_a
    :try_start_a
    iget-object v4, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_18

    const-string v0, "get utdid failure, so build report failure, now return"

    .line 71
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    return-object v3

    .line 75
    :cond_18
    iget-object v5, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->getNetworkType(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 76
    aget-object v6, v5, v6

    .line 78
    array-length v7, v5

    const/4 v8, 0x1

    if-le v7, v8, :cond_31

    if-eqz v6, :cond_31

    const-string v7, "Wi-Fi"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_31

    .line 79
    aget-object v3, v5, v8

    :cond_31
    const-wide/16 v7, 0x0

    cmp-long v5, p2, v7

    if-lez v5, :cond_3a

    move-wide/from16 v7, p2

    goto :goto_3e

    .line 82
    :cond_3a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 83
    :goto_3e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 85
    invoke-static/range {p4 .. p4}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 86
    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 87
    invoke-static/range {p6 .. p6}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 88
    invoke-static/range {p7 .. p7}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 89
    invoke-static/range {p8 .. p8}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 90
    invoke-static/range {p9 .. p9}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->convertMapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 92
    iget-object v13, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->context:Landroid/content/Context;

    invoke-static {v13}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 93
    iget-object v14, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->context:Landroid/content/Context;

    invoke-static {v14}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 94
    sget-object v15, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v15}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 95
    invoke-static {}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->getCpuName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    invoke-static {v13}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    sget-object v16, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 p2, v12

    invoke-static/range {v16 .. v16}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 p3, v11

    .line 98
    iget-object v11, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->context:Landroid/content/Context;

    invoke-static {v11}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 p4, v10

    .line 99
    iget-object v10, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->context:Landroid/content/Context;

    invoke-static {v10}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 100
    invoke-static {v6}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 101
    invoke-static {v3}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 p5, v9

    .line 102
    invoke-static/range {p1 .. p1}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v16, v8

    .line 103
    iget-object v8, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->appVersion:Ljava/lang/String;

    invoke-static {v8}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v17, v7

    .line 104
    iget-object v7, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->channel:Ljava/lang/String;

    invoke-static {v7}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v18, v5

    .line 106
    iget-object v5, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->userNick:Ljava/lang/String;

    invoke-static {v5}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v19, v1

    .line 107
    iget-object v1, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->userNick:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->getCountry()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    invoke-static {}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->getLanguage()Ljava/lang/String;

    move-result-object v20

    move-object/from16 p1, v1

    invoke-static/range {v20 .. v20}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 p6, v1

    .line 111
    iget-object v1, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->appId:Ljava/lang/String;

    const-string v20, "a"

    .line 115
    sget-object v21, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object/from16 p7, v5

    invoke-static/range {v21 .. v21}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 p8, v5

    const-string v5, "mini"

    move-object/from16 p9, v5

    const-string v5, "1.0"

    move-object/from16 v21, v5

    .line 118
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v23, v8

    move-object/from16 v22, v9

    sget-wide v8, Lcom/alibaba/sdk/android/tbrest/rest/e;->b:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    invoke-static {v4}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 123
    iget-object v0, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->country:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {v2}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    if-eqz v1, :cond_142

    const-string v5, "aliyunos"

    .line 131
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_142

    const-string/jumbo v20, "y"

    :cond_142
    move-object/from16 v1, v20

    .line 135
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 136
    sget-object v8, Lcom/alibaba/sdk/android/tbrest/rest/a;->a:Lcom/alibaba/sdk/android/tbrest/rest/a;

    invoke-virtual {v8}, Lcom/alibaba/sdk/android/tbrest/rest/a;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v8, Lcom/alibaba/sdk/android/tbrest/rest/a;->b:Lcom/alibaba/sdk/android/tbrest/rest/a;

    invoke-virtual {v8}, Lcom/alibaba/sdk/android/tbrest/rest/a;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v8, Lcom/alibaba/sdk/android/tbrest/rest/a;->c:Lcom/alibaba/sdk/android/tbrest/rest/a;

    invoke-virtual {v8}, Lcom/alibaba/sdk/android/tbrest/rest/a;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v8, Lcom/alibaba/sdk/android/tbrest/rest/a;->d:Lcom/alibaba/sdk/android/tbrest/rest/a;

    invoke-virtual {v8}, Lcom/alibaba/sdk/android/tbrest/rest/a;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v8, Lcom/alibaba/sdk/android/tbrest/rest/a;->e:Lcom/alibaba/sdk/android/tbrest/rest/a;

    invoke-virtual {v8}, Lcom/alibaba/sdk/android/tbrest/rest/a;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v8, Lcom/alibaba/sdk/android/tbrest/rest/a;->f:Lcom/alibaba/sdk/android/tbrest/rest/a;

    invoke-virtual {v8}, Lcom/alibaba/sdk/android/tbrest/rest/a;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v8, Lcom/alibaba/sdk/android/tbrest/rest/a;->g:Lcom/alibaba/sdk/android/tbrest/rest/a;

    invoke-virtual {v8}, Lcom/alibaba/sdk/android/tbrest/rest/a;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v6, Lcom/alibaba/sdk/android/tbrest/rest/a;->h:Lcom/alibaba/sdk/android/tbrest/rest/a;

    invoke-virtual {v6}, Lcom/alibaba/sdk/android/tbrest/rest/a;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v3, Lcom/alibaba/sdk/android/tbrest/rest/a;->i:Lcom/alibaba/sdk/android/tbrest/rest/a;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/tbrest/rest/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v3, Lcom/alibaba/sdk/android/tbrest/rest/a;->j:Lcom/alibaba/sdk/android/tbrest/rest/a;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/tbrest/rest/a;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v6, v22

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v3, Lcom/alibaba/sdk/android/tbrest/rest/a;->k:Lcom/alibaba/sdk/android/tbrest/rest/a;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/tbrest/rest/a;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v6, v23

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v3, Lcom/alibaba/sdk/android/tbrest/rest/a;->l:Lcom/alibaba/sdk/android/tbrest/rest/a;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/tbrest/rest/a;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v6, p7

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v3, Lcom/alibaba/sdk/android/tbrest/rest/a;->m:Lcom/alibaba/sdk/android/tbrest/rest/a;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/tbrest/rest/a;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v6, p1

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v3, Lcom/alibaba/sdk/android/tbrest/rest/a;->n:Lcom/alibaba/sdk/android/tbrest/rest/a;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/tbrest/rest/a;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v6, v19

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v3, Lcom/alibaba/sdk/android/tbrest/rest/a;->o:Lcom/alibaba/sdk/android/tbrest/rest/a;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/tbrest/rest/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v3, Lcom/alibaba/sdk/android/tbrest/rest/a;->p:Lcom/alibaba/sdk/android/tbrest/rest/a;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/tbrest/rest/a;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v7, p6

    invoke-interface {v5, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v3, Lcom/alibaba/sdk/android/tbrest/rest/a;->q:Lcom/alibaba/sdk/android/tbrest/rest/a;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/tbrest/rest/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v1, Lcom/alibaba/sdk/android/tbrest/rest/a;->r:Lcom/alibaba/sdk/android/tbrest/rest/a;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/tbrest/rest/a;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, p8

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v1, Lcom/alibaba/sdk/android/tbrest/rest/a;->s:Lcom/alibaba/sdk/android/tbrest/rest/a;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/tbrest/rest/a;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v21

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v1, Lcom/alibaba/sdk/android/tbrest/rest/a;->t:Lcom/alibaba/sdk/android/tbrest/rest/a;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/tbrest/rest/a;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v7, Lcom/alibaba/sdk/android/tbrest/rest/e;->b:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v1, Lcom/alibaba/sdk/android/tbrest/rest/a;->u:Lcom/alibaba/sdk/android/tbrest/rest/a;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/tbrest/rest/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v1, Lcom/alibaba/sdk/android/tbrest/rest/a;->v:Lcom/alibaba/sdk/android/tbrest/rest/a;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/tbrest/rest/a;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, p9

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v1, Lcom/alibaba/sdk/android/tbrest/rest/a;->w:Lcom/alibaba/sdk/android/tbrest/rest/a;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/tbrest/rest/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v1, Lcom/alibaba/sdk/android/tbrest/rest/a;->x:Lcom/alibaba/sdk/android/tbrest/rest/a;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/tbrest/rest/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v1, Lcom/alibaba/sdk/android/tbrest/rest/a;->y:Lcom/alibaba/sdk/android/tbrest/rest/a;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/tbrest/rest/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v1, Lcom/alibaba/sdk/android/tbrest/rest/a;->z:Lcom/alibaba/sdk/android/tbrest/rest/a;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/tbrest/rest/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v1, Lcom/alibaba/sdk/android/tbrest/rest/a;->A:Lcom/alibaba/sdk/android/tbrest/rest/a;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/tbrest/rest/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/rest/a;->B:Lcom/alibaba/sdk/android/tbrest/rest/a;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/tbrest/rest/a;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/rest/a;->C:Lcom/alibaba/sdk/android/tbrest/rest/a;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/tbrest/rest/a;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/rest/a;->D:Lcom/alibaba/sdk/android/tbrest/rest/a;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/tbrest/rest/a;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/rest/a;->E:Lcom/alibaba/sdk/android/tbrest/rest/a;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/tbrest/rest/a;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p5

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/rest/a;->F:Lcom/alibaba/sdk/android/tbrest/rest/a;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/tbrest/rest/a;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p4

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/rest/a;->G:Lcom/alibaba/sdk/android/tbrest/rest/a;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/tbrest/rest/a;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p3

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/rest/a;->H:Lcom/alibaba/sdk/android/tbrest/rest/a;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/tbrest/rest/a;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-static {v5}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0
    :try_end_2b0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2b0} :catch_2b1

    return-object v0

    :catch_2b1
    move-exception v0

    const-string v1, "UTRestAPI buildTracePostReqDataObj catch!"

    .line 173
    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 32
    invoke-static {p0}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "-"

    return-object p0

    :cond_9
    if-eqz p0, :cond_49

    const-string v0, ""

    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v1, 0x0

    .line 41
    :goto_21
    array-length v2, p0

    if-ge v1, v2, :cond_45

    .line 42
    aget-char v2, p0, v1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_42

    aget-char v2, p0, v1

    const/16 v3, 0xd

    if-eq v2, v3, :cond_42

    aget-char v2, p0, v1

    const/16 v3, 0x9

    if-eq v2, v3, :cond_42

    aget-char v2, p0, v1

    const/16 v3, 0x7c

    if-ne v2, v3, :cond_3d

    goto :goto_42

    .line 45
    :cond_3d
    aget-char v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_42
    :goto_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 48
    :cond_45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_49
    return-object p0
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 187
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 188
    invoke-static {}, Lcom/alibaba/sdk/android/tbrest/rest/a;->values()[Lcom/alibaba/sdk/android/tbrest/rest/a;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_c
    const-string/jumbo v5, "||"

    const/4 v6, 0x0

    if-ge v4, v2, :cond_43

    aget-object v7, v1, v4

    .line 189
    sget-object v8, Lcom/alibaba/sdk/android/tbrest/rest/a;->H:Lcom/alibaba/sdk/android/tbrest/rest/a;

    if-ne v7, v8, :cond_19

    goto :goto_43

    .line 194
    :cond_19
    invoke-virtual {v7}, Lcom/alibaba/sdk/android/tbrest/rest/a;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_36

    .line 195
    invoke-virtual {v7}, Lcom/alibaba/sdk/android/tbrest/rest/a;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 196
    invoke-virtual {v7}, Lcom/alibaba/sdk/android/tbrest/rest/a;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_36
    invoke-static {v6}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 203
    :cond_43
    :goto_43
    sget-object v1, Lcom/alibaba/sdk/android/tbrest/rest/a;->H:Lcom/alibaba/sdk/android/tbrest/rest/a;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/tbrest/rest/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 204
    sget-object v1, Lcom/alibaba/sdk/android/tbrest/rest/a;->H:Lcom/alibaba/sdk/android/tbrest/rest/a;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/tbrest/rest/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-static {v1}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    sget-object v1, Lcom/alibaba/sdk/android/tbrest/rest/a;->H:Lcom/alibaba/sdk/android/tbrest/rest/a;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/tbrest/rest/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v3

    goto :goto_70

    :cond_6f
    const/4 v1, 0x1

    .line 210
    :goto_70
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 211
    :goto_78
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_db

    .line 212
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 214
    invoke-interface {p0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_93

    .line 215
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_94

    :cond_93
    move-object v7, v6

    :goto_94
    const-string v8, "StackTrace=====>"

    const-string v9, "="

    const-string v10, "StackTrace"

    if-eqz v1, :cond_b8

    .line 219
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 220
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b6

    .line 222
    :cond_a9
    invoke-static {v4}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_b6
    move v1, v3

    goto :goto_78

    .line 227
    :cond_b8
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, ","

    if-eqz v10, :cond_ca

    .line 228
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_78

    .line 230
    :cond_ca
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v4}, Lcom/alibaba/sdk/android/tbrest/rest/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_78

    .line 236
    :cond_db
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 237
    invoke-static {p0}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_fc

    .line 238
    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_fc
    return-object p0
.end method
