.class public final Lcom/huawei/updatesdk/b/b/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final d:Ljava/lang/Object;

.field private static e:Lcom/huawei/updatesdk/b/b/a;


# instance fields
.field private a:Lcom/huawei/updatesdk/b/b/b;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/updatesdk/b/b/a;->d:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/updatesdk/b/b/a;->c:Z

    const-string v0, "DeviceSessionUpdateSDK_V1"

    invoke-static {v0, p1}, Lcom/huawei/updatesdk/b/b/b;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/huawei/updatesdk/b/b/b;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/updatesdk/b/b/a;->a:Lcom/huawei/updatesdk/b/b/b;

    return-void
.end method

.method public static d()Lcom/huawei/updatesdk/b/b/a;
    .registers 3

    sget-object v0, Lcom/huawei/updatesdk/b/b/a;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/huawei/updatesdk/b/b/a;->e:Lcom/huawei/updatesdk/b/b/a;

    if-nez v1, :cond_16

    new-instance v1, Lcom/huawei/updatesdk/b/b/a;

    invoke-static {}, Lcom/huawei/updatesdk/a/b/a/a;->c()Lcom/huawei/updatesdk/a/b/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/updatesdk/a/b/a/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/huawei/updatesdk/b/b/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/huawei/updatesdk/b/b/a;->e:Lcom/huawei/updatesdk/b/b/a;

    :cond_16
    sget-object v1, Lcom/huawei/updatesdk/b/b/a;->e:Lcom/huawei/updatesdk/b/b/a;

    monitor-exit v0

    return-object v1

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huawei/updatesdk/b/b/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/huawei/updatesdk/b/b/a;->a:Lcom/huawei/updatesdk/b/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatesdk.lastAccountZone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/huawei/updatesdk/b/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(J)V
    .registers 5

    iget-object v0, p0, Lcom/huawei/updatesdk/b/b/a;->a:Lcom/huawei/updatesdk/b/b/b;

    const-string v1, "updatesdk.lastCheckDate"

    invoke-virtual {v0, v1, p1, p2}, Lcom/huawei/updatesdk/b/b/b;->b(Ljava/lang/String;J)V

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .registers 7

    iget-object v0, p0, Lcom/huawei/updatesdk/b/b/a;->a:Lcom/huawei/updatesdk/b/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatesdk.lastInitAccountTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/huawei/updatesdk/b/b/b;->b(Ljava/lang/String;J)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/huawei/updatesdk/b/b/a;->a:Lcom/huawei/updatesdk/b/b/b;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/updatesdk/b/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()J
    .registers 5

    iget-object v0, p0, Lcom/huawei/updatesdk/b/b/a;->a:Lcom/huawei/updatesdk/b/b/b;

    const-string v1, "updatesdk.lastCheckDate"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/updatesdk/b/b/b;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Ljava/lang/String;)J
    .registers 5

    iget-object v0, p0, Lcom/huawei/updatesdk/b/b/a;->a:Lcom/huawei/updatesdk/b/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatesdk.lastInitAccountTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/huawei/updatesdk/b/b/b;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/huawei/updatesdk/b/b/a;->a:Lcom/huawei/updatesdk/b/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatesdk.lastAccountZone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/huawei/updatesdk/b/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    :cond_9
    iget-object v0, p0, Lcom/huawei/updatesdk/b/b/a;->a:Lcom/huawei/updatesdk/b/b/b;

    invoke-virtual {v0, p1, v1}, Lcom/huawei/updatesdk/b/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .registers 2

    iget-boolean v0, p0, Lcom/huawei/updatesdk/b/b/a;->c:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const-string v0, "updatesdk.sign.param"

    invoke-virtual {p0, v0}, Lcom/huawei/updatesdk/b/b/a;->d(Ljava/lang/String;)V

    const-string v0, "updatesdk.signkey"

    invoke-virtual {p0, v0}, Lcom/huawei/updatesdk/b/b/a;->d(Ljava/lang/String;)V

    const-string v0, "updatesdk.signtime"

    invoke-virtual {p0, v0}, Lcom/huawei/updatesdk/b/b/a;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/updatesdk/b/b/a;->c:Z

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/huawei/updatesdk/b/b/a;->a:Lcom/huawei/updatesdk/b/b/b;

    invoke-virtual {v0, p1}, Lcom/huawei/updatesdk/b/b/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/huawei/updatesdk/b/b/a;->b:Ljava/lang/String;

    return-void
.end method
