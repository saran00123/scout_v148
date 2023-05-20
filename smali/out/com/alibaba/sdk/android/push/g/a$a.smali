.class Lcom/alibaba/sdk/android/push/g/a$a;
.super Landroid/os/HandlerThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/push/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Token:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/HandlerThread;"
    }
.end annotation


# instance fields
.field a:Landroid/os/Handler;

.field b:Landroid/os/Handler;

.field c:Lcom/alibaba/sdk/android/push/g/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/sdk/android/push/g/c<",
            "TToken;>;"
        }
    .end annotation
.end field

.field volatile d:I

.field e:I

.field final synthetic f:Lcom/alibaba/sdk/android/push/g/a;

.field private g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TToken;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/push/g/a;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/g/a$a;->f:Lcom/alibaba/sdk/android/push/g/a;

    const-string p1, "ConnectionWorker"

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/alibaba/sdk/android/push/g/a$a;->d:I

    iput p1, p0, Lcom/alibaba/sdk/android/push/g/a$a;->e:I

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/alibaba/sdk/android/push/g/e;)Lcom/alibaba/sdk/android/push/g/e;
    .registers 13

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    const-string v1, "initAccsChannel..."

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lanetwork/channel/http/NetworkSdkSetting;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/b/c;->a()Lcom/alibaba/sdk/android/ams/common/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/sdk/android/ams/common/b/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/alibaba/sdk/android/ams/common/b/b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AMS]appkey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->i(Ljava/lang/String;)V

    new-instance v0, Lcom/alibaba/sdk/android/push/f/c;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/push/f/c;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/alibaba/sdk/android/push/g/e;->b(Z)V

    :try_start_3d
    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init aliyun accs. context:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -- appkey:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    const-string v1, "AliyunPush"

    invoke-static {v1}, Lcom/taobao/accs/ACCSClient;->getAccsClient(Ljava/lang/String;)Lcom/taobao/accs/ACCSClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/accs/ACCSClient;->cleanLocalBindInfo()V

    invoke-static {}, Lanet/channel/util/AppLifecycle;->onForeground()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "AliyunPush"

    const-string v5, "aliyun"

    new-instance v6, Lcom/alibaba/sdk/android/push/g/a$a$2;

    invoke-direct {v6, p0, p2, v0}, Lcom/alibaba/sdk/android/push/g/a$a$2;-><init>(Lcom/alibaba/sdk/android/push/g/a$a;Lcom/alibaba/sdk/android/push/g/e;Lcom/alibaba/sdk/android/push/f/c;)V

    invoke-static/range {v1 .. v6}, Lcom/taobao/agoo/TaobaoRegister;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/agoo/IRegister;)V
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_7d} :catch_7e

    goto :goto_9f

    :catch_7e
    move-exception v1

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v2

    const-string v3, "accs config failed"

    invoke-virtual {v2, v3, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v5, 0x2

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/f;->o:Lcom/alibaba/sdk/android/push/common/a/f;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/push/common/a/f;->a()I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/g/e;->d()Z

    move-result v8

    const/4 v9, 0x1

    move-object v4, p2

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/sdk/android/push/g/e;->a(IILjava/lang/String;ZZ)V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/f/c;->a()V

    :goto_9f
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/push/common/util/c;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_ce

    iget-object p1, p0, Lcom/alibaba/sdk/android/push/g/a$a;->f:Lcom/alibaba/sdk/android/push/g/a;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/alibaba/sdk/android/push/g/a;->d:Z

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object p1

    const-string v0, "not main process"

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    const/4 v2, 0x2

    sget-object p1, Lcom/alibaba/sdk/android/push/common/a/f;->t:Lcom/alibaba/sdk/android/push/common/a/f;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/common/a/f;->a()I

    move-result v3

    sget-object p1, Lcom/alibaba/sdk/android/push/common/a/f;->t:Lcom/alibaba/sdk/android/push/common/a/f;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/common/a/f;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/g/e;->d()Z

    move-result v5

    const/4 v6, 0x1

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/sdk/android/push/g/e;->a(IILjava/lang/String;ZZ)V

    return-object p2

    :cond_ce
    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/g/e;->e()Z

    move-result p1

    if-nez p1, :cond_f5

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    const/16 p1, 0x96

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/push/f/c;->a(I)V

    :cond_f5
    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/g/e;->b()I

    move-result p1

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_144

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/g/e;->b()I

    move-result p1

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/f;->l:Lcom/alibaba/sdk/android/push/common/a/f;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/common/a/f;->a()I

    move-result v0

    if-ne p1, v0, :cond_127

    :try_start_109
    invoke-static {}, Lcom/taobao/accs/AccsState;->getInstance()Lcom/taobao/accs/AccsState;

    move-result-object p1

    const-string v0, "re"

    invoke-virtual {p1, v0}, Lcom/taobao/accs/AccsState;->getStateByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_113} :catch_114

    goto :goto_116

    :catch_114
    const-string p1, "accs time out"

    :goto_116
    move-object v3, p1

    const/4 v1, 0x2

    sget-object p1, Lcom/alibaba/sdk/android/push/common/a/f;->u:Lcom/alibaba/sdk/android/push/common/a/f;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/common/a/f;->a()I

    move-result v2

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/g/e;->d()Z

    move-result v4

    const/4 v5, 0x1

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/sdk/android/push/g/e;->a(IILjava/lang/String;ZZ)V

    :cond_127
    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[AMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/g/e;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    return-object p2

    :cond_144
    const/4 p1, 0x2

    invoke-virtual {p2, p1}, Lcom/alibaba/sdk/android/push/g/e;->a(I)V

    return-object p2
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/push/g/a$a;Ljava/lang/Object;)Lcom/alibaba/sdk/android/push/g/e;
    .registers 2

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/push/g/a$a;->a(Ljava/lang/Object;)Lcom/alibaba/sdk/android/push/g/e;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/Object;)Lcom/alibaba/sdk/android/push/g/e;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TToken;)",
            "Lcom/alibaba/sdk/android/push/g/e;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, ";network="

    const-string v3, ":"

    const-string v4, ";response="

    const-string v5, ";estimatedTime="

    const-string v6, "connState="

    const-string/jumbo v7, "ut log error"

    new-instance v8, Lcom/alibaba/sdk/android/push/g/e;

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/f;->l:Lcom/alibaba/sdk/android/push/common/a/f;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/common/a/f;->a()I

    move-result v0

    sget-object v9, Lcom/alibaba/sdk/android/push/common/a/f;->l:Lcom/alibaba/sdk/android/push/common/a/f;

    invoke-virtual {v9}, Lcom/alibaba/sdk/android/push/common/a/f;->b()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-direct {v8, v10, v0, v9}, Lcom/alibaba/sdk/android/push/g/e;-><init>(IILjava/lang/String;)V

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/a/a;->c()Landroid/content/Context;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    :try_start_29
    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/push/common/util/c;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v14, 0x2

    if-nez v0, :cond_36

    iput v14, v1, Lcom/alibaba/sdk/android/push/g/a$a;->e:I

    :cond_36
    iget v0, v1, Lcom/alibaba/sdk/android/push/g/a$a;->e:I

    if-nez v0, :cond_69

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "is debug\uff1a"

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/sdk/android/push/common/a/c;->e()Z

    move-result v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/sdk/android/push/common/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, v1, Lcom/alibaba/sdk/android/push/g/a$a;->f:Lcom/alibaba/sdk/android/push/g/a;

    invoke-static {v0}, Lcom/alibaba/sdk/android/push/g/a;->a(Lcom/alibaba/sdk/android/push/g/a;)V

    iget-object v0, v1, Lcom/alibaba/sdk/android/push/g/a$a;->f:Lcom/alibaba/sdk/android/push/g/a;

    invoke-static {v0}, Lcom/alibaba/sdk/android/push/g/a;->b(Lcom/alibaba/sdk/android/push/g/a;)V

    :cond_66
    invoke-direct {v1, v9}, Lcom/alibaba/sdk/android/push/g/a$a;->a(Landroid/content/Context;)V

    :cond_69
    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/a/a;->d()Z

    move-result v0

    if-nez v0, :cond_ae

    invoke-static {v9}, Lcom/alibaba/sdk/android/push/notification/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_ae

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    :goto_79
    invoke-static {v9}, Lcom/alibaba/sdk/android/push/notification/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9b

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    sub-long v16, v16, v14

    const-wide/16 v18, 0x2710

    cmp-long v0, v16, v18

    if-gez v0, :cond_9b

    const-wide/16 v16, 0x3e8

    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    const-string/jumbo v13, "wait for app come to foreground"

    invoke-virtual {v0, v13}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    goto :goto_79

    :cond_9b
    invoke-static {v9}, Lcom/alibaba/sdk/android/push/notification/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_ae

    const/4 v0, 0x0

    invoke-static {v0}, Lanet/channel/AwcnConfig;->setIpv6Enable(Z)V

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    const-string v13, "APP is background, disable ipv6 test"

    invoke-virtual {v0, v13}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    :cond_ae
    iget v0, v1, Lcom/alibaba/sdk/android/push/g/a$a;->e:I

    if-ne v0, v10, :cond_10d

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    const-string v13, "accs init."

    invoke-virtual {v0, v13}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    invoke-direct {v1, v9, v8}, Lcom/alibaba/sdk/android/push/g/a$a;->a(Landroid/content/Context;Lcom/alibaba/sdk/android/push/g/e;)Lcom/alibaba/sdk/android/push/g/e;

    move-result-object v8
    :try_end_bf
    .catch Lcom/alibaba/sdk/android/push/b/e; {:try_start_29 .. :try_end_bf} :catch_221
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_bf} :catch_196
    .catchall {:try_start_29 .. :try_end_bf} :catchall_18e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v11

    if-eqz v8, :cond_10c

    :try_start_c6
    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/alibaba/sdk/android/push/g/a$a;->e:I

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/alibaba/sdk/android/push/g/e;->a()I

    move-result v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/alibaba/sdk/android/push/g/e;->b()I

    move-result v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/alibaba/sdk/android/push/common/util/a;->b(Landroid/content/Context;)Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v10}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->i(Ljava/lang/String;Ljava/lang/Throwable;I)V
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_103} :catch_104

    goto :goto_10c

    :catch_104
    move-exception v0

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v2

    invoke-virtual {v2, v7, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10c
    :goto_10c
    return-object v8

    :cond_10d
    :try_start_10d
    iget v0, v1, Lcom/alibaba/sdk/android/push/g/a$a;->e:I
    :try_end_10f
    .catch Lcom/alibaba/sdk/android/push/b/e; {:try_start_10d .. :try_end_10f} :catch_221
    .catch Ljava/lang/Throwable; {:try_start_10d .. :try_end_10f} :catch_196
    .catchall {:try_start_10d .. :try_end_10f} :catchall_18e

    const/4 v13, 0x2

    if-ne v0, v13, :cond_12c

    :try_start_112
    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    const-string v8, "accs connected.setBindStop."

    invoke-virtual {v0, v8}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V
    :try_end_11b
    .catch Lcom/alibaba/sdk/android/push/b/e; {:try_start_112 .. :try_end_11b} :catch_128
    .catch Ljava/lang/Throwable; {:try_start_112 .. :try_end_11b} :catch_125
    .catchall {:try_start_112 .. :try_end_11b} :catchall_120

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v2, 0x0

    return-object v2

    :catchall_120
    move-exception v0

    move-object v8, v0

    const/4 v0, 0x0

    goto/16 :goto_2a8

    :catch_125
    move-exception v0

    const/4 v8, 0x0

    goto :goto_197

    :catch_128
    move-exception v0

    const/4 v8, 0x0

    goto/16 :goto_222

    :cond_12c
    :try_start_12c
    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    const-string v13, "cant entry this block..."

    invoke-virtual {v0, v13}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    new-instance v13, Lcom/alibaba/sdk/android/push/g/e;

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/f;->p:Lcom/alibaba/sdk/android/push/common/a/f;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/common/a/f;->a()I

    move-result v0

    const-string v14, "State Config Error!"

    invoke-direct {v13, v10, v0, v14}, Lcom/alibaba/sdk/android/push/g/e;-><init>(IILjava/lang/String;)V
    :try_end_142
    .catch Lcom/alibaba/sdk/android/push/b/e; {:try_start_12c .. :try_end_142} :catch_221
    .catch Ljava/lang/Throwable; {:try_start_12c .. :try_end_142} :catch_196
    .catchall {:try_start_12c .. :try_end_142} :catchall_18e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v11

    :try_start_147
    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/alibaba/sdk/android/push/g/a$a;->e:I

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/alibaba/sdk/android/push/g/e;->a()I

    move-result v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/alibaba/sdk/android/push/g/e;->b()I

    move-result v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/alibaba/sdk/android/push/common/util/a;->b(Landroid/content/Context;)Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v10}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->i(Ljava/lang/String;Ljava/lang/Throwable;I)V
    :try_end_184
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_184} :catch_185

    goto :goto_18d

    :catch_185
    move-exception v0

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v2

    invoke-virtual {v2, v7, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_18d
    return-object v13

    :catchall_18e
    move-exception v0

    move-object/from16 v20, v8

    move-object v8, v0

    move-object/from16 v0, v20

    goto/16 :goto_2a8

    :catch_196
    move-exception v0

    :goto_197
    :try_start_197
    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Catch RuntimeException: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    new-instance v13, Lcom/alibaba/sdk/android/push/g/e;

    sget-object v14, Lcom/alibaba/sdk/android/push/common/a/f;->q:Lcom/alibaba/sdk/android/push/common/a/f;

    invoke-virtual {v14}, Lcom/alibaba/sdk/android/push/common/a/f;->a()I

    move-result v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RuntimeException:"

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x1

    invoke-direct {v13, v10, v14, v0}, Lcom/alibaba/sdk/android/push/g/e;-><init>(IILjava/lang/String;)V
    :try_end_1d4
    .catchall {:try_start_197 .. :try_end_1d4} :catchall_18e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v11

    :try_start_1d9
    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/alibaba/sdk/android/push/g/a$a;->e:I

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/alibaba/sdk/android/push/g/e;->a()I

    move-result v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/alibaba/sdk/android/push/g/e;->b()I

    move-result v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/alibaba/sdk/android/push/common/util/a;->b(Landroid/content/Context;)Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->i(Ljava/lang/String;Ljava/lang/Throwable;I)V
    :try_end_217
    .catch Ljava/lang/Exception; {:try_start_1d9 .. :try_end_217} :catch_218

    goto :goto_220

    :catch_218
    move-exception v0

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v2

    invoke-virtual {v2, v7, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_220
    return-object v13

    :catch_221
    move-exception v0

    :goto_222
    :try_start_222
    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v10

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Catch StopProcessException: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/b/e;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " errorCode:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/b/e;->a()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    new-instance v10, Lcom/alibaba/sdk/android/push/g/e;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/b/e;->b()I

    move-result v13

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/b/e;->a()I

    move-result v14

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/b/e;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v13, v14, v0}, Lcom/alibaba/sdk/android/push/g/e;-><init>(IILjava/lang/String;)V
    :try_end_25b
    .catchall {:try_start_222 .. :try_end_25b} :catchall_18e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v11

    :try_start_260
    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/alibaba/sdk/android/push/g/a$a;->e:I

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/alibaba/sdk/android/push/g/e;->a()I

    move-result v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/alibaba/sdk/android/push/g/e;->b()I

    move-result v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/alibaba/sdk/android/push/common/util/a;->b(Landroid/content/Context;)Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->i(Ljava/lang/String;Ljava/lang/Throwable;I)V
    :try_end_29e
    .catch Ljava/lang/Exception; {:try_start_260 .. :try_end_29e} :catch_29f

    goto :goto_2a7

    :catch_29f
    move-exception v0

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v2

    invoke-virtual {v2, v7, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2a7
    return-object v10

    :goto_2a8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v11

    if-eqz v0, :cond_2f6

    :try_start_2af
    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/alibaba/sdk/android/push/g/a$a;->e:I

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/g/e;->a()I

    move-result v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/g/e;->b()I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/alibaba/sdk/android/push/common/util/a;->b(Landroid/content/Context;)Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v10, v0, v2, v3}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->i(Ljava/lang/String;Ljava/lang/Throwable;I)V
    :try_end_2ed
    .catch Ljava/lang/Exception; {:try_start_2af .. :try_end_2ed} :catch_2ee

    goto :goto_2f6

    :catch_2ee
    move-exception v0

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v2

    invoke-virtual {v2, v7, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2f6
    :goto_2f6
    throw v8
.end method

.method private a(Landroid/content/Context;)V
    .registers 8

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load utdid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/b/c;->a()Lcom/alibaba/sdk/android/ams/common/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/sdk/android/ams/common/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v2

    const-string/jumbo v3, "vip init."

    invoke-virtual {v2, v3}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/alibaba/sdk/android/ams/common/b/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/sdk/android/ams/common/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_64

    invoke-static {v1}, Lcom/alibaba/sdk/android/ams/common/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_64

    invoke-static {p1}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[AMS]Got deviceId from preference: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->i(Ljava/lang/String;)V

    iput v4, p0, Lcom/alibaba/sdk/android/push/g/a$a;->e:I

    goto :goto_a1

    :cond_64
    invoke-static {p1}, Lcom/alibaba/sdk/android/push/common/util/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b1

    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/g/a$a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AMS]Got deviceId from remote server: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->i(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alibaba/sdk/android/ams/common/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a2

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/ams/common/b/b;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/ams/common/b/b;->b(Ljava/lang/String;)V

    iput v4, p0, Lcom/alibaba/sdk/android/push/g/a$a;->e:I

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object p1

    const-string v0, "[AMS]vip init success"

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->i(Ljava/lang/String;)V

    :goto_a1
    return-void

    :cond_a2
    new-instance p1, Lcom/alibaba/sdk/android/push/b/e;

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/f;->g:Lcom/alibaba/sdk/android/push/common/a/f;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/common/a/f;->a()I

    move-result v0

    const-string/jumbo v1, "\u83b7\u53d6deviceId\u5931\u8d25"

    invoke-direct {p1, v1, v0, v4}, Lcom/alibaba/sdk/android/push/b/e;-><init>(Ljava/lang/String;II)V

    throw p1

    :cond_b1
    new-instance p1, Lcom/alibaba/sdk/android/push/b/e;

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/f;->j:Lcom/alibaba/sdk/android/push/common/a/f;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/common/a/f;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/f;->j:Lcom/alibaba/sdk/android/push/common/a/f;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/push/common/a/f;->a()I

    move-result v1

    invoke-direct {p1, v0, v1, v4}, Lcom/alibaba/sdk/android/push/b/e;-><init>(Ljava/lang/String;II)V

    throw p1
.end method

.method private c()Ljava/lang/String;
    .registers 8

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/b/c;->a()Lcom/alibaba/sdk/android/ams/common/b/b;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/a/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/a/a;->c()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_e
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "appKey"

    invoke-interface {v0}, Lcom/alibaba/sdk/android/ams/common/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "deviceId"

    invoke-static {v2}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "version"

    const-string v6, "3.7.2"

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "utdid"

    invoke-static {v2}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "os"

    const-string v2, "2"

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "package"

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/a/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Lcom/alibaba/sdk/android/ams/common/util/c;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0
    :try_end_4b
    .catch Lcom/alibaba/sdk/android/push/b/e; {:try_start_e .. :try_end_4b} :catch_a6
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_4b} :catch_8e
    .catchall {:try_start_e .. :try_end_4b} :catchall_8c

    :try_start_4b
    const-string v2, "POST"

    invoke-static {v1, v0, v2}, Lcom/alibaba/sdk/android/ams/common/util/a;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v4
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_51} :catch_7a
    .catch Lcom/alibaba/sdk/android/push/b/e; {:try_start_4b .. :try_end_51} :catch_a6
    .catchall {:try_start_4b .. :try_end_51} :catchall_8c

    if-eqz v4, :cond_63

    :try_start_53
    sget-object v0, Lcom/alibaba/sdk/android/push/common/util/a/d;->b:Lcom/alibaba/sdk/android/push/common/util/a/d;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/common/util/a/d;->a()I

    move-result v0

    invoke-static {v0, v4}, Lcom/alibaba/sdk/android/push/g/i;->a(ILjava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0
    :try_end_5d
    .catch Lcom/alibaba/sdk/android/push/b/e; {:try_start_53 .. :try_end_5d} :catch_a6
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5d} :catch_8e
    .catchall {:try_start_53 .. :try_end_5d} :catchall_8c

    if-eqz v4, :cond_62

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_62
    return-object v0

    :cond_63
    :try_start_63
    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    const-string v1, "failed to loadConfigFromRemote!"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/alibaba/sdk/android/push/b/e;

    const-string v1, "failed to load config from remote"

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/f;->j:Lcom/alibaba/sdk/android/push/common/a/f;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/push/common/a/f;->a()I

    move-result v2

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/sdk/android/push/b/e;-><init>(Ljava/lang/String;II)V

    throw v0

    :catch_7a
    new-instance v0, Lcom/alibaba/sdk/android/push/b/e;

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/f;->j:Lcom/alibaba/sdk/android/push/common/a/f;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/push/common/a/f;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/f;->j:Lcom/alibaba/sdk/android/push/common/a/f;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/push/common/a/f;->a()I

    move-result v2

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/sdk/android/push/b/e;-><init>(Ljava/lang/String;II)V

    throw v0
    :try_end_8c
    .catch Lcom/alibaba/sdk/android/push/b/e; {:try_start_63 .. :try_end_8c} :catch_a6
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_8c} :catch_8e
    .catchall {:try_start_63 .. :try_end_8c} :catchall_8c

    :catchall_8c
    move-exception v0

    goto :goto_a8

    :catch_8e
    move-exception v0

    :try_start_8f
    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v1

    const-string v2, "loadConfigFromRemote failed! error:"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/alibaba/sdk/android/push/b/e;

    const-string v1, "request vip error"

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/f;->j:Lcom/alibaba/sdk/android/push/common/a/f;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/push/common/a/f;->a()I

    move-result v2

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/sdk/android/push/b/e;-><init>(Ljava/lang/String;II)V

    throw v0

    :catch_a6
    move-exception v0

    throw v0
    :try_end_a8
    .catchall {:try_start_8f .. :try_end_a8} :catchall_8c

    :goto_a8
    if-eqz v4, :cond_ad

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_ad
    throw v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/alibaba/sdk/android/push/g/a$a;->d:I

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/a$a;->f:Lcom/alibaba/sdk/android/push/g/a;

    iget-boolean v0, v0, Lcom/alibaba/sdk/android/push/g/a;->d:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/alibaba/sdk/android/push/g/a$a;->e:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1d

    :cond_f
    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/a$a;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/sdk/android/push/g/a$a;->a:Landroid/os/Handler;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alibaba/sdk/android/push/g/a$a;->g:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_1f

    :cond_1d
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/alibaba/sdk/android/push/g/c;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/push/g/c<",
            "TToken;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/g/a$a;->c:Lcom/alibaba/sdk/android/push/g/c;

    return-void
