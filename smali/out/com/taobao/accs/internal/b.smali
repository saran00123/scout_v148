.class public abstract Lcom/taobao/accs/internal/b;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lcom/taobao/accs/base/IBaseService;


# static fields
.field protected static a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/net/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/app/Service;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/taobao/accs/internal/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/app/Service;)V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/taobao/accs/internal/b;->c:Landroid/app/Service;

    .line 32
    iput-object p1, p0, Lcom/taobao/accs/internal/b;->c:Landroid/app/Service;

    .line 33
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    return-void
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/String;Z)Lcom/taobao/accs/net/b;
    .registers 13

    const-string v0, "configTag"

    const-string v1, "getConnection"

    const-string v2, "ElectionServiceImpl"

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 127
    :try_start_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eqz v5, :cond_3e

    const-string p0, "getConnection configTag null or env invalid"

    .line 128
    new-array p1, v7, [Ljava/lang/Object;

    const-string p2, "conns.size"

    aput-object p2, p1, v4

    sget-object p2, Lcom/taobao/accs/internal/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v6

    invoke-static {v2, p0, p1}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    sget-object p0, Lcom/taobao/accs/internal/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    if-lez p0, :cond_3c

    .line 130
    sget-object p0, Lcom/taobao/accs/internal/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->elements()Ljava/util/Enumeration;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/taobao/accs/net/b;

    goto :goto_3d

    :cond_3c
    move-object p0, v3

    :goto_3d
    return-object p0

    :cond_3e
    const/4 v5, 0x4

    .line 134
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v4

    aput-object p1, v5, v6

    const-string v8, "start"

    aput-object v8, v5, v7

    const/4 v8, 0x3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-static {v2, v1, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    invoke-static {p1}, Lcom/taobao/accs/AccsClientConfig;->getConfigByTag(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig;

    move-result-object v5

    if-eqz v5, :cond_6b

    .line 136
    invoke-virtual {v5}, Lcom/taobao/accs/AccsClientConfig;->getDisableChannel()Z

    move-result v5

    if-eqz v5, :cond_6b

    const-string p0, "getConnection channel disabled!"

    .line 137
    new-array p2, v7, [Ljava/lang/Object;

    aput-object v0, p2, v4

    aput-object p1, p2, v6

    invoke-static {v2, p0, p2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    .line 140
    :cond_6b
    invoke-static {p0}, Lcom/taobao/accs/utl/Utils;->getMode(Landroid/content/Context;)I

    move-result v0

    .line 141
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 142
    sget-object v6, Lcom/taobao/accs/internal/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/taobao/accs/net/b;
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_88} :catch_b3

    if-nez v6, :cond_b1

    .line 144
    :try_start_8a
    sput v0, Lcom/taobao/accs/AccsClientConfig;->mEnv:I

    .line 145
    new-instance v3, Lcom/taobao/accs/net/s;

    invoke-direct {v3, p0, v4, p1}, Lcom/taobao/accs/net/s;-><init>(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_91} :catch_ae

    if-eqz p2, :cond_96

    .line 147
    :try_start_93
    invoke-virtual {v3}, Lcom/taobao/accs/net/b;->a()V

    .line 149
    :cond_96
    sget-object p0, Lcom/taobao/accs/internal/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    const/16 p1, 0xa

    if-ge p0, p1, :cond_a6

    .line 150
    sget-object p0, Lcom/taobao/accs/internal/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b9

    :cond_a6
    const-string p0, "getConnection fail as exist too many conns!!!"

    .line 152
    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_ad
    .catch Ljava/lang/Throwable; {:try_start_93 .. :try_end_ad} :catch_b3

    goto :goto_b9

    :catch_ae
    move-exception p0

    move-object v3, v6

    goto :goto_b4

    :cond_b1
    move-object v3, v6

    goto :goto_b9

    :catch_b3
    move-exception p0

    .line 156
    :goto_b4
    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, p0, p1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_b9
    return-object v3
.end method

.method private a(Z)V
    .registers 7

    .line 111
    invoke-static {}, Lcom/taobao/accs/AccsClientConfig;->tags()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 113
    :try_start_14
    invoke-static {v1}, Lcom/taobao/accs/AccsClientConfig;->getConfigByTag(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig;

    move-result-object v2

    .line 114
    invoke-virtual {v2}, Lcom/taobao/accs/AccsClientConfig;->getDisableChannel()Z

    move-result v2

    if-nez v2, :cond_8

    .line 115
    iget-object v2, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    invoke-static {v2, v1, p1}, Lcom/taobao/accs/internal/b;->a(Landroid/content/Context;Ljava/lang/String;Z)Lcom/taobao/accs/net/b;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_23} :catch_24

    goto :goto_8

    :catch_24
    move-exception v2

    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tryStartAllConnections "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ElectionServiceImpl"

    invoke-static {v4, v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_8

    :cond_3f
    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "ttid"

    const-string v3, "handleStartCommand"

    const-string v4, "configTag"

    const-string v5, "ElectionServiceImpl"

    const/4 v6, 0x0

    :try_start_d
    const-string v7, "packageName"

    .line 87
    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "appKey"

    .line 88
    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 89
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "app_sercet"

    .line 90
    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 91
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "mode"

    .line 92
    invoke-virtual {v0, v12, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v12, 0xa

    .line 93
    new-array v12, v12, [Ljava/lang/Object;

    aput-object v4, v12, v6

    const/4 v13, 0x1

    aput-object v11, v12, v13

    const-string v14, "appkey"

    const/4 v15, 0x2

    aput-object v14, v12, v15

    const/4 v14, 0x3

    aput-object v8, v12, v14

    const/4 v14, 0x4

    const-string v16, "appSecret"

    aput-object v16, v12, v14

    const/4 v14, 0x5

    aput-object v10, v12, v14

    const/4 v10, 0x6

    aput-object v2, v12, v10

    const/4 v2, 0x7

    aput-object v9, v12, v2

    const/16 v2, 0x8

    const-string v10, "pkg"

    aput-object v10, v12, v2

    const/16 v2, 0x9

    aput-object v7, v12, v2

    invoke-static {v5, v3, v12}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_98

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_98

    iget-object v2, v1, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 95
    iget-object v2, v1, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/taobao/accs/utl/Utils;->setMode(Landroid/content/Context;I)V

    .line 96
    iget-object v0, v1, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    invoke-static {v0, v11, v6}, Lcom/taobao/accs/internal/b;->a(Landroid/content/Context;Ljava/lang/String;Z)Lcom/taobao/accs/net/b;

    move-result-object v0

    if-eqz v0, :cond_81

    .line 98
    iput-object v9, v0, Lcom/taobao/accs/net/b;->a:Ljava/lang/String;

    goto :goto_8c

    :cond_81
    const-string v0, "handleStartCommand start action, no connection"

    .line 100
    new-array v2, v15, [Ljava/lang/Object;

    aput-object v4, v2, v6

    aput-object v11, v2, v13

    invoke-static {v5, v0, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    :goto_8c
    iget-object v0, v1, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/taobao/accs/utl/UtilityImpl;->e(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_91} :catch_92

    goto :goto_98

    :catch_92
    move-exception v0

    .line 105
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v5, v3, v0, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_98
    :goto_98
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Intent;)I
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .registers 4

    const/4 v0, 0x2

    .line 38
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "sdkVersion"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "ElectionServiceImpl"

    const-string v2, "onCreate,"

    invoke-static {v1, v2, v0}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .registers 4

    const/4 v0, 0x0

    .line 75
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ElectionServiceImpl"

    const-string v2, "Service onDestroy"

    invoke-static {v1, v2, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/taobao/accs/internal/b;->b:Landroid/content/Context;

    .line 77
    iput-object v0, p0, Lcom/taobao/accs/internal/b;->c:Landroid/app/Service;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 8

    const/4 p2, 0x2

    if-nez p1, :cond_4

    return p2

    .line 47
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    .line 48
    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "action"

    aput-object v1, p2, v0

    const/4 v1, 0x1

    aput-object p3, p2, v1

    const-string v2, "ElectionServiceImpl"

    const-string v3, "onStartCommand begin"

    invoke-static {v2, v3, p2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p2, "com.taobao.accs.intent.action.START_SERVICE"

    .line 51
    invoke-static {p3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_25

    .line 52
    invoke-direct {p0, p1}, Lcom/taobao/accs/internal/b;->b(Landroid/content/Intent;)V

    goto :goto_32

    .line 53
    :cond_25
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2f

    .line 55
    invoke-direct {p0, v1}, Lcom/taobao/accs/internal/b;->a(Z)V

    goto :goto_32

    .line 58
    :cond_2f
    invoke-direct {p0, v0}, Lcom/taobao/accs/internal/b;->a(Z)V

    .line 60
    :goto_32
    invoke-virtual {p0, p1}, Lcom/taobao/accs/internal/b;->a(Landroid/content/Intent;)I

    move-result p1

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
