.class public Lcom/taobao/accs/internal/ServiceImpl;
.super Lcom/taobao/accs/internal/b;
.source "Taobao"


# instance fields
.field private b:Landroid/app/Service;

.field private c:Landroid/content/Context;

.field private d:J

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Service;)V
    .registers 3

    .line 51
    invoke-direct {p0, p1}, Lcom/taobao/accs/internal/b;-><init>(Landroid/app/Service;)V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->b:Landroid/app/Service;

    const-string v0, "unknown"

    .line 48
    iput-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->e:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/taobao/accs/internal/ServiceImpl;->b:Landroid/app/Service;

    .line 53
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/accs/internal/ServiceImpl;->c:Landroid/content/Context;

    return-void
.end method

.method private a()V
    .registers 10

    const/4 v0, 0x0

    .line 137
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "ServiceImpl"

    const-string v3, "init start"

    invoke-static {v2, v3, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    iget-object v1, p0, Lcom/taobao/accs/internal/ServiceImpl;->c:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/taobao/accs/internal/ServiceImpl;->a(Landroid/content/Context;)V

    .line 139
    iget-object v1, p0, Lcom/taobao/accs/internal/ServiceImpl;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    .line 140
    sget-object v1, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mStartServiceTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/taobao/accs/internal/ServiceImpl;->d:J

    .line 142
    iget-object v1, p0, Lcom/taobao/accs/internal/ServiceImpl;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/utl/UtilityImpl;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/accs/internal/ServiceImpl;->e:Ljava/lang/String;

    .line 144
    sget-object v1, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v1}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v1, :cond_56

    const/4 v1, 0x4

    .line 145
    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "sdkVersion"

    aput-object v5, v1, v0

    const/16 v5, 0xdd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    const-string v5, "procStart"

    aput-object v5, v1, v4

    const/4 v5, 0x3

    sget-object v6, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mStartServiceTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v5

    const-string v5, "init"

    invoke-static {v2, v5, v1}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    :cond_56
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v1

    invoke-static {}, Lcom/taobao/accs/utl/UtilityImpl;->f()Ljava/lang/String;

    move-result-object v5

    const v6, 0x101d1

    const-string v7, "START"

    const-string v8, "PROXY"

    invoke-virtual {v1, v6, v7, v5, v8}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 151
    iget-object v1, p0, Lcom/taobao/accs/internal/ServiceImpl;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/utl/UtilityImpl;->h(Landroid/content/Context;)J

    move-result-wide v7

    .line 152
    new-array v1, v4, [Ljava/lang/Object;

    const-string v4, "aliveTime"

    aput-object v4, v1, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "getServiceAliveTime"

    invoke-static {v2, v0, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x4e20

    cmp-long v0, v7, v0

    if-lez v0, :cond_92

    const-wide/16 v0, 0x3e8

    .line 155
    div-long/2addr v7, v0

    long-to-double v0, v7

    const-string v2, "accs"

    const-string v3, "service_alive"

    const-string v4, ""

    invoke-static {v2, v3, v4, v0, v1}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 157
    :cond_92
    iget-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->c:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "service_start"

    invoke-static {v0, v3, v1, v2}, Lcom/taobao/accs/utl/UtilityImpl;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 158
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/internal/ServiceImpl;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/utl/UtilityImpl;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NOTIFY"

    invoke-virtual {v0, v6, v2, v1}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 8

    .line 102
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->m(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_51

    .line 104
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_51

    const/4 v2, 0x0

    move v3, v2

    .line 105
    :goto_13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_51

    .line 107
    :try_start_19
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 108
    const-class v5, Lcom/taobao/accs/IChannelInit;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 111
    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/accs/IChannelInit;
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_39} :catch_4a

    .line 114
    :try_start_39
    invoke-interface {v4, p1}, Lcom/taobao/accs/IChannelInit;->init(Landroid/content/Context;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_3d
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_3c} :catch_4a

    goto :goto_4e

    :catch_3d
    move-exception v4

    .line 116
    :try_start_3e
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4e

    .line 120
    :cond_42
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_49} :catch_4a

    goto :goto_4e

    :catch_4a
    move-exception v4

    .line 123
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 127
    :cond_51
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5a

    .line 128
    invoke-static {p1, v1}, Lcom/taobao/accs/utl/UtilityImpl;->a(Landroid/content/Context;Ljava/util/List;)V

    :cond_5a
    return-void
.end method

.method private a(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 14

    const/4 v0, 0x2

    .line 162
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const-string v3, "handleAction"

    const-string v4, "ServiceImpl"

    invoke-static {v4, v3, v0}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    :try_start_12
    invoke-direct {p0}, Lcom/taobao/accs/internal/ServiceImpl;->b()V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 165
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto/16 :goto_af

    :cond_1f
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 166
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 167
    iget-object p1, p0, Lcom/taobao/accs/internal/ServiceImpl;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 168
    iget-object p2, p0, Lcom/taobao/accs/internal/ServiceImpl;->c:Landroid/content/Context;

    invoke-static {p2}, Lcom/taobao/accs/utl/UtilityImpl;->g(Landroid/content/Context;)Z

    move-result p2

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "network change:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/taobao/accs/internal/ServiceImpl;->e:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_70

    .line 172
    iput-object p1, p0, Lcom/taobao/accs/internal/ServiceImpl;->e:Ljava/lang/String;

    .line 173
    invoke-direct {p0}, Lcom/taobao/accs/internal/ServiceImpl;->c()V

    .line 174
    invoke-direct {p0, v2, v1}, Lcom/taobao/accs/internal/ServiceImpl;->a(ZZ)V

    .line 175
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v5

    const v6, 0x101d1

    const-string v7, "CONNECTIVITY_CHANGE"

    invoke-static {}, Lcom/taobao/accs/utl/UtilityImpl;->f()Ljava/lang/String;

    move-result-object v9

    const-string v10, "0"

    move-object v8, p1

    invoke-virtual/range {v5 .. v10}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_70
    const-string p2, "unknown"

    .line 178
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_af

    .line 179
    invoke-direct {p0}, Lcom/taobao/accs/internal/ServiceImpl;->c()V

    .line 180
    iput-object p1, p0, Lcom/taobao/accs/internal/ServiceImpl;->e:Ljava/lang/String;

    goto :goto_af

    :cond_7e
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 182
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 183
    invoke-direct {p0, v2, v1}, Lcom/taobao/accs/internal/ServiceImpl;->a(ZZ)V

    goto :goto_af

    :cond_8a
    const-string v0, "android.intent.action.USER_PRESENT"

    .line 184
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9d

    const-string p1, "action android.intent.action.USER_PRESENT"

    .line 185
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v4, p1, p2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    invoke-direct {p0, v2, v1}, Lcom/taobao/accs/internal/ServiceImpl;->a(ZZ)V

    goto :goto_af

    :cond_9d
    const-string v0, "com.taobao.accs.intent.action.COMMAND"

    .line 187
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_af

    .line 188
    invoke-direct {p0, p1}, Lcom/taobao/accs/internal/ServiceImpl;->b(Landroid/content/Intent;)V
    :try_end_a8
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_a8} :catch_a9

    goto :goto_af

    :catch_a9
    move-exception p1

    .line 191
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v4, v3, p1, p2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_af
    :goto_af
    return-void
.end method

.method private a(Lcom/taobao/accs/data/Message;Z)V
    .registers 5

    .line 413
    sget-object v0, Lcom/taobao/accs/internal/ServiceImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_2d

    sget-object v0, Lcom/taobao/accs/internal/ServiceImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_2d

    .line 417
    :cond_d
    sget-object v0, Lcom/taobao/accs/internal/ServiceImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 418
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/accs/net/b;

    .line 419
    invoke-virtual {v1, p1, p2}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V

    goto :goto_17

    :cond_2d
    :goto_2d
    return-void
.end method

.method private a(ZZ)V
    .registers 8

    .line 424
    sget-object v0, Lcom/taobao/accs/internal/ServiceImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_43

    sget-object v0, Lcom/taobao/accs/internal/ServiceImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_43

    .line 427
    :cond_d
    sget-object v0, Lcom/taobao/accs/internal/ServiceImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 428
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/accs/net/b;

    .line 429
    invoke-virtual {v1, p1, p2}, Lcom/taobao/accs/net/b;->a(ZZ)V

    const/4 v2, 0x2

    .line 430
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "appkey"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v1}, Lcom/taobao/accs/net/b;->i()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "ServiceImpl"

    const-string v3, "ping connection"

    invoke-static {v1, v3, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_17

    :cond_43
    :goto_43
    return-void
.end method

.method private declared-synchronized b()V
    .registers 11

    monitor-enter p0

    .line 392
    :try_start_1
    sget-object v0, Lcom/taobao/accs/internal/ServiceImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_86

    sget-object v0, Lcom/taobao/accs/internal/ServiceImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_86

    .line 396
    :cond_10
    sget-object v0, Lcom/taobao/accs/internal/ServiceImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_84

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 397
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/accs/net/b;

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-nez v3, :cond_45

    const-string v0, "ServiceImpl"

    const-string v2, "tryConnect connection null"

    .line 399
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "appkey"

    aput-object v6, v5, v1

    invoke-virtual {v3}, Lcom/taobao/accs/net/b;->i()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    invoke-static {v0, v2, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_91

    .line 400
    monitor-exit p0

    return-void

    :cond_45
    :try_start_45
    const-string v6, "ServiceImpl"

    const-string v7, "tryConnect"

    const/4 v8, 0x4

    .line 402
    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "appkey"

    aput-object v9, v8, v1

    invoke-virtual {v3}, Lcom/taobao/accs/net/b;->i()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    const-string v4, "configTag"

    aput-object v4, v8, v5

    const/4 v4, 0x3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v8, v4

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    invoke-virtual {v3}, Lcom/taobao/accs/net/b;->k()Z

    move-result v2

    if-eqz v2, :cond_80

    iget-object v2, v3, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v2}, Lcom/taobao/accs/AccsClientConfig;->getAppSecret()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_80

    const-string v2, "ServiceImpl"

    const-string v3, "tryConnect secret is null"

    .line 405
    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1a

    .line 407
    :cond_80
    invoke-virtual {v3}, Lcom/taobao/accs/net/b;->a()V
    :try_end_83
    .catchall {:try_start_45 .. :try_end_83} :catchall_91

    goto :goto_1a

    .line 410
    :cond_84
    monitor-exit p0

    return-void

    :cond_86
    :goto_86
    :try_start_86
    const-string v0, "ServiceImpl"

    const-string v2, "tryConnect no connections"

    .line 393
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8f
    .catchall {:try_start_86 .. :try_end_8f} :catchall_91

    .line 394
    monitor-exit p0

    return-void

    :catchall_91
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Landroid/content/Intent;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, -0x1

    const-string v3, "command"

    .line 196
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x2

    .line 197
    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v6, v9

    const-string v8, "ServiceImpl"

    const-string v10, "handleCommand"

    invoke-static {v8, v10, v6}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v6, "packageName"

    .line 198
    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v10, "serviceId"

    .line 199
    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v10, "userInfo"

    .line 200
    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v10, "appKey"

    .line 201
    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v10, "configTag"

    .line 202
    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v14, "ttid"

    .line 203
    invoke-virtual {v1, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v2, "sid"

    .line 204
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "anti_brush_cookie"

    .line 205
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const/16 v2, 0xc9

    if-ne v4, v2, :cond_5b

    .line 207
    invoke-static {v9, v7}, Lcom/taobao/accs/data/Message;->a(ZI)Lcom/taobao/accs/data/Message;

    move-result-object v2

    invoke-direct {v0, v2, v9}, Lcom/taobao/accs/internal/ServiceImpl;->a(Lcom/taobao/accs/data/Message;Z)V

    .line 208
    invoke-direct/range {p0 .. p0}, Lcom/taobao/accs/internal/ServiceImpl;->d()V

    :cond_5b
    if-lez v4, :cond_1f0

    .line 210
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f0

    .line 211
    iget-object v2, v0, Lcom/taobao/accs/internal/ServiceImpl;->c:Landroid/content/Context;

    invoke-static {v2, v11, v9}, Lcom/taobao/accs/internal/ServiceImpl;->a(Landroid/content/Context;Ljava/lang/String;Z)Lcom/taobao/accs/net/b;

    move-result-object v2

    const/4 v5, 0x4

    if-eqz v2, :cond_1db

    .line 213
    invoke-virtual {v2}, Lcom/taobao/accs/net/b;->a()V

    if-ne v4, v9, :cond_d1

    .line 220
    iget-object v3, v0, Lcom/taobao/accs/internal/ServiceImpl;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_85

    .line 221
    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "handleCommand bindapp pkg error"

    invoke-static {v8, v2, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_85
    const-string v3, "app_sercet"

    .line 224
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 225
    iget-object v10, v0, Lcom/taobao/accs/internal/ServiceImpl;->c:Landroid/content/Context;

    const-string v3, "appVersion"

    .line 226
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object v12, v15

    move-object v3, v14

    move-object v14, v6

    move-object v5, v15

    move-object v15, v3

    .line 225
    invoke-static/range {v10 .. v16}, Lcom/taobao/accs/data/Message;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v10

    .line 227
    iput-object v3, v2, Lcom/taobao/accs/net/b;->a:Ljava/lang/String;

    .line 228
    iget-object v3, v0, Lcom/taobao/accs/internal/ServiceImpl;->c:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/taobao/accs/utl/UtilityImpl;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v2}, Lcom/taobao/accs/net/b;->j()Lcom/taobao/accs/client/c;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/taobao/accs/client/c;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b0

    const-string v3, "fouce_bind"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1b0

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isAppBinded"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v8, v1, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    sget-object v1, Lcom/taobao/accs/a;->SUCCESS:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v2, v10, v1}, Lcom/taobao/accs/net/b;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V

    return-void

    :cond_d1
    const/4 v11, 0x2

    if-ne v4, v11, :cond_105

    .line 236
    new-array v1, v7, [Ljava/lang/Object;

    const-string v3, "onHostStartCommand COMMAND_UNBIND_APP"

    invoke-static {v8, v3, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    invoke-virtual {v2}, Lcom/taobao/accs/net/b;->j()Lcom/taobao/accs/client/c;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/taobao/accs/client/c;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1af

    .line 238
    invoke-static {v2, v6}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v1

    .line 239
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isAppUnbinded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v8, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    sget-object v3, Lcom/taobao/accs/a;->SUCCESS:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v2, v1, v3}, Lcom/taobao/accs/net/b;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V

    return-void

    :cond_105
    const/4 v11, 0x5

    if-ne v4, v11, :cond_10e

    .line 244
    invoke-static {v6, v13}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v10

    goto/16 :goto_1b0

    :cond_10e
    const/4 v11, 0x6

    if-ne v4, v11, :cond_117

    .line 246
    invoke-static {v6, v13}, Lcom/taobao/accs/data/Message;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v10

    goto/16 :goto_1b0

    :cond_117
    const/4 v11, 0x3

    if-ne v4, v11, :cond_120

    .line 248
    invoke-static {v6, v12}, Lcom/taobao/accs/data/Message;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v10

    goto/16 :goto_1b0

    :cond_120
    if-ne v4, v5, :cond_128

    .line 250
    invoke-static {v6}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v10

    goto/16 :goto_1b0

    :cond_128
    const/16 v5, 0x64

    if-ne v4, v5, :cond_19c

    const-string v3, "data"

    .line 252
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v14

    const-string v3, "dataId"

    .line 253
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v3, "target"

    .line 254
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v3, "businessId"

    .line 255
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v3, "extTag"

    .line 256
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_14a
    const-string v5, "send_type"

    .line 259
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/taobao/accs/data/Message$ReqType;
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_152} :catch_153

    goto :goto_154

    :catch_153
    const/4 v1, 0x0

    :goto_154
    if-eqz v14, :cond_1af

    .line 265
    :try_start_156
    new-instance v5, Ljava/net/URL;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "https://"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v10, v2

    check-cast v10, Lcom/taobao/accs/net/s;

    invoke-virtual {v10}, Lcom/taobao/accs/net/s;->m()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_173
    .catch Ljava/lang/Exception; {:try_start_156 .. :try_end_173} :catch_176

    move-object/from16 v17, v5

    goto :goto_178

    :catch_176
    const/16 v17, 0x0

    .line 268
    :goto_178
    new-instance v5, Lcom/taobao/accs/ACCSManager$AccsRequest;

    move-object v11, v5

    invoke-direct/range {v11 .. v18}, Lcom/taobao/accs/ACCSManager$AccsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 269
    invoke-virtual {v5, v3}, Lcom/taobao/accs/ACCSManager$AccsRequest;->setTag(Ljava/lang/String;)V

    if-nez v1, :cond_18b

    .line 271
    iget-object v1, v0, Lcom/taobao/accs/internal/ServiceImpl;->c:Landroid/content/Context;

    invoke-static {v2, v1, v6, v5, v7}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;Z)Lcom/taobao/accs/data/Message;

    move-result-object v1

    :goto_189
    move-object v10, v1

    goto :goto_1b0

    .line 272
    :cond_18b
    sget-object v3, Lcom/taobao/accs/data/Message$ReqType;->REQ:Lcom/taobao/accs/data/Message$ReqType;

    if-ne v1, v3, :cond_1af

    .line 273
    iget-object v11, v0, Lcom/taobao/accs/internal/ServiceImpl;->c:Landroid/content/Context;

    const/4 v15, 0x0

    const-string v13, "2|"

    move-object v10, v2

    move-object v12, v6

    move-object v14, v5

    invoke-static/range {v10 .. v15}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;Z)Lcom/taobao/accs/data/Message;

    move-result-object v1

    goto :goto_189

    :cond_19c
    const/16 v5, 0x6a

    if-ne v4, v5, :cond_1af

    const-string v2, "com.taobao.accs.intent.action.RECEIVE"

    .line 277
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, -0x1

    .line 278
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 279
    iget-object v2, v0, Lcom/taobao/accs/internal/ServiceImpl;->c:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/taobao/accs/data/g;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :cond_1af
    const/4 v10, 0x0

    :cond_1b0
    :goto_1b0
    if-eqz v10, :cond_1ca

    .line 283
    new-array v1, v7, [Ljava/lang/Object;

    const-string v3, "try send message"

    invoke-static {v8, v3, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    invoke-virtual {v10}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v1

    if-eqz v1, :cond_1c6

    .line 285
    invoke-virtual {v10}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onSend()V

    .line 287
    :cond_1c6
    invoke-virtual {v2, v10, v9}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V

    goto :goto_1f0

    .line 289
    :cond_1ca
    new-array v1, v7, [Ljava/lang/Object;

    const-string v3, "message is null"

    invoke-static {v8, v3, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    invoke-static {v6, v4}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;I)Lcom/taobao/accs/data/Message;

    move-result-object v1

    .line 291
    sget-object v3, Lcom/taobao/accs/a;->PARAMETER_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v2, v1, v3}, Lcom/taobao/accs/net/b;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V

    goto :goto_1f0

    .line 215
    :cond_1db
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v10, v1, v7

    aput-object v11, v1, v9

    const/4 v2, 0x2

    aput-object v3, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "no connection"

    invoke-static {v8, v2, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1f0
    :goto_1f0
    return-void
.end method

.method private c()V
    .registers 3

    .line 435
    sget-object v0, Lcom/taobao/accs/internal/ServiceImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_2d

    sget-object v0, Lcom/taobao/accs/internal/ServiceImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_2d

    .line 439
    :cond_d
    sget-object v0, Lcom/taobao/accs/internal/ServiceImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 440
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/accs/net/b;

    .line 441
    invoke-virtual {v1}, Lcom/taobao/accs/net/b;->b()V

    goto :goto_17

    :cond_2d
    :goto_2d
    return-void
.end method

.method private d()V
    .registers 5

    .line 446
    sget-object v0, Lcom/taobao/accs/internal/ServiceImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_37

    sget-object v0, Lcom/taobao/accs/internal/ServiceImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_37

    .line 450
    :cond_d
    sget-object v0, Lcom/taobao/accs/internal/ServiceImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 451
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/accs/net/b;

    .line 453
    invoke-virtual {v1}, Lcom/taobao/accs/net/b;->c()Lcom/taobao/accs/ut/a/c;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 455
    iget-wide v2, p0, Lcom/taobao/accs/internal/ServiceImpl;->d:J

    iput-wide v2, v1, Lcom/taobao/accs/ut/a/c;->h:J

    .line 456
    invoke-virtual {v1}, Lcom/taobao/accs/ut/a/c;->a()V

    goto :goto_17

    :cond_37
    :goto_37
    return-void
.end method

.method private e()V
    .registers 3

    .line 462
    sget-object v0, Lcom/taobao/accs/internal/ServiceImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_2d

    sget-object v0, Lcom/taobao/accs/internal/ServiceImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_2d

    .line 465
    :cond_d
    sget-object v0, Lcom/taobao/accs/internal/ServiceImpl;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 466
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/accs/net/b;

    .line 467
    invoke-virtual {v1}, Lcom/taobao/accs/net/b;->e()V

    goto :goto_17

    :cond_2d
    :goto_2d
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)I
    .registers 13

    .line 64
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    const/4 v1, 0x2

    const-string v2, "onHostStartCommand"

    const/4 v3, 0x1

    const-string v4, "ServiceImpl"

    const/4 v5, 0x0

    if-eqz v0, :cond_1a

    .line 65
    new-array v0, v1, [Ljava/lang/Object;

    const-string v6, "intent"

    aput-object v6, v0, v5

    aput-object p1, v0, v3

    invoke-static {v4, v2, v0}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    :cond_1a
    :try_start_1a
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    const/4 v6, 0x3

    if-eqz v0, :cond_56

    if-eqz p1, :cond_56

    .line 71
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 73
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_33
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_56

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x4

    .line 74
    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "key"

    aput-object v10, v9, v5

    aput-object v8, v9, v3

    const-string v10, " value"

    aput-object v10, v9, v1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v9, v6

    invoke-static {v4, v2, v9}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_33

    .line 79
    :cond_56
    invoke-static {}, Lcom/taobao/accs/utl/f;->c()I

    move-result v0
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_5a} :catch_94
    .catchall {:try_start_1a .. :try_end_5a} :catchall_92

    if-le v0, v6, :cond_71

    :try_start_5c
    const-string v3, "onHostStartCommand load SO fail 4 times, don\'t auto restart"

    .line 82
    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v4, v3, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "accs"

    const-string v6, "sofail"

    .line 83
    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->a(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v7, 0x0

    invoke-static {v3, v6, v0, v7, v8}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_72

    :cond_71
    move v1, v3

    :goto_72
    if-nez p1, :cond_76

    const/4 v0, 0x0

    goto :goto_7a

    .line 86
    :cond_76
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 87
    :goto_7a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 88
    invoke-direct {p0}, Lcom/taobao/accs/internal/ServiceImpl;->b()V

    .line 89
    invoke-direct {p0, v5, v5}, Lcom/taobao/accs/internal/ServiceImpl;->a(ZZ)V
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_86} :catch_90
    .catchall {:try_start_5c .. :try_end_86} :catchall_92

    .line 96
    sget-object p1, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mStartServiceTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return v1

    .line 92
    :cond_8c
    :try_start_8c
    invoke-direct {p0, p1, v0}, Lcom/taobao/accs/internal/ServiceImpl;->a(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_8f} :catch_90
    .catchall {:try_start_8c .. :try_end_8f} :catchall_92

    goto :goto_9b

    :catch_90
    move-exception p1

    goto :goto_96

    :catchall_92
    move-exception p1

    goto :goto_a1

    :catch_94
    move-exception p1

    move v1, v3

    .line 94
    :goto_96
    :try_start_96
    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v4, v2, p1, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_9b
    .catchall {:try_start_96 .. :try_end_9b} :catchall_92

    .line 96
    :goto_9b
    sget-object p1, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mStartServiceTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return v1

    :goto_a1
    sget-object v0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mStartServiceTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 97
    throw p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .registers 1

    .line 58
    invoke-super {p0}, Lcom/taobao/accs/internal/b;->onCreate()V

    .line 59
    invoke-direct {p0}, Lcom/taobao/accs/internal/ServiceImpl;->a()V

    return-void
.end method

.method public onDestroy()V
    .registers 5

    .line 317
    invoke-super {p0}, Lcom/taobao/accs/internal/b;->onDestroy()V

    const/4 v0, 0x0

    .line 318
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ServiceImpl"

    const-string v2, "Service onDestroy"

    invoke-static {v1, v2, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    iget-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->c:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "service_end"

    invoke-static {v0, v3, v1, v2}, Lcom/taobao/accs/utl/UtilityImpl;->a(Landroid/content/Context;Ljava/lang/String;J)V

    const/4 v0, 0x0

    .line 320
    iput-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->b:Landroid/app/Service;

    .line 321
    iput-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->c:Landroid/content/Context;

    .line 322
    invoke-direct {p0}, Lcom/taobao/accs/internal/ServiceImpl;->e()V

    .line 323
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
