.class Lcom/huawei/hms/api/a;
.super Ljava/lang/Object;
.source "BindingFailedResolveMgr.java"


# static fields
.field static final b:Lcom/huawei/hms/api/a;

.field private static final c:Ljava/lang/Object;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/huawei/hms/api/a;

    invoke-direct {v0}, Lcom/huawei/hms/api/a;-><init>()V

    sput-object v0, Lcom/huawei/hms/api/a;->b:Lcom/huawei/hms/api/a;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/hms/api/a;->c:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/hms/api/a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method a(Landroid/app/Activity;)V
    .registers 6

    .line 1
    sget-object v0, Lcom/huawei/hms/api/a;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lcom/huawei/hms/api/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    if-eqz v2, :cond_9

    if-eq v2, p1, :cond_9

    .line 6
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_9

    .line 7
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_9

    .line 10
    :cond_23
    iget-object v1, p0, Lcom/huawei/hms/api/a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method b(Landroid/app/Activity;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/huawei/hms/api/a;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lcom/huawei/hms/api/a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method
