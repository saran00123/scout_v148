.class public Lcom/alibaba/sdk/android/emas/a;
.super Ljava/lang/Object;
.source "CacheManager.java"

# interfaces
.implements Lcom/alibaba/sdk/android/emas/Cache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/sdk/android/emas/Cache<",
        "Lcom/alibaba/sdk/android/emas/e;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/emas/e;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private mSendManager:Lcom/alibaba/sdk/android/emas/h;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/emas/h;II)V
    .registers 4

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p2, p0, Lcom/alibaba/sdk/android/emas/a;->a:I

    .line 18
    iput p3, p0, Lcom/alibaba/sdk/android/emas/a;->b:I

    const/4 p2, 0x0

    .line 19
    iput p2, p0, Lcom/alibaba/sdk/android/emas/a;->c:I

    .line 20
    iput-object p1, p0, Lcom/alibaba/sdk/android/emas/a;->mSendManager:Lcom/alibaba/sdk/android/emas/h;

    return-void
.end method

.method private a()V
    .registers 3

    .line 48
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/a;->mSendManager:Lcom/alibaba/sdk/android/emas/h;

    iget-object v1, p0, Lcom/alibaba/sdk/android/emas/a;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/emas/h;->a(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/alibaba/sdk/android/emas/a;->a:Ljava/util/List;

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/alibaba/sdk/android/emas/a;->c:I

    return-void
.end method


# virtual methods
.method public a()Lcom/alibaba/sdk/android/emas/e;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized a(Lcom/alibaba/sdk/android/emas/e;)V
    .registers 3

    monitor-enter p0

    .line 25
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/a;->a:Ljava/util/List;

    if-nez v0, :cond_c

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/emas/a;->a:Ljava/util/List;

    .line 28
    :cond_c
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget v0, p0, Lcom/alibaba/sdk/android/emas/a;->c:I

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/emas/e;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/sdk/android/emas/a;->c:I

    .line 32
    iget-object p1, p0, Lcom/alibaba/sdk/android/emas/a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/alibaba/sdk/android/emas/a;->a:I

    if-ge p1, v0, :cond_2a

    iget p1, p0, Lcom/alibaba/sdk/android/emas/a;->c:I

    iget v0, p0, Lcom/alibaba/sdk/android/emas/a;->b:I

    if-lt p1, v0, :cond_51

    .line 33
    :cond_2a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CacheManager satisfy limit. immediately send. size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", current capacity: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/alibaba/sdk/android/emas/a;->c:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Lcom/alibaba/sdk/android/emas/a;->a()V
    :try_end_51
    .catchall {:try_start_1 .. :try_end_51} :catchall_53

    .line 36
    :cond_51
    monitor-exit p0

    return-void

    :catchall_53
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/alibaba/sdk/android/emas/e;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public synthetic add(Ljava/lang/Object;)V
    .registers 2

    .line 8
    check-cast p1, Lcom/alibaba/sdk/android/emas/e;

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/emas/a;->a(Lcom/alibaba/sdk/android/emas/e;)V

    return-void
.end method

.method public clear()V
    .registers 1

    return-void
.end method

.method public declared-synchronized flush()V
    .registers 2

    monitor-enter p0

    .line 39
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/a;->a:Ljava/util/List;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_18

    :cond_e
    const-string v0, "CacheManager flush. immediately send."

    .line 43
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Lcom/alibaba/sdk/android/emas/a;->a()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1a

    .line 45
    monitor-exit p0

    return-void

    .line 40
    :cond_18
    :goto_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/emas/a;->a()Lcom/alibaba/sdk/android/emas/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic remove(Ljava/lang/Object;)Z
    .registers 2

    .line 8
    check-cast p1, Lcom/alibaba/sdk/android/emas/e;

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/emas/a;->a(Lcom/alibaba/sdk/android/emas/e;)Z

    move-result p1

    return p1
.end method
