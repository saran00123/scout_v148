.class public Lcom/taobao/accs/internal/ACCSManagerImpl;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lcom/taobao/accs/IACCSManager;


# instance fields
.field public a:Lcom/taobao/accs/net/b;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Lcom/alibaba/sdk/android/logger/ILog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->b:I

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/taobao/accs/client/GlobalClientInfo;->a:Landroid/content/Context;

    .line 55
    new-instance p1, Lcom/taobao/accs/net/j;

    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->a:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, p2}, Lcom/taobao/accs/net/j;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object p1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    .line 56
    iput-object p2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->c:Ljava/lang/String;

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ACCSMgrImpl_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    iget-object p2, p2, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-static {p1}, Lcom/taobao/accs/utl/AccsLogger;->getLogger(Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Lcom/alibaba/sdk/android/logger/ILog;

    return-void
.end method

.method private a(Landroid/content/Context;I)Landroid/content/Intent;
    .registers 6

    const/4 v0, 0x1

    if-eq p2, v0, :cond_17

    .line 530
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/taobao/accs/net/b;->j()Lcom/taobao/accs/client/c;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/accs/client/c;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    :cond_15
    const/4 p1, 0x0

    return-object p1

    .line 535
    :cond_17
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.taobao.accs.intent.action.COMMAND"

    .line 536
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 537
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/taobao/accs/utl/AdapterUtilityImpl;->channelService:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "packageName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "command"

    .line 539
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 540
    iget-object p1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    iget-object p1, p1, Lcom/taobao/accs/net/b;->b:Ljava/lang/String;

    const-string p2, "appKey"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 541
    iget-object p1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->c:Ljava/lang/String;

    const-string p2, "configTag"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 566
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.taobao.accs.intent.action.RECEIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "command"

    .line 568
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "serviceId"

    .line 569
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "dataId"

    .line 570
    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    iget-object p3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    iget-object p3, p3, Lcom/taobao/accs/net/b;->b:Ljava/lang/String;

    const-string p4, "appKey"

    invoke-virtual {v0, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    iget-object p3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->c:Ljava/lang/String;

    const-string p4, "configTag"

    invoke-virtual {v0, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p3, 0x2

    if-ne p2, p3, :cond_33

    .line 573
    sget-object p2, Lcom/taobao/accs/a;->SUCCESS:Lcom/alibaba/sdk/android/error/ErrorCode;

    goto :goto_35

    :cond_33
    sget-object p2, Lcom/taobao/accs/a;->APP_NOT_BIND:Lcom/alibaba/sdk/android/error/ErrorCode;

    :goto_35
    const-string p3, "errorObj"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 574
    invoke-static {p1, v0}, Lcom/taobao/accs/data/g;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/taobao/accs/data/Message;IZ)V
    .registers 9

    .line 133
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {v0}, Lcom/taobao/accs/net/b;->a()V

    if-nez p2, :cond_1f

    .line 135
    iget-object p2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Lcom/alibaba/sdk/android/logger/ILog;

    const-string p4, "message is null"

    invoke-interface {p2, p4}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-static {p1, p3}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;I)Lcom/taobao/accs/data/Message;

    move-result-object p1

    .line 138
    iget-object p2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    sget-object p3, Lcom/taobao/accs/a;->PARAMETER_ERROR:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {p2, p1, p3}, Lcom/taobao/accs/net/b;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V

    goto/16 :goto_ab

    :cond_1f
    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eq p3, v0, :cond_46

    const/4 p4, 0x2

    if-eq p3, p4, :cond_27

    goto :goto_8e

    .line 157
    :cond_27
    iget-object p4, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {p4}, Lcom/taobao/accs/net/b;->j()Lcom/taobao/accs/client/c;

    move-result-object p4

    invoke-virtual {p2}, Lcom/taobao/accs/data/Message;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Lcom/taobao/accs/client/c;->e(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_8e

    .line 158
    iget-object p4, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v1, "unbind app, already unbind"

    invoke-interface {p4, v1}, Lcom/alibaba/sdk/android/logger/ILog;->i(Ljava/lang/String;)V

    .line 159
    iget-object p4, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    sget-object v1, Lcom/taobao/accs/a;->SUCCESS:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {p4, p2, v1}, Lcom/taobao/accs/net/b;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V

    goto :goto_8f

    .line 143
    :cond_46
    invoke-virtual {p2}, Lcom/taobao/accs/data/Message;->f()Ljava/lang/String;

    move-result-object v1

    .line 144
    iget-object v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {v2}, Lcom/taobao/accs/net/b;->j()Lcom/taobao/accs/client/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/taobao/accs/client/c;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_76

    if-nez p4, :cond_76

    .line 145
    iget-object p4, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v1, "bind app from cache"

    invoke-interface {p4, v1}, Lcom/alibaba/sdk/android/logger/ILog;->i(Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/taobao/accs/AccsState;->getInstance()Lcom/taobao/accs/AccsState;

    move-result-object p4

    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "bfc"

    invoke-virtual {p4, v1, v3, v2}, Lcom/taobao/accs/AccsState;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    iget-object p4, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    sget-object v1, Lcom/taobao/accs/a;->SUCCESS:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {p4, p2, v1}, Lcom/taobao/accs/net/b;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V

    goto :goto_8f

    .line 149
    :cond_76
    iget-object v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {v2}, Lcom/taobao/accs/net/b;->j()Lcom/taobao/accs/client/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/taobao/accs/client/c;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_85

    if-nez p4, :cond_85

    goto :goto_8f

    .line 153
    :cond_85
    iget-object p1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {p1}, Lcom/taobao/accs/net/b;->j()Lcom/taobao/accs/client/c;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/taobao/accs/client/c;->c(Ljava/lang/String;)V

    :cond_8e
    :goto_8e
    move p1, v0

    :goto_8f
    if-eqz p1, :cond_ab

    .line 165
    iget-object p1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Lcom/alibaba/sdk/android/logger/ILog;

    const-string p4, "sendControlMessage"

    invoke-interface {p1, p4}, Lcom/alibaba/sdk/android/logger/ILog;->info(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "command"

    invoke-interface {p1, p4, p3}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p1

    invoke-interface {p1}, Lcom/alibaba/sdk/android/logger/ILog;->done()V

    .line 166
    iget-object p1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {p1, p2, v0}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V

    :cond_ab
    :goto_ab
    return-void
.end method


# virtual methods
.method public bindApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V
    .registers 11

    const-string v3, "accs"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 63
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/accs/internal/ACCSManagerImpl;->bindApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V

    return-void
.end method

.method public bindApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V
    .registers 11

    if-nez p1, :cond_3

    return-void

    .line 72
    :cond_3
    iget-object p3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v0, "bindApp"

    invoke-interface {p3, v0}, Lcom/alibaba/sdk/android/logger/ILog;->debug(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p3

    const-string v0, "appKey"

    invoke-interface {p3, v0, p2}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p3

    invoke-interface {p3}, Lcom/alibaba/sdk/android/logger/ILog;->done()V

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x1

    invoke-static {p3, v1}, Lcom/taobao/accs/data/Message;->a(Ljava/lang/String;I)Lcom/taobao/accs/data/Message;

    move-result-object p3

    .line 74
    iget-object v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {v2}, Lcom/taobao/accs/net/b;->k()Z

    move-result v2

    if-eqz v2, :cond_42

    iget-object v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    iget-object v2, v2, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v2}, Lcom/taobao/accs/AccsClientConfig;->getAppSecret()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 75
    iget-object p1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Lcom/alibaba/sdk/android/logger/ILog;

    const-string p2, "isSecurityOff and null secret"

    invoke-interface {p1, p2}, Lcom/alibaba/sdk/android/logger/ILog;->w(Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    sget-object p2, Lcom/taobao/accs/a;->APPSECRET_NULL:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {p1, p3, p2}, Lcom/taobao/accs/net/b;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V

    return-void

    .line 79
    :cond_42
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 80
    iget-object p1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Lcom/alibaba/sdk/android/logger/ILog;

    const-string p2, "appkey null"

    invoke-interface {p1, p2}, Lcom/alibaba/sdk/android/logger/ILog;->w(Ljava/lang/String;)V

    .line 81
    iget-object p1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    sget-object p2, Lcom/taobao/accs/a;->APPKEY_NULL:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {p1, p3, p2}, Lcom/taobao/accs/net/b;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V

    return-void

    .line 84
    :cond_57
    iget-object p3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    iput-object p4, p3, Lcom/taobao/accs/net/b;->a:Ljava/lang/String;

    .line 85
    iput-object p2, p3, Lcom/taobao/accs/net/b;->b:Ljava/lang/String;

    .line 86
    iget-object p3, p3, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {p3}, Lcom/taobao/accs/AccsClientConfig;->getAppSecret()Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/taobao/accs/utl/UtilityImpl;->e(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p5, :cond_74

    .line 90
    invoke-static {}, Lcom/taobao/accs/client/a;->a()Lcom/taobao/accs/client/a;

    move-result-object p3

    iget-object v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->c:Ljava/lang/String;

    invoke-static {p5}, Lcom/taobao/accs/utl/c;->a(Lcom/taobao/accs/IAppReceiver;)Lcom/taobao/accs/IAppReceiver;

    move-result-object p5

    invoke-virtual {p3, v2, p5}, Lcom/taobao/accs/client/a;->a(Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V

    .line 92
    :cond_74
    invoke-direct {p0, p1, v1}, Lcom/taobao/accs/internal/ACCSManagerImpl;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p3

    .line 95
    :try_start_78
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object p5

    invoke-virtual {p5}, Lcom/taobao/accs/client/GlobalClientInfo;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object p5

    iget-object p5, p5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 96
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_93

    const-string v2, "EMAS_ACCS_SDK"

    invoke-static {v2, p1}, Lcom/taobao/accs/utl/UtilityImpl;->utdidChanged(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_91

    goto :goto_93

    :cond_91
    const/4 v2, 0x0

    goto :goto_94

    :cond_93
    :goto_93
    move v2, v1

    :goto_94
    if-eqz v2, :cond_a2

    .line 98
    iget-object v3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v4, "force bindApp"

    invoke-interface {v3, v4}, Lcom/alibaba/sdk/android/logger/ILog;->d(Ljava/lang/String;)V

    const-string v3, "fouce_bind"

    .line 99
    invoke-virtual {p3, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 101
    :cond_a2
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "ttid"

    .line 102
    invoke-virtual {p3, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "appVersion"

    .line 103
    invoke-virtual {p3, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "app_sercet"

    .line 104
    iget-object p4, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    iget-object p4, p4, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {p4}, Lcom/taobao/accs/AccsClientConfig;->getAppSecret()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_f6

    .line 106
    iget-object p2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-static {p2, p1, p3}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Landroid/content/Context;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;

    move-result-object p2

    .line 108
    invoke-virtual {p2}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object p3

    if-eqz p3, :cond_f2

    .line 109
    invoke-virtual {p2}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object p3

    iget-object p4, p2, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    invoke-virtual {p3, p4}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setDataId(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setMsgType(I)V

    .line 111
    invoke-virtual {p2}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object p3

    iget-object p4, p2, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    if-eqz p4, :cond_ed

    iget-object p4, p2, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    invoke-virtual {p4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_ef

    :cond_ed
    const-string p4, ""

    :goto_ef
    invoke-virtual {p3, p4}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setHost(Ljava/lang/String;)V

    .line 113
    :cond_f2
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/taobao/accs/internal/ACCSManagerImpl;->a(Landroid/content/Context;Lcom/taobao/accs/data/Message;IZ)V

    goto :goto_fd

    .line 115
    :cond_f6
    iget-object p2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Lcom/alibaba/sdk/android/logger/ILog;

    const-string p3, "bindApp only allow in main process"

    invoke-interface {p2, p3}, Lcom/alibaba/sdk/android/logger/ILog;->w(Ljava/lang/String;)V

    .line 117
    :goto_fd
    iget-object p2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/taobao/accs/net/b;->b(Landroid/content/Context;)V
    :try_end_106
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_106} :catch_107

    goto :goto_10f

    :catch_107
    move-exception p1

    .line 119
    iget-object p2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Lcom/alibaba/sdk/android/logger/ILog;

    const-string p3, "bindApp exception"

    invoke-interface {p2, p3, p1}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_10f
    return-void
.end method

.method public bindService(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    .line 259
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v1, "bindService"

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/logger/ILog;->info(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v0

    const-string v1, "serviceId"

    invoke-interface {v0, v1, p2}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/sdk/android/logger/ILog;->done()V

    const/4 v0, 0x5

    .line 260
    invoke-direct {p0, p1, v0}, Lcom/taobao/accs/internal/ACCSManagerImpl;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_1d

    const/4 v1, 0x0

    .line 262
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/taobao/accs/internal/ACCSManagerImpl;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 265
    :cond_1d
    iget-object v3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {v3}, Lcom/taobao/accs/net/b;->i()Ljava/lang/String;

    move-result-object v3

    .line 266
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 267
    iget-object p1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Lcom/alibaba/sdk/android/logger/ILog;

    const-string p2, "appKey null"

    invoke-interface {p1, p2}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;)V

    return-void

    :cond_31
    const-string v4, "appKey"

    .line 270
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    invoke-virtual {v2, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_75

    .line 274
    iget-object p2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-static {p2, v2}, Lcom/taobao/accs/data/Message;->b(Lcom/taobao/accs/net/b;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;

    move-result-object p2

    .line 275
    invoke-virtual {p2}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v1

    if-eqz v1, :cond_70

    .line 276
    invoke-virtual {p2}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v1

    iget-object v2, p2, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setDataId(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setMsgType(I)V

    .line 278
    invoke-virtual {p2}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v1

    iget-object v2, p2, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    if-eqz v2, :cond_6b

    iget-object v2, p2, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6d

    :cond_6b
    const-string v2, ""

    :goto_6d
    invoke-virtual {v1, v2}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setHost(Ljava/lang/String;)V

    :cond_70
    const/4 v1, 0x0

    .line 280
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/taobao/accs/internal/ACCSManagerImpl;->a(Landroid/content/Context;Lcom/taobao/accs/data/Message;IZ)V

    goto :goto_7c

    .line 282
    :cond_75
    iget-object p2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v0, "bindService not main process, ignored"

    invoke-interface {p2, v0}, Lcom/alibaba/sdk/android/logger/ILog;->w(Ljava/lang/String;)V

    .line 284
    :goto_7c
    iget-object p2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/taobao/accs/net/b;->b(Landroid/content/Context;)V

    return-void
.end method

.method public bindUser(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 187
    invoke-virtual {p0, p1, p2, v0}, Lcom/taobao/accs/internal/ACCSManagerImpl;->bindUser(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public bindUser(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 10

    const-string v0, "bindUser"

    .line 194
    :try_start_2
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Lcom/alibaba/sdk/android/logger/ILog;

    invoke-interface {v1, v0}, Lcom/alibaba/sdk/android/logger/ILog;->info(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v1

    const-string v2, "userId"

    invoke-interface {v1, v2, p2}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v1

    const-string v2, "force"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/sdk/android/logger/ILog;->done()V

    const/4 v1, 0x3

    .line 196
    invoke-direct {p0, p1, v1}, Lcom/taobao/accs/internal/ACCSManagerImpl;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_27

    const/4 p2, 0x0

    .line 198
    invoke-direct {p0, p1, v1, p2, p2}, Lcom/taobao/accs/internal/ACCSManagerImpl;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 201
    :cond_27
    iget-object v3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {v3}, Lcom/taobao/accs/net/b;->i()Ljava/lang/String;

    move-result-object v3

    .line 202
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 203
    iget-object p1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Lcom/alibaba/sdk/android/logger/ILog;

    const-string p2, "appkey null"

    invoke-interface {p1, p2}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;)V

    return-void

    .line 206
    :cond_3b
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->c(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_44

    if-eqz p3, :cond_51

    .line 207
    :cond_44
    iget-object p3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v4, "force bind user"

    invoke-interface {p3, v4}, Lcom/alibaba/sdk/android/logger/ILog;->d(Ljava/lang/String;)V

    const-string p3, "fouce_bind"

    .line 209
    invoke-virtual {v2, p3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move p3, v5

    :cond_51
    const-string v4, "appKey"

    .line 211
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "userInfo"

    .line 212
    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_96

    .line 215
    iget-object p2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-static {p2, v2}, Lcom/taobao/accs/data/Message;->d(Lcom/taobao/accs/net/b;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;

    move-result-object p2

    .line 217
    invoke-virtual {p2}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v2

    if-eqz v2, :cond_92

    .line 218
    invoke-virtual {p2}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v2

    iget-object v3, p2, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setDataId(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setMsgType(I)V

    .line 220
    invoke-virtual {p2}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v2

    iget-object v3, p2, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    if-eqz v3, :cond_8d

    iget-object v3, p2, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_8f

    :cond_8d
    const-string v3, ""

    :goto_8f
    invoke-virtual {v2, v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setHost(Ljava/lang/String;)V

    .line 222
    :cond_92
    invoke-direct {p0, p1, p2, v1, p3}, Lcom/taobao/accs/internal/ACCSManagerImpl;->a(Landroid/content/Context;Lcom/taobao/accs/data/Message;IZ)V

    goto :goto_9d

    .line 224
    :cond_96
    iget-object p2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Lcom/alibaba/sdk/android/logger/ILog;

    const-string p3, "bindUser not main process, ignored"

    invoke-interface {p2, p3}, Lcom/alibaba/sdk/android/logger/ILog;->w(Ljava/lang/String;)V

    .line 226
    :goto_9d
    iget-object p2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/taobao/accs/net/b;->b(Landroid/content/Context;)V
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_a6} :catch_a7

    goto :goto_ad

    :catch_a7
    move-exception p1

    .line 228
    iget-object p2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Lcom/alibaba/sdk/android/logger/ILog;

    invoke-interface {p2, v0, p1}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_ad
    return-void
.end method

.method public cancel(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 623
    iget-object p1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {p1, p2}, Lcom/taobao/accs/net/b;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public cleanLocalBindInfo()V
    .registers 2

    .line 743
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {v0}, Lcom/taobao/accs/net/b;->j()Lcom/taobao/accs/client/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/client/c;->a()V

    return-void
.end method

.method public clearLoginInfo(Landroid/content/Context;)V
    .registers 2

    .line 618
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->clearLoginInfoImpl()V

    return-void
.end method

.method public forceDisableService(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

.method public forceEnableService(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

.method public forceReConnectChannel()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 656
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    iget-object v0, v0, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v0}, Lcom/taobao/accs/AccsClientConfig;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanet/channel/SessionCenter;->getInstance(Ljava/lang/String;)Lanet/channel/SessionCenter;

    move-result-object v0

    invoke-virtual {v0}, Lanet/channel/SessionCenter;->forceRecreateAccsSession()V

    .line 657
    invoke-virtual {p0}, Lcom/taobao/accs/internal/ACCSManagerImpl;->getChannelState()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getChannelState()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 635
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/accs/net/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 636
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    .line 637
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    iget-object v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    iget-object v2, v2, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v2}, Lcom/taobao/accs/AccsClientConfig;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lanet/channel/SessionCenter;->getInstance(Ljava/lang/String;)Lanet/channel/SessionCenter;

    move-result-object v2

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v0, v3, v4}, Lanet/channel/SessionCenter;->getThrowsException(Ljava/lang/String;J)Lanet/channel/Session;

    move-result-object v2

    if-eqz v2, :cond_31

    const/4 v2, 0x1

    .line 641
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    :cond_31
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v2, "getChannelState"

    invoke-interface {v0, v2}, Lcom/alibaba/sdk/android/logger/ILog;->info(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/sdk/android/logger/ILog;->done()V

    return-object v1
.end method

.method public getUserUnit()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public isChannelError(I)Z
    .registers 2

    .line 681
    invoke-static {p1}, Lcom/taobao/accs/ErrorCode;->isChannelError(I)Z

    move-result p1

    return p1
.end method

.method public isNetworkReachable(Landroid/content/Context;)Z
    .registers 2

    .line 525
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->g(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public registerDataListener(Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/base/AccsAbstractDataListener;)V
    .registers 4

    .line 715
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/taobao/accs/client/GlobalClientInfo;->registerListener(Ljava/lang/String;Lcom/taobao/accs/base/AccsAbstractDataListener;)V

    return-void
.end method

.method public registerSerivce(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 694
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/taobao/accs/client/GlobalClientInfo;->registerService(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendBusinessAck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;SLjava/lang/String;Ljava/util/Map;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "S",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 730
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    const/4 v4, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZSLjava/lang/String;Ljava/util/Map;)Lcom/taobao/accs/data/Message;

    move-result-object p1

    .line 731
    iget-object p2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V

    return-void
.end method

.method public sendData(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;
    .registers 8

    .line 331
    :try_start_0
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 332
    iget-object p1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v0, "sendData not in mainprocess"

    invoke-interface {p1, v0}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;)V

    return-object v1

    :cond_f
    if-nez p2, :cond_26

    const-string p1, "accs"

    const-string v0, "send_fail"

    const-string v2, ""

    const-string v3, "1"

    const-string v4, "data null"

    .line 336
    invoke-static {p1, v0, v2, v3, v4}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object p1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v0, "sendData dataInfo null"

    invoke-interface {p1, v0}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;)V

    return-object v1

    .line 340
    :cond_26
    iget-object v0, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_51

    .line 341
    const-class v0, Lcom/taobao/accs/internal/ACCSManagerImpl;

    monitor-enter v0
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_32} :catch_a0

    .line 342
    :try_start_32
    iget v3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->b:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->b:I

    .line 343
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    .line 344
    monitor-exit v0

    goto :goto_51

    :catchall_4e
    move-exception p1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_32 .. :try_end_50} :catchall_4e

    :try_start_50
    throw p1

    .line 347
    :cond_51
    :goto_51
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {v0}, Lcom/taobao/accs/net/b;->i()Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7e

    const-string p1, "accs"

    const-string v0, "send_fail"

    .line 349
    iget-object v2, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string v3, "1"

    const-string v4, "data appkey null"

    invoke-static {p1, v0, v2, v3, v4}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object p1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v0, "sendData appkey null"

    invoke-interface {p1, v0}, Lcom/alibaba/sdk/android/logger/ILog;->err(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p1

    const-string v0, "dataId"

    iget-object v2, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-interface {p1, v0, v2}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p1

    invoke-interface {p1}, Lcom/alibaba/sdk/android/logger/ILog;->done()V

    return-object v1

    .line 353
    :cond_7e
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {v0}, Lcom/taobao/accs/net/b;->a()V

    .line 354
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1, p2}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;)Lcom/taobao/accs/data/Message;

    move-result-object p1

    .line 355
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v0

    if-eqz v0, :cond_9a

    .line 356
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onSend()V

    .line 358
    :cond_9a
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {v0, p1, v2}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V
    :try_end_9f
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_9f} :catch_a0

    goto :goto_d8

    :catch_a0
    move-exception p1

    .line 360
    iget-object v0, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "accs"

    const-string v3, "send_fail"

    const-string v4, "1"

    invoke-static {v2, v3, v0, v4, v1}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v1, "sendData"

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/logger/ILog;->err(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v0

    iget-object v1, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    const-string v2, "dataId"

    invoke-interface {v0, v2, v1}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/logger/ILog;->tr(Ljava/lang/Throwable;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p1

    invoke-interface {p1}, Lcom/alibaba/sdk/android/logger/ILog;->done()V

    .line 363
    :goto_d8
    iget-object p1, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    return-object p1
.end method

.method public sendData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 314
    invoke-virtual/range {v0 .. v6}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public sendData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 320
    invoke-virtual/range {v0 .. v7}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public sendData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/String;
    .registers 17

    .line 325
    new-instance v8, Lcom/taobao/accs/ACCSManager$AccsRequest;

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/taobao/accs/ACCSManager$AccsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    .line 326
    invoke-virtual {p0, p1, v8}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendData(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public sendPushResponse(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)Ljava/lang/String;
    .registers 12

    const/4 v0, 0x0

    if-eqz p1, :cond_16f

    if-nez p2, :cond_7

    goto/16 :goto_16f

    :cond_7
    :try_start_7
    const-string v1, "accs"

    const-string v2, "send_fail"

    const-string v3, "push response total"

    .line 448
    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {v1}, Lcom/taobao/accs/net/b;->i()Ljava/lang/String;

    move-result-object v1

    .line 451
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3d

    const-string p1, "accs"

    const-string p3, "send_fail"

    .line 452
    iget-object v1, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string v2, "1"

    const-string v3, "sendPushResponse appkey null"

    invoke-static {p1, p3, v1, v2, v3}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object p1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Lcom/alibaba/sdk/android/logger/ILog;

    const-string p3, "sendPushResponse appkey null"

    invoke-interface {p1, p3}, Lcom/alibaba/sdk/android/logger/ILog;->err(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p1

    const-string p3, "dataid"

    iget-object v1, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-interface {p1, p3, v1}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p1

    invoke-interface {p1}, Lcom/alibaba/sdk/android/logger/ILog;->done()V

    return-object v0

    .line 456
    :cond_3d
    iget-object v2, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_68

    .line 457
    const-class v2, Lcom/taobao/accs/internal/ACCSManagerImpl;

    monitor-enter v2
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_49} :catch_196

    .line 458
    :try_start_49
    iget v4, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->b:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->b:I

    .line 459
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    .line 460
    monitor-exit v2

    goto :goto_68

    :catchall_65
    move-exception p1

    monitor-exit v2
    :try_end_67
    .catchall {:try_start_49 .. :try_end_67} :catchall_65

    :try_start_67
    throw p1

    :cond_68
    :goto_68
    if-nez p3, :cond_6f

    .line 463
    new-instance p3, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    invoke-direct {p3}, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;-><init>()V

    .line 465
    :cond_6f
    iput-object v0, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->host:Ljava/net/URL;

    .line 468
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p3, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromPackage:Ljava/lang/String;

    .line 471
    iget v2, p3, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->connType:I

    const/4 v4, 0x0

    if-eqz v2, :cond_80

    iget-object v2, p3, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromHost:Ljava/lang/String;

    if-nez v2, :cond_9d

    .line 472
    :cond_80
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->l(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 473
    iput v4, p3, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->connType:I

    .line 475
    iget-object v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v5, "pushresponse use channel"

    invoke-interface {v2, v5}, Lcom/alibaba/sdk/android/logger/ILog;->warn(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v2

    const-string v5, "host"

    iget-object v6, p3, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromHost:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/sdk/android/logger/ILog;->done()V

    move v2, v4

    goto :goto_9e

    :cond_9d
    move v2, v3

    .line 477
    :goto_9e
    iget-object v5, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v6, "sendPushResponse"

    invoke-interface {v5, v6}, Lcom/alibaba/sdk/android/logger/ILog;->info(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v5

    const-string v6, "sendbyInapp"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v5

    const-string v6, "host"

    iget-object v7, p3, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromHost:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v5

    const-string v6, "pkg"

    iget-object v7, p3, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromPackage:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v5

    const-string v6, "dataId"

    iget-object v7, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v5

    invoke-interface {v5}, Lcom/alibaba/sdk/android/logger/ILog;->done()V

    if-eqz v2, :cond_e8

    .line 480
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object p3, p3, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromPackage:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1ce

    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_1ce

    .line 481
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, v3}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendRequest(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;Ljava/lang/String;Z)Ljava/lang/String;

    goto/16 :goto_1ce

    :cond_e8
    const/16 v2, 0x64

    .line 486
    invoke-direct {p0, p1, v2}, Lcom/taobao/accs/internal/ACCSManagerImpl;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_10c

    const-string p3, "accs"

    const-string v1, "send_fail"

    .line 488
    iget-object v3, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string v4, "1"

    const-string v5, "push response intent null"

    invoke-static {p3, v1, v3, v4, v5}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object p3, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    iget-object v1, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-direct {p0, p1, v2, p3, v1}, Lcom/taobao/accs/internal/ACCSManagerImpl;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object p1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Lcom/alibaba/sdk/android/logger/ILog;

    const-string p3, "sendPushResponse app not bind"

    invoke-interface {p1, p3}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;)V

    return-object v0

    .line 493
    :cond_10c
    iget-object p3, p3, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromPackage:Ljava/lang/String;

    sget-object v2, Lcom/taobao/accs/utl/AdapterUtilityImpl;->channelService:Ljava/lang/String;

    invoke-virtual {v3, p3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "send_type"

    .line 494
    sget-object v2, Lcom/taobao/accs/data/Message$ReqType;->REQ:Lcom/taobao/accs/data/Message$ReqType;

    invoke-virtual {v3, p3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p3, "appKey"

    .line 495
    invoke-virtual {v3, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "userInfo"

    .line 496
    iget-object v1, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->userId:Ljava/lang/String;

    invoke-virtual {v3, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "serviceId"

    .line 497
    iget-object v1, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    invoke-virtual {v3, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "data"

    .line 498
    iget-object v1, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->data:[B

    invoke-virtual {v3, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string p3, "dataId"

    .line 499
    iget-object v1, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-virtual {v3, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "configTag"

    .line 500
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->c:Ljava/lang/String;

    invoke-virtual {v3, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    iget-object p3, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->businessId:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_151

    const-string p3, "businessId"

    .line 503
    iget-object v1, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->businessId:Ljava/lang/String;

    invoke-virtual {v3, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    :cond_151
    iget-object p3, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->tag:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_160

    const-string p3, "extTag"

    .line 506
    iget-object v1, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->tag:Ljava/lang/String;

    invoke-virtual {v3, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    :cond_160
    iget-object p3, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->target:Ljava/lang/String;

    if-eqz p3, :cond_16b

    const-string p3, "target"

    .line 509
    iget-object v1, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->target:Ljava/lang/String;

    invoke-virtual {v3, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    :cond_16b
    invoke-static {p1, v3, v4}, Lcom/taobao/accs/dispatch/IntentDispatch;->dispatchIntent(Landroid/content/Context;Landroid/content/Intent;Z)V

    goto :goto_1ce

    .line 444
    :cond_16f
    :goto_16f
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v2, "sendPushResponse input null"

    invoke-interface {v1, v2}, Lcom/alibaba/sdk/android/logger/ILog;->err(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p1

    const-string v1, "extraInfo"

    invoke-interface {p1, v1, p3}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p1

    invoke-interface {p1}, Lcom/alibaba/sdk/android/logger/ILog;->done()V

    const-string p1, "accs"

    const-string p3, "send_fail"

    const-string v1, ""

    const-string v2, "1"

    const-string v3, "sendPushResponse null"

    .line 445
    invoke-static {p1, p3, v1, v2, v3}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_195
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_195} :catch_196

    return-object v0

    :catch_196
    move-exception p1

    .line 516
    iget-object p3, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "push response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "accs"

    const-string v3, "send_fail"

    const-string v4, "1"

    invoke-static {v2, v3, p3, v4, v1}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iget-object p3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v1, "sendPushResponse"

    invoke-interface {p3, v1}, Lcom/alibaba/sdk/android/logger/ILog;->err(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p3

    iget-object p2, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    const-string v1, "dataId"

    invoke-interface {p3, v1, p2}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/alibaba/sdk/android/logger/ILog;->tr(Ljava/lang/Throwable;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p1

    invoke-interface {p1}, Lcom/alibaba/sdk/android/logger/ILog;->done()V

    :cond_1ce
    :goto_1ce
    return-object v0
.end method

.method public sendRequest(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 423
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendRequest(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public sendRequest(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 14

    const/4 v0, 0x0

    if-nez p2, :cond_16

    .line 382
    :try_start_3
    iget-object p1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Lcom/alibaba/sdk/android/logger/ILog;

    const-string p3, "sendRequest request null"

    invoke-interface {p1, p3}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;)V

    const-string p1, "accs"

    const-string p3, "send_fail"

    const-string p4, "1"

    const-string v1, "request null"

    .line 383
    invoke-static {p1, p3, v0, p4, v1}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 386
    :cond_16
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 387
    iget-object p1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Lcom/alibaba/sdk/android/logger/ILog;

    const-string p3, "sendRequest not in mainprocess"

    invoke-interface {p1, p3}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;)V

    return-object v0

    .line 391
    :cond_24
    iget-object v1, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4f

    .line 392
    const-class v1, Lcom/taobao/accs/internal/ACCSManagerImpl;

    monitor-enter v1
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_30} :catch_a6

    .line 393
    :try_start_30
    iget v3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->b:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->b:I

    .line 394
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    .line 395
    monitor-exit v1

    goto :goto_4f

    :catchall_4c
    move-exception p1

    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_30 .. :try_end_4e} :catchall_4c

    :try_start_4e
    throw p1

    .line 398
    :cond_4f
    :goto_4f
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {v1}, Lcom/taobao/accs/net/b;->i()Ljava/lang/String;

    move-result-object v1

    .line 399
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7c

    const-string p1, "accs"

    const-string p3, "send_fail"

    .line 400
    iget-object p4, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string v1, "1"

    const-string v2, "request appkey null"

    invoke-static {p1, p3, p4, v1, v2}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object p1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Lcom/alibaba/sdk/android/logger/ILog;

    const-string p3, "sendRequest appkey null"

    invoke-interface {p1, p3}, Lcom/alibaba/sdk/android/logger/ILog;->err(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p1

    const-string p3, "dataId"

    iget-object p4, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-interface {p1, p3, p4}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p1

    invoke-interface {p1}, Lcom/alibaba/sdk/android/logger/ILog;->done()V

    return-object v0

    .line 404
    :cond_7c
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {v0}, Lcom/taobao/accs/net/b;->a()V

    if-nez p3, :cond_87

    .line 405
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    :cond_87
    move-object v5, p3

    .line 406
    iget-object v3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    const-string v6, "2|"

    move-object v4, p1

    move-object v7, p2

    move v8, p4

    invoke-static/range {v3 .. v8}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;Z)Lcom/taobao/accs/data/Message;

    move-result-object p1

    .line 408
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object p3

    if-eqz p3, :cond_a0

    .line 409
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onSend()V

    .line 411
    :cond_a0
    iget-object p3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {p3, p1, v2}, Lcom/taobao/accs/net/b;->b(Lcom/taobao/accs/data/Message;Z)V
    :try_end_a5
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_a5} :catch_a6

    goto :goto_e0

    :catch_a6
    move-exception p1

    if-eqz p2, :cond_e0

    .line 414
    iget-object p3, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "request "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "accs"

    const-string v1, "send_fail"

    const-string v2, "1"

    invoke-static {v0, v1, p3, v2, p4}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object p3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Lcom/alibaba/sdk/android/logger/ILog;

    const-string p4, "sendRequest"

    invoke-interface {p3, p4}, Lcom/alibaba/sdk/android/logger/ILog;->err(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p3

    iget-object p4, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    const-string v0, "dataId"

    invoke-interface {p3, v0, p4}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p3

    invoke-interface {p3, p1}, Lcom/alibaba/sdk/android/logger/ILog;->tr(Ljava/lang/Throwable;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p1

    invoke-interface {p1}, Lcom/alibaba/sdk/android/logger/ILog;->done()V

    .line 418
    :cond_e0
    :goto_e0
    iget-object p1, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    return-object p1
.end method

.method public sendRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 369
    invoke-virtual/range {v0 .. v7}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public sendRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/String;
    .registers 17

    .line 375
    new-instance v8, Lcom/taobao/accs/ACCSManager$AccsRequest;

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/taobao/accs/ACCSManager$AccsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    .line 376
    invoke-virtual {p0, p1, v8}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendRequest(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setLoginInfo(Landroid/content/Context;Lcom/taobao/accs/ILoginInfo;)V
    .registers 4

    .line 614
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    iget-object v0, v0, Lcom/taobao/accs/net/b;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/accs/client/GlobalClientInfo;->setLoginInfoImpl(Ljava/lang/String;Lcom/taobao/accs/ILoginInfo;)V

    return-void
.end method

.method public setMode(Landroid/content/Context;I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 562
    invoke-static {p1, p2}, Lcom/taobao/accs/ACCSClient;->setEnvironment(Landroid/content/Context;I)V

    return-void
.end method

.method public setProxy(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 6

    const-string v0, "EMAS_ACCS_SDK"

    const/4 v1, 0x0

    .line 579
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 580
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "proxy_host"

    .line 581
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_16
    const-string p2, "proxy_port"

    .line 583
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 584
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public startInAppConnection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V
    .registers 11

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 589
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/accs/internal/ACCSManagerImpl;->startInAppConnection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V

    return-void
.end method

.method public startInAppConnection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V
    .registers 7

    if-eqz p5, :cond_f

    .line 595
    invoke-static {}, Lcom/taobao/accs/client/a;->a()Lcom/taobao/accs/client/a;

    move-result-object p3

    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->c:Ljava/lang/String;

    invoke-static {p5}, Lcom/taobao/accs/utl/c;->a(Lcom/taobao/accs/IAppReceiver;)Lcom/taobao/accs/IAppReceiver;

    move-result-object p5

    invoke-virtual {p3, v0, p5}, Lcom/taobao/accs/client/a;->a(Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V

    .line 597
    :cond_f
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_1d

    .line 598
    iget-object p1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Lcom/alibaba/sdk/android/logger/ILog;

    const-string p2, "inapp only init in main process!"

    invoke-interface {p1, p2}, Lcom/alibaba/sdk/android/logger/ILog;->w(Ljava/lang/String;)V

    return-void

    .line 601
    :cond_1d
    iget-object p3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Lcom/alibaba/sdk/android/logger/ILog;

    const-string p5, "startInAppConnection"

    invoke-interface {p3, p5}, Lcom/alibaba/sdk/android/logger/ILog;->info(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p3

    invoke-interface {p3, p2}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p3

    invoke-interface {p3}, Lcom/alibaba/sdk/android/logger/ILog;->done()V

    .line 602
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_33

    return-void

    .line 604
    :cond_33
    iget-object p3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {p3}, Lcom/taobao/accs/net/b;->i()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4d

    .line 605
    iget-object p3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    iput-object p4, p3, Lcom/taobao/accs/net/b;->a:Ljava/lang/String;

    .line 606
    iput-object p2, p3, Lcom/taobao/accs/net/b;->b:Ljava/lang/String;

    .line 607
    iget-object p3, p3, Lcom/taobao/accs/net/b;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {p3}, Lcom/taobao/accs/AccsClientConfig;->getAppSecret()Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/taobao/accs/utl/UtilityImpl;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 610
    :cond_4d
    iget-object p1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {p1}, Lcom/taobao/accs/net/b;->a()V

    return-void
.end method

.method public unRegisterDataListener(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 726
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/taobao/accs/client/GlobalClientInfo;->unregisterListener(Ljava/lang/String;)V

    return-void
.end method

.method public unRegisterSerivce(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 699
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/taobao/accs/client/GlobalClientInfo;->unRegisterService(Ljava/lang/String;)V

    return-void
.end method

.method public unbindApp(Landroid/content/Context;)V
    .registers 5

    .line 173
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v1, "unbindApp"

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/logger/ILog;->i(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 174
    invoke-direct {p0, p1, v0}, Lcom/taobao/accs/internal/ACCSManagerImpl;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 176
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/taobao/accs/internal/ACCSManagerImpl;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 179
    :cond_13
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 180
    iget-object v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-static {v2, v1}, Lcom/taobao/accs/data/Message;->a(Lcom/taobao/accs/net/b;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;

    move-result-object v1

    const/4 v2, 0x0

    .line 181
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/taobao/accs/internal/ACCSManagerImpl;->a(Landroid/content/Context;Lcom/taobao/accs/data/Message;IZ)V

    :cond_23
    return-void
.end method

.method public unbindService(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    .line 290
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v1, "unbindService"

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/logger/ILog;->info(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v0

    const-string v1, "serviceId"

    invoke-interface {v0, v1, p2}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/sdk/android/logger/ILog;->done()V

    const/4 v0, 0x6

    .line 291
    invoke-direct {p0, p1, v0}, Lcom/taobao/accs/internal/ACCSManagerImpl;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_1d

    const/4 v1, 0x0

    .line 293
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/taobao/accs/internal/ACCSManagerImpl;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 296
    :cond_1d
    iget-object v3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {v3}, Lcom/taobao/accs/net/b;->i()Ljava/lang/String;

    move-result-object v3

    .line 297
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 298
    iget-object p1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Lcom/alibaba/sdk/android/logger/ILog;

    const-string p2, "appKey null"

    invoke-interface {p1, p2}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;)V

    return-void

    :cond_31
    const-string v4, "appKey"

    .line 301
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    invoke-virtual {v2, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4a

    .line 305
    iget-object p2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-static {p2, v2}, Lcom/taobao/accs/data/Message;->c(Lcom/taobao/accs/net/b;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;

    move-result-object p2

    const/4 v1, 0x0

    .line 306
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/taobao/accs/internal/ACCSManagerImpl;->a(Landroid/content/Context;Lcom/taobao/accs/data/Message;IZ)V

    goto :goto_51

    .line 308
    :cond_4a
    iget-object p1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Lcom/alibaba/sdk/android/logger/ILog;

    const-string p2, "unbindService not main process, ignored"

    invoke-interface {p1, p2}, Lcom/alibaba/sdk/android/logger/ILog;->w(Ljava/lang/String;)V

    :goto_51
    return-void
.end method

.method public unbindUser(Landroid/content/Context;)V
    .registers 6

    .line 235
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v1, "unBindUse"

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/logger/ILog;->i(Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 236
    invoke-direct {p0, p1, v0}, Lcom/taobao/accs/internal/ACCSManagerImpl;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 239
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/taobao/accs/internal/ACCSManagerImpl;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 242
    :cond_13
    iget-object v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-virtual {v2}, Lcom/taobao/accs/net/b;->i()Ljava/lang/String;

    move-result-object v2

    .line 243
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 244
    iget-object p1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v0, "appKey null"

    invoke-interface {p1, v0}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;)V

    return-void

    :cond_27
    const-string v3, "appKey"

    .line 247
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 250
    iget-object v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    invoke-static {v2, v1}, Lcom/taobao/accs/data/Message;->e(Lcom/taobao/accs/net/b;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;

    move-result-object v1

    const/4 v2, 0x0

    .line 251
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/taobao/accs/internal/ACCSManagerImpl;->a(Landroid/content/Context;Lcom/taobao/accs/data/Message;IZ)V

    goto :goto_44

    .line 253
    :cond_3d
    iget-object p1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->d:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v0, "unBindUser not main process, ignored"

    invoke-interface {p1, v0}, Lcom/alibaba/sdk/android/logger/ILog;->w(Ljava/lang/String;)V

    :goto_44
    return-void
.end method

.method public updateConfig(Lcom/taobao/accs/AccsClientConfig;)V
    .registers 4

    .line 736
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->a:Lcom/taobao/accs/net/b;

    instance-of v1, v0, Lcom/taobao/accs/net/j;

    if-eqz v1, :cond_b

    .line 737
    check-cast v0, Lcom/taobao/accs/net/j;

    invoke-virtual {v0, p1}, Lcom/taobao/accs/net/j;->a(Lcom/taobao/accs/AccsClientConfig;)V

    :cond_b
    return-void
.end method
