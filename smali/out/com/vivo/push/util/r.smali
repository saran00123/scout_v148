.class public final Lcom/vivo/push/util/r;
.super Ljava/lang/Object;
.source "PushPackageUtils.java"


# static fields
.field public static a:Ljava/lang/Boolean;


# direct methods
.method public static a(Landroid/content/Context;)Lcom/vivo/push/model/b;
    .registers 15

    .line 57
    invoke-static {p0}, Lcom/vivo/push/util/ContextDelegate;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 60
    invoke-static {p0}, Lcom/vivo/push/util/r;->c(Landroid/content/Context;)Lcom/vivo/push/model/b;

    move-result-object v0

    const-string v1, "PushPackageUtils"

    if-eqz v0, :cond_22

    .line 62
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "get system push info :"

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 67
    :cond_22
    invoke-static {p0}, Lcom/vivo/push/util/r;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/vivo/push/util/r;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/vivo/push/model/b;

    move-result-object v3

    .line 72
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_42

    if-eqz v3, :cond_3b

    .line 1048
    iget-boolean v2, v3, Lcom/vivo/push/model/b;->f:Z

    if-eqz v2, :cond_3b

    move-object v0, v3

    :cond_3b
    const-string v2, "findAllPushPackages error: find no package!"

    .line 77
    invoke-static {v1, v2}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ec

    .line 85
    :cond_42
    invoke-static {p0}, Lcom/vivo/push/util/x;->b(Landroid/content/Context;)Lcom/vivo/push/util/x;

    move-result-object v0

    const/4 v4, 0x0

    const-string v5, "com.vivo.push.cur_pkg"

    .line 1078
    invoke-virtual {v0, v5, v4}, Lcom/vivo/push/util/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_66

    const-string v5, "com.vivo.pushservice.action.METHOD"

    .line 1446
    invoke-static {p0, v0, v5}, Lcom/vivo/push/util/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 87
    invoke-static {p0, v0}, Lcom/vivo/push/util/r;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/vivo/push/model/b;

    move-result-object v0

    if-eqz v0, :cond_66

    .line 2048
    iget-boolean v5, v0, Lcom/vivo/push/model/b;->f:Z

    if-eqz v5, :cond_66

    goto :goto_67

    :cond_66
    move-object v0, v4

    :goto_67
    if-eqz v3, :cond_6e

    .line 3048
    iget-boolean v5, v3, Lcom/vivo/push/model/b;->f:Z

    if-eqz v5, :cond_6e

    goto :goto_6f

    :cond_6e
    move-object v3, v4

    :goto_6f
    if-eqz v0, :cond_72

    goto :goto_73

    :cond_72
    move-object v0, v4

    :goto_73
    if-eqz v3, :cond_95

    if-eqz v0, :cond_94

    .line 4038
    iget-boolean v5, v3, Lcom/vivo/push/model/b;->e:Z

    if-eqz v5, :cond_88

    .line 5038
    iget-boolean v5, v0, Lcom/vivo/push/model/b;->e:Z

    if-eqz v5, :cond_95

    .line 6028
    iget-wide v5, v3, Lcom/vivo/push/model/b;->b:J

    .line 7028
    iget-wide v7, v0, Lcom/vivo/push/model/b;->b:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_95

    goto :goto_94

    .line 7038
    :cond_88
    iget-boolean v5, v0, Lcom/vivo/push/model/b;->e:Z

    if-nez v5, :cond_94

    .line 8028
    iget-wide v5, v3, Lcom/vivo/push/model/b;->b:J

    .line 9028
    iget-wide v7, v0, Lcom/vivo/push/model/b;->b:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_95

    :cond_94
    :goto_94
    move-object v0, v3

    .line 118
    :cond_95
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_a4

    .line 9038
    iget-boolean v5, v0, Lcom/vivo/push/model/b;->e:Z

    if-eqz v5, :cond_a5

    move-object v13, v4

    move-object v4, v0

    move-object v0, v13

    goto :goto_a5

    :cond_a4
    move-object v0, v4

    .line 129
    :cond_a5
    :goto_a5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_aa
    if-ge v6, v5, :cond_e3

    .line 131
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 132
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_e0

    .line 135
    invoke-static {p0, v7}, Lcom/vivo/push/util/r;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/vivo/push/model/b;

    move-result-object v8

    if-eqz v8, :cond_e0

    .line 139
    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9048
    iget-boolean v7, v8, Lcom/vivo/push/model/b;->f:Z

    if-eqz v7, :cond_e0

    .line 10038
    iget-boolean v7, v8, Lcom/vivo/push/model/b;->e:Z

    if-eqz v7, :cond_d5

    if-eqz v4, :cond_d3

    .line 11028
    iget-wide v9, v8, Lcom/vivo/push/model/b;->b:J

    .line 12028
    iget-wide v11, v4, Lcom/vivo/push/model/b;->b:J

    cmp-long v7, v9, v11

    if-lez v7, :cond_e0

    :cond_d3
    move-object v4, v8

    goto :goto_e0

    :cond_d5
    if-eqz v0, :cond_df

    .line 13028
    iget-wide v9, v8, Lcom/vivo/push/model/b;->b:J

    .line 14028
    iget-wide v11, v0, Lcom/vivo/push/model/b;->b:J

    cmp-long v7, v9, v11

    if-lez v7, :cond_e0

    :cond_df
    move-object v0, v8

    :cond_e0
    :goto_e0
    add-int/lit8 v6, v6, 0x1

    goto :goto_aa

    :cond_e3
    if-eqz v0, :cond_e6

    goto :goto_ec

    :cond_e6
    const-string v0, "findSuitablePushPackage, all push app in balck list."

    .line 157
    invoke-static {v1, v0}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    :goto_ec
    if-eqz v0, :cond_16e

    .line 14038
    iget-boolean v2, v0, Lcom/vivo/push/model/b;->e:Z

    const-string v3, "finSuitablePushPackage"

    const-string v4, "\u67e5\u627e\u6700\u4f18\u5305\u4e3a:"

    const-string v5, "("

    if-eqz v2, :cond_133

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15023
    iget-object v4, v0, Lcom/vivo/push/model/b;->a:Ljava/lang/String;

    .line 164
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15028
    iget-wide v6, v0, Lcom/vivo/push/model/b;->b:J

    .line 164
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", Black)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/vivo/push/util/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 165
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16023
    iget-object v2, v0, Lcom/vivo/push/model/b;->a:Ljava/lang/String;

    .line 165
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16028
    iget-wide v2, v0, Lcom/vivo/push/model/b;->b:J

    .line 165
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_178

    .line 167
    :cond_133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17023
    iget-object v4, v0, Lcom/vivo/push/model/b;->a:Ljava/lang/String;

    .line 167
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17028
    iget-wide v6, v0, Lcom/vivo/push/model/b;->b:J

    .line 167
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/vivo/push/util/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 168
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18023
    iget-object v2, v0, Lcom/vivo/push/model/b;->a:Ljava/lang/String;

    .line 168
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18028
    iget-wide v2, v0, Lcom/vivo/push/model/b;->b:J

    .line 168
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_178

    :cond_16e
    const-string v2, "\u67e5\u627e\u6700\u4f18\u5305\u4e3a\u7a7a!"

    .line 171
    invoke-static {p0, v2}, Lcom/vivo/push/util/n;->b(Landroid/content/Context;Ljava/lang/String;)V

    const-string p0, "finSuitablePushPackage is null"

    .line 172
    invoke-static {v1, p0}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_178
    return-object v0