.end method

.method public declared-synchronized a(Lcom/alibaba/sdk/android/push/g/e;)Z
    .registers 8

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/g/e;->d()Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_c

    iget p1, p0, Lcom/alibaba/sdk/android/push/g/a$a;->e:I

    if-eq p1, v0, :cond_4d

    :cond_c
    iget p1, p0, Lcom/alibaba/sdk/android/push/g/a$a;->d:I

    const/4 v1, 0x5

    if-ge p1, v1, :cond_4d

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/sdk/android/push/g/a$a;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    iget p1, p0, Lcom/alibaba/sdk/android/push/g/a$a;->d:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/alibaba/sdk/android/push/g/a$a;->d:I

    iget-object p1, p0, Lcom/alibaba/sdk/android/push/g/a$a;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/alibaba/sdk/android/push/g/a$a;->a:Landroid/os/Handler;

    iget-object v3, p0, Lcom/alibaba/sdk/android/push/g/a$a;->g:Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    iget v4, p0, Lcom/alibaba/sdk/android/push/g/a$a;->d:I

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v2, v2

    mul-int/lit16 v2, v2, 0x1388

    int-to-long v2, v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_4b
    .catchall {:try_start_1 .. :try_end_4b} :catchall_50

    monitor-exit p0

    return v1

    :cond_4d
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_50
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/a$a;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/a$a;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected onLooperPrepared()V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/push/g/a$a;->b:Landroid/os/Handler;

    new-instance v0, Lcom/alibaba/sdk/android/push/g/a$a$1;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/push/g/a$a$1;-><init>(Lcom/alibaba/sdk/android/push/g/a$a;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/push/g/a$a;->a:Landroid/os/Handler;

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    const-string v1, "Looping Prepared."

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/a$a;->f:Lcom/alibaba/sdk/android/push/g/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/sdk/android/push/g/a;->b:Z

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/push/g/a$a;->a()V

    return-void
.end method
