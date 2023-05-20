.class public Lcom/meizu/cloud/pushsdk/d/b/a/a;
.super Lcom/meizu/cloud/pushsdk/d/b/a;


# instance fields
.field private final h:Ljava/lang/String;

.field private i:Lcom/meizu/cloud/pushsdk/d/d/d;

.field private j:I


# direct methods
.method public constructor <init>(Lcom/meizu/cloud/pushsdk/d/b/a$a;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/meizu/cloud/pushsdk/d/b/a;-><init>(Lcom/meizu/cloud/pushsdk/d/b/a$a;)V

    const-class p1, Lcom/meizu/cloud/pushsdk/d/b/a/a;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->h:Ljava/lang/String;

    new-instance p1, Lcom/meizu/cloud/pushsdk/d/d/a;

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->a:Landroid/content/Context;

    iget v1, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->e:I

    invoke-direct {p1, v0, v1}, Lcom/meizu/cloud/pushsdk/d/d/a;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->i:Lcom/meizu/cloud/pushsdk/d/d/d;

    iget-object p1, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->i:Lcom/meizu/cloud/pushsdk/d/d/d;

    invoke-interface {p1}, Lcom/meizu/cloud/pushsdk/d/d/d;->a()Z

    move-result p1

    if-nez p1, :cond_31

    new-instance p1, Lcom/meizu/cloud/pushsdk/d/d/c;

    iget v0, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->e:I

    invoke-direct {p1, v0}, Lcom/meizu/cloud/pushsdk/d/d/c;-><init>(I)V

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->i:Lcom/meizu/cloud/pushsdk/d/d/d;

    iget-object p1, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->h:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "init memory store"

    invoke-static {p1, v1, v0}, Lcom/meizu/cloud/pushsdk/d/f/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_31
    return-void
.end method

.method static synthetic a(Lcom/meizu/cloud/pushsdk/d/b/a/a;Lcom/meizu/cloud/pushsdk/c/c/i;)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/d/b/a/a;->a(Lcom/meizu/cloud/pushsdk/c/c/i;)I

    move-result p0

    return p0
.end method

.method private a(Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/meizu/cloud/pushsdk/d/b/e;",
            ">;)",
            "Ljava/util/LinkedList<",
            "Lcom/meizu/cloud/pushsdk/d/b/g;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/cloud/pushsdk/d/b/e;

    invoke-virtual {v3}, Lcom/meizu/cloud/pushsdk/d/b/e;->a()Lcom/meizu/cloud/pushsdk/c/c/i;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/meizu/cloud/pushsdk/d/b/a/a;->b(Lcom/meizu/cloud/pushsdk/c/c/i;)Ljava/util/concurrent/Callable;

    move-result-object v3

    invoke-static {v3}, Lcom/meizu/cloud/pushsdk/d/b/a/b;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_2a
    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->h:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "Request Futures: %s"

    invoke-static {v2, v5, v4}, Lcom/meizu/cloud/pushsdk/d/f/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v6

    :goto_40
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v2, v4, :cond_c7

    const/4 v4, -0x1

    :try_start_47
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Future;

    const-wide/16 v7, 0x5

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v7, v8, v9}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_5b
    .catch Ljava/lang/InterruptedException; {:try_start_47 .. :try_end_5b} :catch_7e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_47 .. :try_end_5b} :catch_6d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_47 .. :try_end_5b} :catch_5c

    goto :goto_8e

    :catch_5c
    move-exception v5

    iget-object v7, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->h:Ljava/lang/String;

    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v6

    const-string v5, "Request Future had a timeout: %s"

    invoke-static {v7, v5, v8}, Lcom/meizu/cloud/pushsdk/d/f/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8e

    :catch_6d
    move-exception v5

    iget-object v7, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->h:Ljava/lang/String;

    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v6

    const-string v5, "Request Future failed: %s"

    invoke-static {v7, v5, v8}, Lcom/meizu/cloud/pushsdk/d/f/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8e

    :catch_7e
    move-exception v5

    iget-object v7, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->h:Ljava/lang/String;

    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v6

    const-string v5, "Request Future was interrupted: %s"

    invoke-static {v7, v5, v8}, Lcom/meizu/cloud/pushsdk/d/f/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_8e
    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/cloud/pushsdk/d/b/e;

    invoke-virtual {v5}, Lcom/meizu/cloud/pushsdk/d/b/e;->c()Z

    move-result v5

    if-eqz v5, :cond_ad

    new-instance v4, Lcom/meizu/cloud/pushsdk/d/b/g;

    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/cloud/pushsdk/d/b/e;

    invoke-virtual {v5}, Lcom/meizu/cloud/pushsdk/d/b/e;->b()Ljava/util/LinkedList;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/meizu/cloud/pushsdk/d/b/g;-><init>(ZLjava/util/LinkedList;)V

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_c3

    :cond_ad
    new-instance v5, Lcom/meizu/cloud/pushsdk/d/b/g;

    invoke-virtual {p0, v4}, Lcom/meizu/cloud/pushsdk/d/b/a/a;->a(I)Z

    move-result v4

    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/meizu/cloud/pushsdk/d/b/e;

    invoke-virtual {v7}, Lcom/meizu/cloud/pushsdk/d/b/e;->b()Ljava/util/LinkedList;

    move-result-object v7

    invoke-direct {v5, v4, v7}, Lcom/meizu/cloud/pushsdk/d/b/g;-><init>(ZLjava/util/LinkedList;)V

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_c3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_40

    :cond_c7
    return-object v0
