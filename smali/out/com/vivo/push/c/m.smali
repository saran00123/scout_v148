.class public final Lcom/vivo/push/c/m;
.super Lcom/vivo/push/c/o;
.source "OnNotificationClickTask.java"


# direct methods
.method public constructor <init>(Lcom/vivo/push/g;)V
    .registers 2

    .line 44
    invoke-direct {p0, p1}, Lcom/vivo/push/c/o;-><init>(Lcom/vivo/push/g;)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/push/c/m;)Landroid/content/Context;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/vivo/push/c/m;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Landroid/content/Intent;Ljava/util/Map;)Landroid/content/Intent;
    .registers 2

    .line 36
    invoke-static {p0, p1}, Lcom/vivo/push/c/m;->b(Landroid/content/Intent;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/vivo/push/c/m;)Landroid/content/Context;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/vivo/push/c/m;->a:Landroid/content/Context;

    return-object p0
.end method

.method private static b(Landroid/content/Intent;Ljava/util/Map;)Landroid/content/Intent;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    if-eqz p1, :cond_35

    .line 231
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_35

    .line 234
    :cond_9
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_11
    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_11

    .line 235
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 236
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_11

    :cond_35
    :goto_35
    return-object p0
.end method

.method static synthetic c(Lcom/vivo/push/c/m;)Landroid/content/Context;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/vivo/push/c/m;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/vivo/push/c/m;)Landroid/content/Context;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/vivo/push/c/m;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method protected final a(Lcom/vivo/push/g;)V
    .registers 11

    .line 49
    check-cast p1, Lcom/vivo/push/b/p;

    .line 1072
    iget-object v0, p1, Lcom/vivo/push/b/p;->f:Lcom/vivo/push/model/InsideNotificationItem;

    const-string v1, "OnNotificationClickTask"

    if-nez v0, :cond_e

    const-string p1, "current notification item is null"

    .line 53
    invoke-static {v1, p1}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 56
    :cond_e
    invoke-static {v0}, Lcom/vivo/push/util/o;->a(Lcom/vivo/push/model/InsideNotificationItem;)Lcom/vivo/push/model/UPSNotificationMessage;

    move-result-object v0

    .line 2052
    iget-object v2, p1, Lcom/vivo/push/b/p;->c:Ljava/lang/String;

    .line 58
    iget-object v3, p0, Lcom/vivo/push/c/m;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 60
    iget-object v4, p0, Lcom/vivo/push/c/m;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/vivo/push/util/NotifyAdapterUtil;->cancelNotify(Landroid/content/Context;)V

    .line 3042
    :cond_25
    iget-object v4, p1, Lcom/vivo/push/b/p;->d:Ljava/lang/String;

    if-eqz v4, :cond_2b

    .line 4042
    iget-object v2, p1, Lcom/vivo/push/b/p;->d:Ljava/lang/String;

    :cond_2b
    if-eqz v3, :cond_248

    .line 66
    new-instance v3, Lcom/vivo/push/b/x;

    const-wide/16 v4, 0x406

    invoke-direct {v3, v4, v5}, Lcom/vivo/push/b/x;-><init>(J)V

    .line 67
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "type"

    const-string v6, "2"

    .line 68
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4062
    iget-wide v5, p1, Lcom/vivo/push/b/p;->e:J

    .line 69
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "messageID"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "platform"

    .line 70
    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v5, p0, Lcom/vivo/push/c/m;->a:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/vivo/push/util/y;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 72
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_62

    const-string v2, "remoteAppId"

    .line 73
    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_67

    :cond_62
    const-string v5, "ap"

    .line 75
    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5043
    :goto_67
    iput-object v4, v3, Lcom/vivo/push/b/x;->c:Ljava/util/HashMap;

    .line 78
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/vivo/push/d;->a(Lcom/vivo/push/g;)V

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "notification is clicked by skip type["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vivo/push/model/UPSNotificationMessage;->getSkipType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {v0}, Lcom/vivo/push/model/UPSNotificationMessage;->getSkipType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_22a

    const/4 v4, 0x2

    const/high16 v5, 0x10000000

    if-eq v2, v4, :cond_1d7

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1ce

    const/4 v4, 0x4

    if-eq v2, v4, :cond_b2

    .line 173
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "illegitmacy skip type error : "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vivo/push/model/UPSNotificationMessage;->getSkipType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 130
    :cond_b2
    invoke-virtual {v0}, Lcom/vivo/push/model/UPSNotificationMessage;->getSkipContent()Ljava/lang/String;

    move-result-object v2

    .line 133
    :try_start_b6
    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 134
    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    .line 7042
    iget-object v6, p1, Lcom/vivo/push/b/p;->d:Ljava/lang/String;
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_c0} :catch_1b3

    const/4 v7, 0x0

    const-string v8, "; but remote pkgName is "

    if-eqz v6, :cond_124

    .line 136
    :try_start_c5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_ed

    .line 8042
    iget-object v6, p1, Lcom/vivo/push/b/p;->d:Ljava/lang/String;

    .line 136
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ed

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "open activity error : local pkgName getOpenPkgName is "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9042
    iget-object p1, p1, Lcom/vivo/push/b/p;->d:Ljava/lang/String;

    .line 137
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 140
    :cond_ed
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_f4

    goto :goto_fc

    :cond_f4
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 141
    :goto_fc
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_193

    .line 10042
    iget-object v4, p1, Lcom/vivo/push/b/p;->d:Ljava/lang/String;

    .line 141
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_193

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "open activity component error : local pkgName getOpenPkgName is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11042
    iget-object p1, p1, Lcom/vivo/push/b/p;->d:Ljava/lang/String;

    .line 142
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 146
    :cond_124
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_154

    iget-object v6, p0, Lcom/vivo/push/c/m;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_154

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "open activity error : local pkgName is "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/push/c/m;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 150
    :cond_154
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_15b

    goto :goto_163

    :cond_15b
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 151
    :goto_163
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_193

    iget-object v4, p0, Lcom/vivo/push/c/m;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_193

    .line 152
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "open activity component error : local pkgName is "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/push/c/m;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 12042
    :cond_193
    iget-object v4, p1, Lcom/vivo/push/b/p;->d:Ljava/lang/String;

    if-eqz v4, :cond_19a

    .line 13042
    iget-object p1, p1, Lcom/vivo/push/b/p;->d:Ljava/lang/String;

    goto :goto_1a0

    .line 156
    :cond_19a
    iget-object p1, p0, Lcom/vivo/push/c/m;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    :goto_1a0
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 158
    invoke-virtual {v0}, Lcom/vivo/push/model/UPSNotificationMessage;->getParams()Ljava/util/Map;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/vivo/push/c/m;->b(Landroid/content/Intent;Ljava/util/Map;)Landroid/content/Intent;

    .line 159
    iget-object p1, p0, Lcom/vivo/push/c/m;->a:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1b2
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_1b2} :catch_1b3

    goto :goto_1c5

    :catch_1b3
    move-exception p1

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "open activity error : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    :goto_1c5
    new-instance p1, Lcom/vivo/push/c/m$4;

    invoke-direct {p1, p0, v0}, Lcom/vivo/push/c/m$4;-><init>(Lcom/vivo/push/c/m;Lcom/vivo/push/model/UPSNotificationMessage;)V

    invoke-static {p1}, Lcom/vivo/push/f;->b(Ljava/lang/Runnable;)V

    return-void

    .line 119
    :cond_1ce
    new-instance p1, Lcom/vivo/push/c/m$3;

    invoke-direct {p1, p0, v0}, Lcom/vivo/push/c/m$3;-><init>(Lcom/vivo/push/c/m;Lcom/vivo/push/model/UPSNotificationMessage;)V

    invoke-static {p1}, Lcom/vivo/push/f;->b(Ljava/lang/Runnable;)V

    return-void

    .line 94
    :cond_1d7
    invoke-virtual {v0}, Lcom/vivo/push/model/UPSNotificationMessage;->getSkipContent()Ljava/lang/String;

    move-result-object p1

    const-string v2, "http://"

    .line 6227
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1ed

    const-string v2, "https://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1ec

    goto :goto_1ed

    :cond_1ec
    const/4 v3, 0x0

    :cond_1ed
    :goto_1ed
    if-eqz v3, :cond_21c

    .line 96
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 97
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 98
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 99
    invoke-virtual {v0}, Lcom/vivo/push/model/UPSNotificationMessage;->getParams()Ljava/util/Map;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/push/c/m;->b(Landroid/content/Intent;Ljava/util/Map;)Landroid/content/Intent;

    .line 101
    :try_start_204
    iget-object v3, p0, Lcom/vivo/push/c/m;->a:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_209
    .catch Ljava/lang/Exception; {:try_start_204 .. :try_end_209} :catch_20a

    goto :goto_221

    .line 104
    :catch_20a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startActivity error : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_221

    :cond_21c
    const-string p1, "url not legal"

    .line 107
    invoke-static {v1, p1}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_221
    new-instance p1, Lcom/vivo/push/c/m$2;

    invoke-direct {p1, p0, v0}, Lcom/vivo/push/c/m$2;-><init>(Lcom/vivo/push/c/m;Lcom/vivo/push/model/UPSNotificationMessage;)V

    invoke-static {p1}, Lcom/vivo/push/f;->b(Ljava/lang/Runnable;)V

    return-void

    .line 83
    :cond_22a
    iget-object v1, p0, Lcom/vivo/push/c/m;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/vivo/push/model/UPSNotificationMessage;->getParams()Ljava/util/Map;

    move-result-object v2

    .line 6042
    iget-object p1, p1, Lcom/vivo/push/b/p;->d:Ljava/lang/String;

    .line 6183
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/vivo/push/c/m$5;

    invoke-direct {v4, p0, v1, p1, v2}, Lcom/vivo/push/c/m$5;-><init>(Lcom/vivo/push/c/m;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 6222
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 84
    new-instance p1, Lcom/vivo/push/c/m$1;

    invoke-direct {p1, p0, v0}, Lcom/vivo/push/c/m$1;-><init>(Lcom/vivo/push/c/m;Lcom/vivo/push/model/UPSNotificationMessage;)V

    invoke-static {p1}, Lcom/vivo/push/f;->b(Ljava/lang/Runnable;)V

    return-void

    .line 177
    :cond_248
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "notify is "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ; isMatch is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
