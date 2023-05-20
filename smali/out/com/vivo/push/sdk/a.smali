.class public final Lcom/vivo/push/sdk/a;
.super Lcom/vivo/push/i;
.source "CommandWorker.java"


# static fields
.field private static d:Lcom/vivo/push/sdk/a;

.field private static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public c:Ljava/lang/String;

.field private e:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    .line 35
    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/vivo/push/sdk/a;->f:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 38
    invoke-direct {p0}, Lcom/vivo/push/i;-><init>()V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/push/sdk/a;->e:Landroid/os/Handler;

    return-void
.end method

.method public static declared-synchronized a()Lcom/vivo/push/sdk/a;
    .registers 2

    const-class v0, Lcom/vivo/push/sdk/a;

    monitor-enter v0

    .line 43
    :try_start_3
    sget-object v1, Lcom/vivo/push/sdk/a;->d:Lcom/vivo/push/sdk/a;

    if-nez v1, :cond_e

    .line 44
    new-instance v1, Lcom/vivo/push/sdk/a;

    invoke-direct {v1}, Lcom/vivo/push/sdk/a;-><init>()V

    sput-object v1, Lcom/vivo/push/sdk/a;->d:Lcom/vivo/push/sdk/a;

    .line 46
    :cond_e
    sget-object v1, Lcom/vivo/push/sdk/a;->d:Lcom/vivo/push/sdk/a;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_50

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_50

    .line 133
    :cond_e
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    :try_start_16
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_1d

    return-object v1

    :cond_1d
    const/16 p1, 0x40

    .line 140
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_50

    .line 141
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_50

    const/4 p1, 0x0

    .line 142
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_36} :catch_38

    move-object v1, p0

    goto :goto_50

    :catch_38
    move-exception p0

    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "error  "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CommandWorker"

    invoke-static {p1, p0}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    :goto_50
    return-object v1
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .registers 4

    if-eqz p1, :cond_11

    .line 54
    iget-object v0, p0, Lcom/vivo/push/sdk/a;->a:Landroid/content/Context;

    if-nez v0, :cond_7

    goto :goto_11

    .line 58
    :cond_7
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 59
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 60
    invoke-virtual {p0, v0}, Lcom/vivo/push/sdk/a;->a(Landroid/os/Message;)V

    return-void

    .line 55
    :cond_11
    :goto_11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " sendMessage error: intent : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mContext: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/vivo/push/sdk/a;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CommandWorker"

    invoke-static {v0, p1}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final b(Landroid/os/Message;)V
    .registers 11

    .line 65
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    const-string v0, "CommandWorker"

    if-eqz p1, :cond_11b

    .line 66
    iget-object v1, p0, Lcom/vivo/push/sdk/a;->a:Landroid/content/Context;

    if-nez v1, :cond_e

    goto/16 :goto_11b

    .line 70
    :cond_e
    iget-object v1, p0, Lcom/vivo/push/sdk/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :try_start_14
    const-string v2, "command_type"

    .line 72
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ca

    const-string v3, "reflect_receiver"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    goto/16 :goto_ca

    :cond_2a
    const-string v2, "command"

    const/4 v3, -0x1

    .line 76
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_39

    const-string v2, "method"

    .line 79
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 83
    :cond_39
    sget-object v3, Lcom/vivo/push/sdk/a;->f:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    iget-object v2, p0, Lcom/vivo/push/sdk/a;->a:Landroid/content/Context;

    const-string v3, "com.vivo.pushclient.action.RECEIVE"

    .line 1438
    invoke-static {v2, v1, v3}, Lcom/vivo/push/util/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 83
    iget-object v2, p0, Lcom/vivo/push/sdk/a;->a:Landroid/content/Context;

    .line 1626
    sget-object v3, Lcom/vivo/push/util/r;->a:Ljava/lang/Boolean;

    if-eqz v3, :cond_5c

    .line 1627
    sget-object v2, Lcom/vivo/push/util/r;->a:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_8a

    :cond_5c
    const-string v3, "com.vivo.push.sdk.service.SystemPushConfig"

    const/4 v4, 0x0

    if-eqz v2, :cond_76

    .line 2609
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_68

    goto :goto_76

    .line 2612
    :cond_68
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    if-eqz v3, :cond_76

    .line 2614
    iget-object v4, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    :cond_76
    :goto_76
    const-string v3, "BCC35D4D3606F154F0402AB7634E8490C0B244C2675C3C6238986987024F0C02"

    .line 1630
    invoke-static {v2, v4}, Lcom/vivo/push/util/r;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1631
    sput-object v2, Lcom/vivo/push/util/r;->a:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_8a
    if-nez v2, :cond_8d

    return-void

    .line 86
    :cond_8d
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 87
    iget-object v3, p0, Lcom/vivo/push/sdk/a;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_cf

    .line 88
    iget-object v3, p0, Lcom/vivo/push/sdk/a;->a:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lcom/vivo/push/sdk/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/push/sdk/a;->c:Ljava/lang/String;

    .line 89
    iget-object v3, p0, Lcom/vivo/push/sdk/a;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_cf

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " reflectReceiver error: receiver for: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not found, package: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    iget-object v2, p0, Lcom/vivo/push/sdk/a;->a:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_ca} :catch_cb

    :cond_ca
    :goto_ca
    return-void

    :catch_cb
    move-exception v2

    .line 97
    invoke-static {v0, v2}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    :cond_cf
    :try_start_cf
    iget-object v2, p0, Lcom/vivo/push/sdk/a;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    .line 103
    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 104
    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x2

    .line 106
    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v3

    const-class v7, Landroid/content/Intent;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const-string v7, "onReceive"

    .line 107
    invoke-virtual {v2, v7, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 108
    iget-object v6, p0, Lcom/vivo/push/sdk/a;->c:Ljava/lang/String;

    invoke-virtual {p1, v1, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    new-array v1, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/vivo/push/sdk/a;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/vivo/push/util/ContextDelegate;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v1, v3

    aput-object p1, v1, v8

    .line 110
    iget-object p1, p0, Lcom/vivo/push/sdk/a;->e:Landroid/os/Handler;

    new-instance v3, Lcom/vivo/push/sdk/a$1;

    invoke-direct {v3, p0, v2, v4, v1}, Lcom/vivo/push/sdk/a$1;-><init>(Lcom/vivo/push/sdk/a;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_113} :catch_114

    return-void

    :catch_114
    move-exception p1

    const-string v1, "reflect e: "

    .line 121
    invoke-static {v0, v1, p1}, Lcom/vivo/push/util/n;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 67
    :cond_11b
    :goto_11b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " handleMessage error: intent : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mContext: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/vivo/push/sdk/a;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
