.class public Lcom/alibaba/sdk/android/emas/h;
.super Ljava/lang/Object;
.source "SendManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/emas/h$a;,
        Lcom/alibaba/sdk/android/emas/h$b;
    }
.end annotation


# static fields
.field private static a:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private a:Lcom/alibaba/sdk/android/emas/PreSendHandler;

.field private b:Lcom/alibaba/sdk/android/emas/EmasSender;

.field private mDiskCacheManager:Lcom/alibaba/sdk/android/emas/c;

.field private mSendService:Lcom/alibaba/sdk/android/tbrest/SendService;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 28
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0xa

    invoke-direct {v6, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v7, Lcom/alibaba/sdk/android/emas/h$a;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Lcom/alibaba/sdk/android/emas/h$a;-><init>(Lcom/alibaba/sdk/android/emas/h$1;)V

    const/4 v1, 0x3

    const/4 v2, 0x3

    const-wide/16 v3, 0xa

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v8, Lcom/alibaba/sdk/android/emas/h;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/sdk/android/emas/EmasSender;Lcom/alibaba/sdk/android/emas/c;)V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/alibaba/sdk/android/emas/h;->b:Lcom/alibaba/sdk/android/emas/EmasSender;

    .line 33
    new-instance p1, Lcom/alibaba/sdk/android/tbrest/SendService;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/tbrest/SendService;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/emas/h;->mSendService:Lcom/alibaba/sdk/android/tbrest/SendService;

    .line 34
    iput-object p2, p0, Lcom/alibaba/sdk/android/emas/h;->mDiskCacheManager:Lcom/alibaba/sdk/android/emas/c;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/emas/h;)Lcom/alibaba/sdk/android/emas/EmasSender;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/alibaba/sdk/android/emas/h;->b:Lcom/alibaba/sdk/android/emas/EmasSender;

    return-object p0
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/emas/h;)Lcom/alibaba/sdk/android/emas/PreSendHandler;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/alibaba/sdk/android/emas/h;->a:Lcom/alibaba/sdk/android/emas/PreSendHandler;

    return-object p0
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/emas/h;)Lcom/alibaba/sdk/android/emas/c;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/alibaba/sdk/android/emas/h;->mDiskCacheManager:Lcom/alibaba/sdk/android/emas/c;

    return-object p0
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/emas/h;)Lcom/alibaba/sdk/android/tbrest/SendService;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/alibaba/sdk/android/emas/h;->mSendService:Lcom/alibaba/sdk/android/tbrest/SendService;

    return-object p0
.end method

.method static synthetic a()Ljava/util/concurrent/ThreadPoolExecutor;
    .registers 1

    .line 21
    sget-object v0, Lcom/alibaba/sdk/android/emas/h;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/emas/h;Lcom/alibaba/sdk/android/emas/d;)V
    .registers 2

    .line 21
    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/emas/h;->b(Lcom/alibaba/sdk/android/emas/d;)V

    return-void
.end method

.method private b(Lcom/alibaba/sdk/android/emas/d;)V
    .registers 4

    .line 73
    sget-object v0, Lcom/alibaba/sdk/android/emas/h;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/alibaba/sdk/android/emas/h$b;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/sdk/android/emas/h$b;-><init>(Lcom/alibaba/sdk/android/emas/h;Lcom/alibaba/sdk/android/emas/d;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/alibaba/sdk/android/tbrest/SendService;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/h;->mSendService:Lcom/alibaba/sdk/android/tbrest/SendService;

    return-object v0
.end method

.method public a(Lcom/alibaba/sdk/android/emas/PreSendHandler;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/alibaba/sdk/android/emas/h;->a:Lcom/alibaba/sdk/android/emas/PreSendHandler;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .line 46
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/h;->mSendService:Lcom/alibaba/sdk/android/tbrest/SendService;

    iput-object p1, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->appSecret:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/emas/e;",
            ">;)V"
        }
    .end annotation

    .line 69
    new-instance v0, Lcom/alibaba/sdk/android/emas/d;

    invoke-direct {v0, p1}, Lcom/alibaba/sdk/android/emas/d;-><init>(Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/emas/h;->b(Lcom/alibaba/sdk/android/emas/d;)V

    return-void
.end method

.method public b(Lcom/alibaba/sdk/android/emas/e;)V
    .registers 3

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/emas/h;->a(Ljava/util/List;)V

    return-void
.end method

.method d()V
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/h;->mDiskCacheManager:Lcom/alibaba/sdk/android/emas/c;

    if-nez v0, :cond_5

    return-void

    .line 81
    :cond_5
    sget-object v0, Lcom/alibaba/sdk/android/emas/h;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 82
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alibaba/sdk/android/emas/h$1;

    invoke-direct {v1, p0}, Lcom/alibaba/sdk/android/emas/h$1;-><init>(Lcom/alibaba/sdk/android/emas/h;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 95
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1e
    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    .line 38
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/h;->mSendService:Lcom/alibaba/sdk/android/tbrest/SendService;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/sdk/android/tbrest/SendService;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openHttp(Z)V
    .registers 3

    .line 50
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/h;->mSendService:Lcom/alibaba/sdk/android/tbrest/SendService;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->openHttp:Ljava/lang/Boolean;

    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .registers 3

    .line 42
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/h;->mSendService:Lcom/alibaba/sdk/android/tbrest/SendService;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/tbrest/SendService;->changeHost(Ljava/lang/String;)V

    return-void
.end method

.method public setUserNick(Ljava/lang/String;)V
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/h;->mSendService:Lcom/alibaba/sdk/android/tbrest/SendService;

    iput-object p1, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->userNick:Ljava/lang/String;

    return-void
.end method