.end method

.method private static a(Landroid/content/Context;J)Z
    .registers 4

    .line 385
    invoke-static {}, Lcom/vivo/push/cache/b;->a()Lcom/vivo/push/cache/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vivo/push/cache/b;->a(Landroid/content/Context;)Lcom/vivo/push/cache/d;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 387
    invoke-interface {p0, p1, p2}, Lcom/vivo/push/cache/d;->isInBlackList(J)Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x4
    .end annotation

    .line 350
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_70

    if-nez p0, :cond_b

    goto/16 :goto_70

    .line 353
    :cond_b
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.vivo.pushservice.action.PUSH_SERVICE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v2, 0x240

    .line 357
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_69

    .line 358
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_28

    goto :goto_69

    .line 363
    :cond_28
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    move v3, v1

    move v4, v3

    :goto_2e
    if-ge v3, v2, :cond_68

    .line 367
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    if-eqz v5, :cond_65

    .line 368
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v6, :cond_65

    .line 371
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 372
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v7, v7, Landroid/content/pm/ServiceInfo;->exported:Z

    const-string v8, "com.vivo.push.sdk.service.PushService"

    .line 373
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_65

    if-eqz v7, :cond_65

    .line 376
    iget-object v4, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v4, v4, Landroid/content/pm/ServiceInfo;->enabled:Z

    .line 377
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, p1, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_64

    if-nez v5, :cond_63

    if-eqz v4, :cond_63

    goto :goto_64

    :cond_63
    move v6, v1

    :cond_64
    :goto_64
    move v4, v6

    :cond_65
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :cond_68
    return v4

    :cond_69
    :goto_69
    const-string p0, "PushPackageUtils"

    const-string p1, "isEnablePush error: can not find push service."

    .line 359
    invoke-static {p0, p1}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    :goto_70
    return v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 395
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 p1, 0x240

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    const/4 p0, 0x0

    :goto_14
    if-eqz p0, :cond_1e

    .line 403
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 11

    const-string v0, "name"

    const-string v1, "close"

    const-string v2, "PushPackageUtils"

    const/4 v3, 0x0

    .line 181
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/vivo/push/h;->a:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_9d
    .catchall {:try_start_7 .. :try_end_15} :catchall_9a

    if-nez p0, :cond_2b

    :try_start_17
    const-string v0, "cursor is null"

    .line 183
    invoke-static {v2, v0}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1c} :catch_27
    .catchall {:try_start_17 .. :try_end_1c} :catchall_95

    if-eqz p0, :cond_26

    .line 205
    :try_start_1e
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_26

    :catch_22
    move-exception p0

    .line 208
    invoke-static {v2, v1, p0}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_26
    :goto_26
    return-object v3

    :catch_27
    move-exception v0

    move-object v4, v3

    goto/16 :goto_98

    :cond_2b
    const/4 v4, 0x0

    move v5, v4

    move-object v4, v3

    .line 187
    :cond_2e
    :goto_2e
    :try_start_2e
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_6c

    const-string v6, "pushPkgName"

    .line 188
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_42} :catch_97
    .catchall {:try_start_2e .. :try_end_42} :catchall_95

    const-string v7, "value"

    if-eqz v6, :cond_4f

    .line 189
    :try_start_46
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2e

    :cond_4f
    const-string v6, "pushEnable"

    .line 190
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 191
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    goto :goto_2e

    .line 194
    :cond_6c
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_70} :catch_97
    .catchall {:try_start_46 .. :try_end_70} :catchall_95

    if-eqz v0, :cond_7d

    if-eqz p0, :cond_7c

    .line 205
    :try_start_74
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_78

    goto :goto_7c

    :catch_78
    move-exception p0

    .line 208
    invoke-static {v2, v1, p0}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7c
    :goto_7c
    return-object v3

    :cond_7d
    if-nez v5, :cond_8a

    if-eqz p0, :cond_89

    .line 205
    :try_start_81
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_84} :catch_85

    goto :goto_89

    :catch_85
    move-exception p0

    .line 208
    invoke-static {v2, v1, p0}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_89
    :goto_89
    return-object v3

    :cond_8a
    if-eqz p0, :cond_a9

    .line 205
    :try_start_8c
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8f} :catch_90

    goto :goto_a9

    :catch_90
    move-exception p0

    .line 208
    invoke-static {v2, v1, p0}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a9

    :catchall_95
    move-exception v0

    goto :goto_aa

    :catch_97
    move-exception v0

    :goto_98
    move-object v3, p0

    goto :goto_9f

    :catchall_9a
    move-exception v0

    move-object p0, v3

    goto :goto_aa

    :catch_9d
    move-exception v0

    move-object v4, v3

    :goto_9f
    :try_start_9f
    const-string p0, "getSystemPush"

    .line 201
    invoke-static {v2, p0, v0}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a4
    .catchall {:try_start_9f .. :try_end_a4} :catchall_9a

    if-eqz v3, :cond_a9

    .line 205
    :try_start_a6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_a9} :catch_90

    :cond_a9
    :goto_a9
    return-object v4

    :goto_aa
    if-eqz p0, :cond_b4

    :try_start_ac
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_af} :catch_b0

    goto :goto_b4

    :catch_b0
    move-exception p0

    .line 208
    invoke-static {v2, v1, p0}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    :cond_b4
    :goto_b4
    throw v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 582
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5a

    if-nez p0, :cond_a

    goto :goto_5a

    .line 586
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x40

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 588
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    const-string v0, "SHA256"

    .line 589
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 590
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 591
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 592
    :goto_2c
    array-length v2, p0

    if-ge p1, v2, :cond_4f

    .line 593
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 594
    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 595
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_49

    const-string v3, "0"

    .line 596
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 599
    :cond_49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_2c

    .line 601
    :cond_4f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_53} :catch_54

    return-object p0

    :catch_54
    move-exception p0

    const-string p1, "PushPackageUtils"

    .line 603
    invoke-static {p1, p0}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5a
    :goto_5a
    return-object v1
