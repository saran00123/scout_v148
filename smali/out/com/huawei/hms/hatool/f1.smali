.class public final Lcom/huawei/hms/hatool/f1;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static b:Lcom/huawei/hms/hatool/f1;

.field public static final c:Ljava/lang/Object;


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const-string v0, "ABTesting"

    const-string v1, "_default_config_tag"

    const-string v2, "_openness_config_tag"

    const-string v3, "_hms_config_tag"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/hms/hatool/f1;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/huawei/hms/hatool/f1;
    .registers 1

    sget-object v0, Lcom/huawei/hms/hatool/f1;->b:Lcom/huawei/hms/hatool/f1;

    if-nez v0, :cond_7

    invoke-static {}, Lcom/huawei/hms/hatool/f1;->b()V

    :cond_7
    sget-object v0, Lcom/huawei/hms/hatool/f1;->b:Lcom/huawei/hms/hatool/f1;

    return-object v0
.end method

.method public static declared-synchronized b()V
    .registers 2

    const-class v0, Lcom/huawei/hms/hatool/f1;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/huawei/hms/hatool/f1;->b:Lcom/huawei/hms/hatool/f1;

    if-nez v1, :cond_e

    new-instance v1, Lcom/huawei/hms/hatool/f1;

    invoke-direct {v1}, Lcom/huawei/hms/hatool/f1;-><init>()V

    sput-object v1, Lcom/huawei/hms/hatool/f1;->b:Lcom/huawei/hms/hatool/f1;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 4

    sget-object v0, Lcom/huawei/hms/hatool/f1;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/huawei/hms/hatool/f1;->a:Landroid/content/Context;

    if-eqz v1, :cond_10

    const-string p1, "hmsSdk"

    const-string v1, "DataManager already initialized."

    invoke-static {p1, v1}, Lcom/huawei/hms/hatool/y;->f(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_10
    iput-object p1, p0, Lcom/huawei/hms/hatool/f1;->a:Landroid/content/Context;

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_37

    invoke-static {}, Lcom/huawei/hms/hatool/i;->c()Lcom/huawei/hms/hatool/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/hatool/i;->b()Lcom/huawei/hms/hatool/l;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/hatool/f1;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/hatool/l;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/huawei/hms/hatool/i;->c()Lcom/huawei/hms/hatool/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/hatool/i;->b()Lcom/huawei/hms/hatool/l;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/hatool/l;->g(Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hms/hatool/x0;->a()Lcom/huawei/hms/hatool/x0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/hms/hatool/x0;->a(Landroid/content/Context;)V

    return-void

    :catchall_37
    move-exception p1

    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    const-string v0, "hmsSdk"

    const-string v1, "HiAnalyticsDataManager.setAppid(String appid) is execute."

    invoke-static {v0, v1}, Lcom/huawei/hms/hatool/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/hms/hatool/f1;->a:Landroid/content/Context;

    if-nez v1, :cond_11

    const-string p1, "sdk is not init"

    invoke-static {v0, p1}, Lcom/huawei/hms/hatool/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appID"

    const-string v2, "[a-zA-Z0-9_][a-zA-Z0-9. _-]{0,255}"

    invoke-static {v1, p1, v2, v0}, Lcom/huawei/hms/hatool/q0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/huawei/hms/hatool/i;->c()Lcom/huawei/hms/hatool/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/hatool/i;->b()Lcom/huawei/hms/hatool/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/hms/hatool/l;->f(Ljava/lang/String;)V

    return-void
.end method