.end method

.method private a(Ljava/lang/Long;)Ljava/util/concurrent/Callable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/meizu/cloud/pushsdk/d/b/a/a$3;

    invoke-direct {v0, p0, p1}, Lcom/meizu/cloud/pushsdk/d/b/a/a$3;-><init>(Lcom/meizu/cloud/pushsdk/d/b/a/a;Ljava/lang/Long;)V

    return-object v0
.end method

.method static synthetic a(Lcom/meizu/cloud/pushsdk/d/b/a/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private b(Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-direct {p0, v2}, Lcom/meizu/cloud/pushsdk/d/b/a/a;->a(Ljava/lang/Long;)Ljava/util/concurrent/Callable;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/cloud/pushsdk/d/b/a/b;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_26
    iget-object p1, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->h:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "Removal Futures: %s"

    invoke-static {p1, v4, v3}, Lcom/meizu/cloud/pushsdk/d/f/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move p1, v5

    :goto_3c
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge p1, v3, :cond_94

    :try_start_42
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Future;

    const-wide/16 v6, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v6, v7, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_56
    .catch Ljava/lang/InterruptedException; {:try_start_42 .. :try_end_56} :catch_79
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_42 .. :try_end_56} :catch_68
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_42 .. :try_end_56} :catch_57

    goto :goto_8a

    :catch_57
    move-exception v3

    iget-object v4, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->h:Ljava/lang/String;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v5

    const-string v3, "Removal Future had a timeout: %s"

    invoke-static {v4, v3, v6}, Lcom/meizu/cloud/pushsdk/d/f/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_89

    :catch_68
    move-exception v3

    iget-object v4, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->h:Ljava/lang/String;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v5

    const-string v3, "Removal Future failed: %s"

    invoke-static {v4, v3, v6}, Lcom/meizu/cloud/pushsdk/d/f/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_89

    :catch_79
    move-exception v3

    iget-object v4, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->h:Ljava/lang/String;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v5

    const-string v3, "Removal Future was interrupted: %s"

    invoke-static {v4, v3, v6}, Lcom/meizu/cloud/pushsdk/d/f/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_89
    move v3, v5

    :goto_8a
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_3c

    :cond_94
    return-object v0
.end method

.method private b(Lcom/meizu/cloud/pushsdk/c/c/i;)Ljava/util/concurrent/Callable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/cloud/pushsdk/c/c/i;",
            ")",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/meizu/cloud/pushsdk/d/b/a/a$2;

    invoke-direct {v0, p0, p1}, Lcom/meizu/cloud/pushsdk/d/b/a/a$2;-><init>(Lcom/meizu/cloud/pushsdk/d/b/a/a;Lcom/meizu/cloud/pushsdk/c/c/i;)V

    return-object v0
.end method