.end method

.method private static c(Landroid/content/Context;)Lcom/vivo/push/model/b;
    .registers 6

    .line 215
    invoke-static {p0}, Lcom/vivo/push/util/r;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    return-object v2

    .line 220
    :cond_c
    new-instance v1, Lcom/vivo/push/model/b;

    invoke-direct {v1, v0}, Lcom/vivo/push/model/b;-><init>(Ljava/lang/String;)V

    .line 223
    :try_start_11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_1b} :catch_3e

    if-eqz v3, :cond_27

    .line 232
    iget v2, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 18063
    iput v2, v1, Lcom/vivo/push/model/b;->c:I

    .line 233
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 18073
    iput-object v2, v1, Lcom/vivo/push/model/b;->d:Ljava/lang/String;

    .line 234
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :cond_27
    if-eqz v2, :cond_2f

    .line 238
    invoke-static {p0, v0}, Lcom/vivo/push/util/y;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    .line 19033
    iput-wide v2, v1, Lcom/vivo/push/model/b;->b:J

    .line 20028
    :cond_2f
    iget-wide v2, v1, Lcom/vivo/push/model/b;->b:J

    .line 241
    invoke-static {p0, v2, v3}, Lcom/vivo/push/util/r;->a(Landroid/content/Context;J)Z

    move-result v2

    .line 20043
    iput-boolean v2, v1, Lcom/vivo/push/model/b;->e:Z

    .line 242
    invoke-static {p0, v0}, Lcom/vivo/push/util/r;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    .line 20053
    iput-boolean p0, v1, Lcom/vivo/push/model/b;->f:Z

    return-object v1

    :catch_3e
    move-exception p0

    .line 225
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string p0, "PushPackageUtils"

    const-string v0, "PackageManager NameNotFoundException is null"

    .line 226
    invoke-static {p0, v0}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Lcom/vivo/push/model/b;
    .registers 6

    .line 248
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_59

    const-string v0, "com.vivo.pushservice.action.METHOD"

    .line 21446
    invoke-static {p0, p1, v0}, Lcom/vivo/push/util/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "com.vivo.pushservice.action.RECEIVE"

    .line 22442
    invoke-static {p0, p1, v0}, Lcom/vivo/push/util/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_1a

    :cond_18
    const/4 v0, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v0, 0x1

    :goto_1b
    if-nez v0, :cond_1e

    goto :goto_59

    .line 253
    :cond_1e
    new-instance v0, Lcom/vivo/push/model/b;

    invoke-direct {v0, p1}, Lcom/vivo/push/model/b;-><init>(Ljava/lang/String;)V

    .line 255
    :try_start_23
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 259
    iget v1, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 23063
    iput v1, v0, Lcom/vivo/push/model/b;->c:I

    .line 260
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 23073
    iput-object v1, v0, Lcom/vivo/push/model/b;->d:Ljava/lang/String;

    .line 261
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :cond_39
    if-eqz v1, :cond_4a

    .line 265
    invoke-static {p0, p1}, Lcom/vivo/push/util/y;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    .line 24033
    iput-wide v1, v0, Lcom/vivo/push/model/b;->b:J
    :try_end_41
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_23 .. :try_end_41} :catch_42

    goto :goto_4a

    :catch_42
    move-exception v1

    const-string v2, "PushPackageUtils"

    const-string v3, "getPushPackageInfo exception: "

    .line 269
    invoke-static {v2, v3, v1}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 272
    :cond_4a
    :goto_4a
    invoke-static {p0, p1}, Lcom/vivo/push/util/r;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    .line 24053
    iput-boolean p1, v0, Lcom/vivo/push/model/b;->f:Z

    .line 25028
    iget-wide v1, v0, Lcom/vivo/push/model/b;->b:J

    .line 273
    invoke-static {p0, v1, v2}, Lcom/vivo/push/util/r;->a(Landroid/content/Context;J)Z

    move-result p0

    .line 25043
    iput-boolean p0, v0, Lcom/vivo/push/model/b;->e:Z

    return-object v0

    :cond_59
    :goto_59
    return-object v1
.end method

.method private static d(Landroid/content/Context;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "findAllCoreClientPush"

    .line 462
    invoke-static {v0}, Lcom/vivo/push/util/f;->a(Ljava/lang/String;)V

    .line 463
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 464
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.vivo.pushservice.action.PUSH_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 467
    :try_start_11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v2, 0x240

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1b} :catch_1c

    goto :goto_1d

    :catch_1c
    const/4 p0, 0x0

    :goto_1d
    if-eqz p0, :cond_44

    .line 472
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_44

    .line 473
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2a
    if-ge v2, v1, :cond_44

    .line 475
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    if-eqz v3, :cond_41

    .line 479
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 480
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_41

    .line 481
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 485
    :cond_44
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-gtz p0, :cond_51

    const-string p0, "PushPackageUtils"

    const-string v1, "get all push packages is null"

    .line 486
    invoke-static {p0, v1}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    return-object v0
.end method
