.class public Lcom/alibaba/sdk/android/push/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/push/CloudPushService;


# static fields
.field static a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

.field private static b:Lcom/alibaba/sdk/android/push/b/b;


# instance fields
.field private c:Lcom/alibaba/sdk/android/push/b/a;

.field private d:Landroid/content/Context;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/alibaba/sdk/android/push/b/b;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/push/b/b;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/push/b/b;->b:Lcom/alibaba/sdk/android/push/b/b;

    const-string v0, "MPS:CloudPushService"

    invoke-static {v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->getLogger(Ljava/lang/String;)Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/push/b/b;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/push/b/b;)Lcom/alibaba/sdk/android/push/b/a;
    .registers 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/push/b/b;->c:Lcom/alibaba/sdk/android/push/b/a;

    return-object p0
.end method

.method public static a()Lcom/alibaba/sdk/android/push/b/b;
    .registers 1

    sget-object v0, Lcom/alibaba/sdk/android/push/b/b;->b:Lcom/alibaba/sdk/android/push/b/b;

    return-object v0
.end method

.method private declared-synchronized a(Landroid/content/Context;Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/alibaba/sdk/android/push/g/a;->a()Lcom/alibaba/sdk/android/push/g/a;

    move-result-object v0

    new-instance v1, Lcom/alibaba/sdk/android/push/b/b$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/alibaba/sdk/android/push/b/b$2;-><init>(Lcom/alibaba/sdk/android/push/b/b;Lcom/alibaba/sdk/android/push/CommonCallback;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/push/g/a;->a(Lcom/alibaba/sdk/android/push/CommonCallback;)V

    invoke-static {p1}, Lcom/alibaba/sdk/android/push/d/a;->a(Landroid/content/Context;)Lcom/alibaba/sdk/android/push/d/a;

    move-result-object p2

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/b/c;->a()Lcom/alibaba/sdk/android/ams/common/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/sdk/android/ams/common/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alibaba/sdk/android/push/d/a;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/b/b;->b()V

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/b/c;->a()Lcom/alibaba/sdk/android/ams/common/b/b;

    move-result-object p2

    invoke-interface {p2}, Lcom/alibaba/sdk/android/ams/common/b/b;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/b/c;->a()Lcom/alibaba/sdk/android/ams/common/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/sdk/android/ams/common/b/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/sdk/android/push/b/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_34

    monitor-exit p0

    return-void

    :catchall_34
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/alibaba/sdk/android/push/a/a;->a()Lcom/alibaba/sdk/android/push/a/a;

    move-result-object v0

    const-string v1, "3.7.2"

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/alibaba/sdk/android/push/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/sdk/android/push/a/a;->a()Lcom/alibaba/sdk/android/push/a/a;

    move-result-object p1

    new-instance p2, Lcom/alibaba/sdk/android/push/b/b$3;

    invoke-direct {p2, p0}, Lcom/alibaba/sdk/android/push/b/b$3;-><init>(Lcom/alibaba/sdk/android/push/b/b;)V

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/push/a/a;->a(Lcom/alibaba/sdk/android/push/a/b;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-void

    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/push/b/b;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/push/b/b;->e:Z

    return p1
.end method

.method private b()V
    .registers 3

    new-instance v0, Lcom/alibaba/sdk/android/sender/SdkInfo;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/sender/SdkInfo;-><init>()V

    const-string v1, "push"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/sender/SdkInfo;->setSdkId(Ljava/lang/String;)Lcom/alibaba/sdk/android/sender/SdkInfo;

    const-string v1, "3.7.2"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/sender/SdkInfo;->setSdkVersion(Ljava/lang/String;)Lcom/alibaba/sdk/android/sender/SdkInfo;

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/b/c;->a()Lcom/alibaba/sdk/android/ams/common/b/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/sdk/android/ams/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/sender/SdkInfo;->setAppKey(Ljava/lang/String;)Lcom/alibaba/sdk/android/sender/SdkInfo;

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/a/a;->b()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/a/a;->b()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/sender/AlicloudSender;->asyncSend(Landroid/app/Application;Lcom/alibaba/sdk/android/sender/SdkInfo;)V

    goto :goto_2f

    :cond_28
    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/a/a;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/sender/AlicloudSender;->asyncSend(Landroid/content/Context;Lcom/alibaba/sdk/android/sender/SdkInfo;)V

    :goto_2f
    return-void
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b;->c:Lcom/alibaba/sdk/android/push/b/a;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b;->d:Landroid/content/Context;

    if-eqz v0, :cond_f

    new-instance v1, Lcom/alibaba/sdk/android/push/b/a;

    invoke-direct {v1, v0}, Lcom/alibaba/sdk/android/push/b/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/sdk/android/push/b/b;->c:Lcom/alibaba/sdk/android/push/b/a;

    :cond_f
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 9

    sget-object v0, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v1, "[AMS]Initialize Mobile Push service..."

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->i(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/b/b;->d:Landroid/content/Context;

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b;->c:Lcom/alibaba/sdk/android/push/b/a;

    if-nez v0, :cond_14

    new-instance v0, Lcom/alibaba/sdk/android/push/b/a;

    invoke-direct {v0, p1}, Lcom/alibaba/sdk/android/push/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/push/b/b;->c:Lcom/alibaba/sdk/android/push/b/a;

    :cond_14
    const/16 v4, 0xa

    const/4 v5, 0x5

    new-instance v6, Lcom/alibaba/sdk/android/push/b/b$1;

    invoke-direct {v6, p0}, Lcom/alibaba/sdk/android/push/b/b$1;-><init>(Lcom/alibaba/sdk/android/push/b/b;)V

    const-string v2, "push"

    const-string v3, "3.7.2"

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/alibaba/sdk/android/crashdefend/CrashDefendApi;->registerCrashDefendSdk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/alibaba/sdk/android/crashdefend/CrashDefendCallback;)V

    return-void
.end method

.method public addAlias(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 4

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/push/b/b;->e:Z

    if-nez v0, :cond_21

    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v0, "push disabled"

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_20

    sget-object p1, Lcom/alibaba/sdk/android/push/common/a/e;->h:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/e;->h:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/common/a/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    return-void

    :cond_21
    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/b/b;->c()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b;->c:Lcom/alibaba/sdk/android/push/b/a;

    if-nez v0, :cond_30

    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string p2, "cloudpush service helper null"

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_30
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/push/b/a;->b(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    return-void
.end method

.method public bindAccount(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 4

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/push/b/b;->e:Z

    if-nez v0, :cond_21

    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v0, "push disabled"

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_20

    sget-object p1, Lcom/alibaba/sdk/android/push/common/a/e;->h:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/e;->h:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/common/a/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    return-void

    :cond_21
    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/b/b;->c()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b;->c:Lcom/alibaba/sdk/android/push/b/a;

    if-nez v0, :cond_30

    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string p2, "cloudpush service helper null"

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_30
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/push/b/a;->a(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    return-void
.end method

.method public bindPhoneNumber(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 4

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/push/b/b;->e:Z

    if-nez v0, :cond_21

    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v0, "push disabled"

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_20

    sget-object p1, Lcom/alibaba/sdk/android/push/common/a/e;->h:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/e;->h:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/common/a/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    return-void

    :cond_21
    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/b/b;->c()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b;->c:Lcom/alibaba/sdk/android/push/b/a;

    if-nez v0, :cond_30

    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string p2, "cloudpush service helper null"

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_30
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/push/b/a;->d(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    return-void
.end method

.method public bindTag(I[Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 6

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/push/b/b;->e:Z

    if-nez v0, :cond_21

    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string p2, "push disabled"

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    if-eqz p4, :cond_20

    sget-object p1, Lcom/alibaba/sdk/android/push/common/a/e;->h:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/alibaba/sdk/android/push/common/a/e;->h:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/common/a/e;->b()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, p1, p2}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    return-void

    :cond_21
    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/b/b;->c()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b;->c:Lcom/alibaba/sdk/android/push/b/a;

    if-nez v0, :cond_30

    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string p2, "cloudpush service helper null"

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_30
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alibaba/sdk/android/push/b/a;->a(I[Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    return-void
.end method

.method public checkPushChannelStatus(Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 4

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/push/b/b;->e:Z

    if-nez v0, :cond_21

    sget-object v0, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v1, "push disabled"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    if-eqz p1, :cond_20

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/e;->h:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/e;->h:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/push/common/a/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    return-void

    :cond_21
    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/b/b;->c()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b;->c:Lcom/alibaba/sdk/android/push/b/a;

    if-nez v0, :cond_30

    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v0, "cloudpush service helper null"

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_30
    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/push/b/a;->f(Lcom/alibaba/sdk/android/push/CommonCallback;)V

    return-void
.end method

.method public clearNotifications()V
    .registers 3

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/push/b/b;->e:Z

    if-nez v0, :cond_c

    sget-object v0, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v1, "push disabled"

    :goto_8
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/b/b;->c()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b;->c:Lcom/alibaba/sdk/android/push/b/a;

    if-nez v0, :cond_18

    sget-object v0, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v1, "cloudpush service helper null"

    goto :goto_8

    :cond_18
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/b/a;->b()V

    return-void
.end method

.method public clickMessage(Lcom/alibaba/sdk/android/push/notification/CPushMessage;)V
    .registers 3

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/push/b/b;->e:Z

    if-nez v0, :cond_c

    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v0, "push disabled"

    :goto_8
    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/b/b;->c()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b;->c:Lcom/alibaba/sdk/android/push/b/a;

    if-nez v0, :cond_18

    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v0, "cloudpush service helper null"

    goto :goto_8

    :cond_18
    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/push/b/a;->a(Lcom/alibaba/sdk/android/push/notification/CPushMessage;)V

    return-void
.end method

.method public closeDoNotDisturbMode()V
    .registers 3

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/push/b/b;->e:Z

    if-nez v0, :cond_c

    sget-object v0, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v1, "push disabled"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/b/b;->c()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b;->c:Lcom/alibaba/sdk/android/push/b/a;

    if-nez v0, :cond_1b

    sget-object v0, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v1, "cloudpush service helper null"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_1b
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/push/b/a;->a(Z)V

    return-void
.end method

.method public dismissMessage(Lcom/alibaba/sdk/android/push/notification/CPushMessage;)V
    .registers 3

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/push/b/b;->e:Z

    if-nez v0, :cond_c

    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v0, "push disabled"

    :goto_8
    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/b/b;->c()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b;->c:Lcom/alibaba/sdk/android/push/b/a;

    if-nez v0, :cond_18

    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v0, "cloudpush service helper null"

    goto :goto_8

    :cond_18
    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/push/b/a;->b(Lcom/alibaba/sdk/android/push/notification/CPushMessage;)V

    return-void
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 4

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/push/b/b;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_d

    sget-object v0, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v2, "push disabled"

    :goto_9
    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    return-object v1

    :cond_d
    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/b/b;->c()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b;->c:Lcom/alibaba/sdk/android/push/b/a;

    if-nez v0, :cond_19

    sget-object v0, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v2, "cloudpush service helper null"

    goto :goto_9

    :cond_19
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/b/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUTDeviceId()Ljava/lang/String;
    .registers 4

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/push/b/b;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_d

    sget-object v0, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v2, "push disabled"

    :goto_9
    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    return-object v1

    :cond_d
    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/b/b;->c()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b;->c:Lcom/alibaba/sdk/android/push/b/a;

    if-nez v0, :cond_19

    sget-object v0, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v2, "cloudpush service helper null"

    goto :goto_9

    :cond_19
    iget-object v1, p0, Lcom/alibaba/sdk/android/push/b/b;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/push/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public listAliases(Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 4

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/push/b/b;->e:Z

    if-nez v0, :cond_21

    sget-object v0, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v1, "push disabled"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    if-eqz p1, :cond_20

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/e;->h:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/e;->h:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/push/common/a/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    return-void

    :cond_21
    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/b/b;->c()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b;->c:Lcom/alibaba/sdk/android/push/b/a;

    if-nez v0, :cond_30

    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v0, "cloudpush service helper null"

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_30
    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/push/b/a;->b(Lcom/alibaba/sdk/android/push/CommonCallback;)V

    return-void
.end method

.method public listTags(ILcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 4

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/push/b/b;->e:Z

    if-nez v0, :cond_21

    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v0, "push disabled"

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_20

    sget-object p1, Lcom/alibaba/sdk/android/push/common/a/e;->h:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/e;->h:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/common/a/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    return-void

    :cond_21
    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/b/b;->c()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b;->c:Lcom/alibaba/sdk/android/push/b/a;

    if-nez v0, :cond_30

    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string p2, "cloudpush service helper null"

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_30
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/push/b/a;->a(ILcom/alibaba/sdk/android/push/CommonCallback;)V

    return-void
.end method

.method public onAppStart()V
    .registers 1

    return-void
.end method

.method public declared-synchronized register(Landroid/content/Context;Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 4

    monitor-enter p0

    if-nez p1, :cond_c

    :try_start_3
    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string p2, "context null"

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_45

    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b;->c:Lcom/alibaba/sdk/android/push/b/a;

    if-nez v0, :cond_17

    new-instance v0, Lcom/alibaba/sdk/android/push/b/a;

    invoke-direct {v0, p1}, Lcom/alibaba/sdk/android/push/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/push/b/b;->c:Lcom/alibaba/sdk/android/push/b/a;

    :cond_17
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/push/b/b;->e:Z

    if-nez v0, :cond_39

    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v0, "push disabled"

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_37

    sget-object p1, Lcom/alibaba/sdk/android/push/common/a/e;->h:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/e;->h:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/common/a/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_c .. :try_end_37} :catchall_45

    :cond_37
    monitor-exit p0

    return-void

    :cond_39
    const/4 v0, 0x0

    :try_start_3a
    invoke-static {v0}, Lanet/channel/util/ALog;->setUseTlog(Z)V

    invoke-static {}, Lcom/taobao/accs/ACCSClient;->changeNetworkSdkLoggerToAccs()V

    invoke-direct {p0, p1, p2}, Lcom/alibaba/sdk/android/push/b/b;->a(Landroid/content/Context;Lcom/alibaba/sdk/android/push/CommonCallback;)V
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_45

    monitor-exit p0

    return-void

    :catchall_45
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 5

    if-eqz p4, :cond_b

    const-string/jumbo p1, "\u63a5\u53e3\u5e9f\u5f03"

    const-string/jumbo p2, "\u8bf7\u4f7f\u7528PushServiceFactory.init(Context appContext, String appKey, String appSecret)\u52a8\u6001\u8bbe\u7f6eappKey appSecret"

    invoke-interface {p4, p1, p2}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public removeAlias(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 4

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/push/b/b;->e:Z

    if-nez v0, :cond_21

    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v0, "push disabled"

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_20

    sget-object p1, Lcom/alibaba/sdk/android/push/common/a/e;->h:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/e;->h:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/common/a/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    return-void

    :cond_21
    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/b/b;->c()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b;->c:Lcom/alibaba/sdk/android/push/b/a;

    if-nez v0, :cond_30

    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string p2, "cloudpush service helper null"

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_30
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/push/b/a;->c(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    return-void
.end method

.method public setAppSecret(Ljava/lang/String;)V
    .registers 3

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/push/b/b;->e:Z

    if-nez v0, :cond_c

    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v0, "push disabled"

    :goto_8
    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/b/b;->c()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b;->c:Lcom/alibaba/sdk/android/push/b/a;

    if-nez v0, :cond_18

    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v0, "cloudpush service helper null"

    goto :goto_8

    :cond_18
    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/push/b/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public setAppkey(Ljava/lang/String;)V
    .registers 3

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/push/b/b;->e:Z

    if-nez v0, :cond_c

    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v0, "push disabled"

    :goto_8
    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/b/b;->c()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b;->c:Lcom/alibaba/sdk/android/push/b/a;

    if-nez v0, :cond_18

    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v0, "cloudpush service helper null"

    goto :goto_8

    :cond_18
    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/push/b/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public setDebug(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/push/b/b;->e:Z

    if-nez v0, :cond_c

    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v0, "push disabled"

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b;->c:Lcom/alibaba/sdk/android/push/b/a;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/push/b/a;->b(Z)V

    return-void
.end method

.method public setDoNotDisturb(IIIILcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 12

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/push/b/b;->e:Z

    if-nez v0, :cond_21

    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string p2, "push disabled"

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    if-eqz p5, :cond_20

    sget-object p1, Lcom/alibaba/sdk/android/push/common/a/e;->h:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/alibaba/sdk/android/push/common/a/e;->h:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/common/a/e;->b()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p5, p1, p2}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    return-void

    :cond_21
    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/b/b;->c()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b;->c:Lcom/alibaba/sdk/android/push/b/a;

    if-nez v0, :cond_30

    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string p2, "cloudpush service helper null"

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_30
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/sdk/android/push/b/a;->a(IIIILcom/alibaba/sdk/android/push/CommonCallback;)V

    return-void
.end method

.method public setLogLevel(I)V
    .registers 5

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/push/b/b;->e:Z

    if-nez v0, :cond_c

    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v0, "push disabled"

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_c
    sput p1, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->log_level:I

    const/4 v0, 0x0

    invoke-static {v0}, Lanet/channel/util/ALog;->setUseTlog(Z)V

    invoke-static {}, Lcom/taobao/accs/ACCSClient;->changeNetworkSdkLoggerToAccs()V

    const/4 v1, -0x1

    if-ne p1, v1, :cond_20

    invoke-static {v0}, Lcom/taobao/accs/utl/AccsLogger;->enable(Z)V

    const/4 p1, 0x5

    :goto_1c
    invoke-static {p1}, Lanet/channel/util/ALog;->setLevel(I)V

    goto :goto_48

    :cond_20
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_28

    if-eq p1, v1, :cond_28

    if-ne p1, v2, :cond_48

    :cond_28
    invoke-static {v2}, Lcom/taobao/accs/utl/AccsLogger;->enable(Z)V

    if-eqz p1, :cond_41

    if-eq p1, v2, :cond_38

    sget-object p1, Lcom/alibaba/sdk/android/logger/LogLevel;->DEBUG:Lcom/alibaba/sdk/android/logger/LogLevel;

    invoke-static {p1}, Lcom/taobao/accs/utl/AccsLogger;->setLevel(Lcom/alibaba/sdk/android/logger/LogLevel;)V

    invoke-static {v0}, Lanet/channel/util/ALog;->setLevel(I)V

    goto :goto_48

    :cond_38
    sget-object p1, Lcom/alibaba/sdk/android/logger/LogLevel;->INFO:Lcom/alibaba/sdk/android/logger/LogLevel;

    invoke-static {p1}, Lcom/taobao/accs/utl/AccsLogger;->setLevel(Lcom/alibaba/sdk/android/logger/LogLevel;)V

    invoke-static {v1}, Lanet/channel/util/ALog;->setLevel(I)V

    goto :goto_48

    :cond_41
    sget-object p1, Lcom/alibaba/sdk/android/logger/LogLevel;->WARN:Lcom/alibaba/sdk/android/logger/LogLevel;

    invoke-static {p1}, Lcom/taobao/accs/utl/AccsLogger;->setLevel(Lcom/alibaba/sdk/android/logger/LogLevel;)V

    const/4 p1, 0x3

    goto :goto_1c

    :cond_48
    :goto_48
    return-void
.end method

.method public setNotificationLargeIcon(Landroid/graphics/Bitmap;)V
    .registers 3

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/push/b/b;->e:Z

    if-nez v0, :cond_c

    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v0, "push disabled"

    :goto_8
    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/b/b;->c()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b;->c:Lcom/alibaba/sdk/android/push/b/a;

    if-nez v0, :cond_18

    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v0, "cloudpush service helper null"

    goto :goto_8

    :cond_18
    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/push/b/a;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setNotificationSmallIcon(I)V
    .registers 3

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/push/b/b;->e:Z

    if-nez v0, :cond_c

    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v0, "push disabled"

    :goto_8
    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/b/b;->c()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b;->c:Lcom/alibaba/sdk/android/push/b/a;

    if-nez v0, :cond_18

    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v0, "cloudpush service helper null"

    goto :goto_8

    :cond_18
    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/push/b/a;->a(I)V

    return-void
.end method

.method public setNotificationSoundFilePath(Ljava/lang/String;)V
    .registers 3

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/push/b/b;->e:Z

    if-nez v0, :cond_c

    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v0, "push disabled"

    :goto_8
    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/b/b;->c()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b;->c:Lcom/alibaba/sdk/android/push/b/a;

    if-nez v0, :cond_18

    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v0, "cloudpush service helper null"

    goto :goto_8

    :cond_18
    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/push/b/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setPushIntentService(Ljava/lang/Class;)V
    .registers 3

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/push/b/b;->e:Z

    if-nez v0, :cond_c

    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v0, "push disabled"

    :goto_8
    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/b/b;->c()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b;->c:Lcom/alibaba/sdk/android/push/b/a;

    if-nez v0, :cond_18

    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v0, "cloudpush service helper null"

    goto :goto_8

    :cond_18
    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/push/b/a;->a(Ljava/lang/Class;)V

    return-void
.end method

.method public turnOffPushChannel(Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 4

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/push/b/b;->e:Z

    if-nez v0, :cond_21

    sget-object v0, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v1, "push disabled"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    if-eqz p1, :cond_20

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/e;->h:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/e;->h:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/push/common/a/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    return-void

    :cond_21
    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/b/b;->c()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b;->c:Lcom/alibaba/sdk/android/push/b/a;

    if-nez v0, :cond_30

    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v0, "cloudpush service helper null"

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_30
    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/push/b/a;->d(Lcom/alibaba/sdk/android/push/CommonCallback;)V

    return-void
.end method

.method public turnOnPushChannel(Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 4

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/push/b/b;->e:Z

    if-nez v0, :cond_21

    sget-object v0, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v1, "push disabled"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    if-eqz p1, :cond_20

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/e;->h:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/e;->h:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/push/common/a/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    return-void

    :cond_21
    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/b/b;->c()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b;->c:Lcom/alibaba/sdk/android/push/b/a;

    if-nez v0, :cond_30

    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v0, "cloudpush service helper null"

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_30
    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/push/b/a;->e(Lcom/alibaba/sdk/android/push/CommonCallback;)V

    return-void
.end method

.method public unbindAccount(Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 4

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/push/b/b;->e:Z

    if-nez v0, :cond_21

    sget-object v0, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v1, "push disabled"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    if-eqz p1, :cond_20

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/e;->h:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/e;->h:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/push/common/a/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    return-void

    :cond_21
    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/b/b;->c()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b;->c:Lcom/alibaba/sdk/android/push/b/a;

    if-nez v0, :cond_30

    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v0, "cloudpush service helper null"

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_30
    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/push/b/a;->a(Lcom/alibaba/sdk/android/push/CommonCallback;)V

    return-void
.end method

.method public unbindPhoneNumber(Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 4

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/push/b/b;->e:Z

    if-nez v0, :cond_21

    sget-object v0, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v1, "push disabled"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    if-eqz p1, :cond_20

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/e;->h:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/e;->h:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/push/common/a/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    return-void

    :cond_21
    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/b/b;->c()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b;->c:Lcom/alibaba/sdk/android/push/b/a;

    if-nez v0, :cond_30

    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v0, "cloudpush service helper null"

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_30
    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/push/b/a;->c(Lcom/alibaba/sdk/android/push/CommonCallback;)V

    return-void
.end method

.method public unbindTag(I[Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 6

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/push/b/b;->e:Z

    if-nez v0, :cond_21

    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string p2, "push disabled"

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    if-eqz p4, :cond_20

    sget-object p1, Lcom/alibaba/sdk/android/push/common/a/e;->h:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/alibaba/sdk/android/push/common/a/e;->h:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/common/a/e;->b()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, p1, p2}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    return-void

    :cond_21
    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/b/b;->c()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/b/b;->c:Lcom/alibaba/sdk/android/push/b/a;

    if-nez v0, :cond_30

    sget-object p1, Lcom/alibaba/sdk/android/push/b/b;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string p2, "cloudpush service helper null"

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_30
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alibaba/sdk/android/push/b/a;->b(I[Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    return-void
.end method