.method static synthetic b(Lcom/meizu/cloud/pushsdk/d/b/a/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/d/b/a/a;->c()V

    return-void
.end method

.method static synthetic c(Lcom/meizu/cloud/pushsdk/d/b/a/a;)Lcom/meizu/cloud/pushsdk/d/d/d;
    .registers 1

    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->i:Lcom/meizu/cloud/pushsdk/d/d/d;

    return-object p0
.end method

.method private c()V
    .registers 10

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/d/f/e;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_12e

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->i:Lcom/meizu/cloud/pushsdk/d/d/d;

    invoke-interface {v0}, Lcom/meizu/cloud/pushsdk/d/d/d;->c()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_c7

    iput v2, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->j:I

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->i:Lcom/meizu/cloud/pushsdk/d/d/d;

    invoke-interface {v0}, Lcom/meizu/cloud/pushsdk/d/d/d;->d()Lcom/meizu/cloud/pushsdk/d/b/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/cloud/pushsdk/d/b/a/a;->a(Lcom/meizu/cloud/pushsdk/d/b/c;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/d/b/a/a;->a(Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->h:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "Processing emitter results."

    invoke-static {v3, v5, v4}, Lcom/meizu/cloud/pushsdk/d/f/c;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v4, v2

    move v5, v4

    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_70

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/meizu/cloud/pushsdk/d/b/g;

    invoke-virtual {v6}, Lcom/meizu/cloud/pushsdk/d/b/g;->a()Z

    move-result v7

    if-eqz v7, :cond_5d

    invoke-virtual {v6}, Lcom/meizu/cloud/pushsdk/d/b/g;->b()Ljava/util/LinkedList;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v6}, Lcom/meizu/cloud/pushsdk/d/b/g;->b()Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_3a

    :cond_5d
    invoke-virtual {v6}, Lcom/meizu/cloud/pushsdk/d/b/g;->b()Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->h:Ljava/lang/String;

    new-array v7, v2, [Ljava/lang/Object;

    const-string v8, "Request sending failed but we will retry later."

    invoke-static {v6, v8, v7}, Lcom/meizu/cloud/pushsdk/d/f/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3a

    :cond_70
    invoke-direct {p0, v3}, Lcom/meizu/cloud/pushsdk/d/b/a/a;->b(Ljava/util/LinkedList;)Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->h:Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    const-string v6, "Success Count: %s"

    invoke-static {v0, v6, v3}, Lcom/meizu/cloud/pushsdk/d/f/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->h:Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    const-string v6, "Failure Count: %s"

    invoke-static {v0, v6, v3}, Lcom/meizu/cloud/pushsdk/d/f/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->b:Lcom/meizu/cloud/pushsdk/d/b/f;

    if-eqz v0, :cond_a2

    if-eqz v5, :cond_9d

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->b:Lcom/meizu/cloud/pushsdk/d/b/f;

    invoke-interface {v0, v4, v5}, Lcom/meizu/cloud/pushsdk/d/b/f;->a(II)V

    goto :goto_a2

    :cond_9d
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->b:Lcom/meizu/cloud/pushsdk/d/b/f;

    invoke-interface {v0, v4}, Lcom/meizu/cloud/pushsdk/d/b/f;->a(I)V

    :cond_a2
    :goto_a2
    if-lez v5, :cond_12a

    if-nez v4, :cond_12a

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/d/f/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->h:Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/d/b/a/a;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v4, "Ensure collector path is valid: %s"

    invoke-static {v0, v4, v3}, Lcom/meizu/cloud/pushsdk/d/f/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_bd
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->h:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Emitter loop stopping: failures."

    invoke-static {v0, v4, v3}, Lcom/meizu/cloud/pushsdk/d/f/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_137

    :cond_c7
    iget v0, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->j:I

    iget v3, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->d:I

    if-lt v0, v3, :cond_e5

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->h:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Emitter loop stopping: empty limit reached."

    invoke-static {v0, v4, v3}, Lcom/meizu/cloud/pushsdk/d/f/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->b:Lcom/meizu/cloud/pushsdk/d/b/f;

    if-eqz v0, :cond_13c

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->b:Lcom/meizu/cloud/pushsdk/d/b/f;

    invoke-interface {v0, v1}, Lcom/meizu/cloud/pushsdk/d/b/f;->a(Z)V

    goto :goto_13c

    :cond_e5
    iget v0, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->j:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->j:I

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Emitter database empty: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->j:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/meizu/cloud/pushsdk/d/f/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_104
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->f:Ljava/util/concurrent/TimeUnit;

    iget v1, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->c:I

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_10c
    .catch Ljava/lang/InterruptedException; {:try_start_104 .. :try_end_10c} :catch_10d

    goto :goto_12a

    :catch_10d
    move-exception v0

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->h:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Emitter thread sleep interrupted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/meizu/cloud/pushsdk/d/f/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_12a
    :goto_12a
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/d/b/a/a;->c()V

    goto :goto_13c

    :cond_12e
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->h:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Emitter loop stopping: emitter offline."

    invoke-static {v0, v4, v3}, Lcom/meizu/cloud/pushsdk/d/f/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_137
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    :cond_13c
    :goto_13c
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    new-instance v0, Lcom/meizu/cloud/pushsdk/d/b/a/a$1;

    invoke-direct {v0, p0}, Lcom/meizu/cloud/pushsdk/d/b/a/a$1;-><init>(Lcom/meizu/cloud/pushsdk/d/b/a/a;)V

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/d/b/a/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/meizu/cloud/pushsdk/d/a/a;Z)V
    .registers 7

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->i:Lcom/meizu/cloud/pushsdk/d/d/d;

    invoke-interface {v0, p1}, Lcom/meizu/cloud/pushsdk/d/d/d;->a(Lcom/meizu/cloud/pushsdk/d/a/a;)V

    iget-object p1, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRunning "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " attemptEmit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/meizu/cloud/pushsdk/d/f/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p2, :cond_4f

    :try_start_2a
    iget-object p1, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->f:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_31
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_31} :catch_32

    goto :goto_4f

    :catch_32
    move-exception p1

    iget-object p2, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Emitter add thread sleep interrupted: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p2, p1, v0}, Lcom/meizu/cloud/pushsdk/d/f/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4f
    :goto_4f
    iget-object p1, p0, Lcom/meizu/cloud/pushsdk/d/b/a/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, v1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_5b

    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/d/b/a/a;->c()V

    :cond_5b
    return-void
.end method
