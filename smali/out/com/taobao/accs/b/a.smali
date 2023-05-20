.class public Lcom/taobao/accs/b/a;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static a:Lcom/taobao/accs/b/a;


# instance fields
.field private b:Ljava/lang/ClassLoader;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/taobao/accs/b/a;->b:Ljava/lang/ClassLoader;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/taobao/accs/b/a;->c:Z

    return-void
.end method

.method public static declared-synchronized a()Lcom/taobao/accs/b/a;
    .registers 2

    const-class v0, Lcom/taobao/accs/b/a;

    monitor-enter v0

    .line 27
    :try_start_3
    sget-object v1, Lcom/taobao/accs/b/a;->a:Lcom/taobao/accs/b/a;

    if-nez v1, :cond_e

    .line 28
    new-instance v1, Lcom/taobao/accs/b/a;

    invoke-direct {v1}, Lcom/taobao/accs/b/a;-><init>()V

    sput-object v1, Lcom/taobao/accs/b/a;->a:Lcom/taobao/accs/b/a;

    .line 30
    :cond_e
    sget-object v1, Lcom/taobao/accs/b/a;->a:Lcom/taobao/accs/b/a;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized b()Ljava/lang/ClassLoader;
    .registers 4

    monitor-enter p0

    .line 71
    :try_start_1
    iget-object v0, p0, Lcom/taobao/accs/b/a;->b:Ljava/lang/ClassLoader;

    if-nez v0, :cond_17

    const-string v0, "ACCSClassLoader"

    const-string v1, "getClassLoader"

    const/4 v2, 0x0

    .line 72
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    const-class v0, Lcom/taobao/accs/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/b/a;->b:Ljava/lang/ClassLoader;

    .line 75
    :cond_17
    iget-object v0, p0, Lcom/taobao/accs/b/a;->b:Ljava/lang/ClassLoader;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-object v0

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
