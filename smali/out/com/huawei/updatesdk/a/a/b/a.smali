.class public final Lcom/huawei/updatesdk/a/a/b/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final b:Lcom/huawei/updatesdk/a/a/b/a;


# instance fields
.field private final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/huawei/updatesdk/a/a/b/a;

    invoke-direct {v0}, Lcom/huawei/updatesdk/a/a/b/a;-><init>()V

    sput-object v0, Lcom/huawei/updatesdk/a/a/b/a;->b:Lcom/huawei/updatesdk/a/a/b/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/updatesdk/a/a/b/a;->a:Ljava/util/Queue;

    return-void
.end method

.method public static b()Lcom/huawei/updatesdk/a/a/b/a;
    .registers 1

    sget-object v0, Lcom/huawei/updatesdk/a/a/b/a;->b:Lcom/huawei/updatesdk/a/a/b/a;

    return-object v0
.end method


# virtual methods
.method public a([B)V
    .registers 5

    array-length v0, p1

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/huawei/updatesdk/a/a/b/a;->a:Ljava/util/Queue;

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/huawei/updatesdk/a/a/b/a;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/16 v2, 0x20

    if-ge v1, v2, :cond_21

    iget-object v1, p0, Lcom/huawei/updatesdk/a/a/b/a;->a:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    const-string p1, "ByteArrayPool"

    const-string v1, "releaseBytes false"

    invoke-static {p1, v1}, Lcom/huawei/updatesdk/a/a/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    monitor-exit v0

    goto :goto_26

    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_23

    throw p1

    :cond_26
    :goto_26
    return-void
.end method

.method public a()[B
    .registers 3

    iget-object v0, p0, Lcom/huawei/updatesdk/a/a/b/a;->a:Ljava/util/Queue;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/huawei/updatesdk/a/a/b/a;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_13

    if-nez v1, :cond_12

    const/high16 v0, 0x10000

    new-array v1, v0, [B

    :cond_12
    return-object v1

    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method
