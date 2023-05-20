.class public Lanetwork/channel/interceptor/InterceptorManager;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static final a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lanetwork/channel/interceptor/Interceptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lanetwork/channel/interceptor/InterceptorManager;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addInterceptor(Lanetwork/channel/interceptor/Interceptor;)V
    .registers 4

    .line 19
    sget-object v0, Lanetwork/channel/interceptor/InterceptorManager;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 20
    sget-object v0, Lanetwork/channel/interceptor/InterceptorManager;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    const/4 v0, 0x2

    .line 21
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "interceptors"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lanetwork/channel/interceptor/InterceptorManager;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "anet.InterceptorManager"

    const-string v2, "[addInterceptor]"

    invoke-static {v1, v2, p0, v0}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_26
    return-void
.end method

.method public static contains(Lanetwork/channel/interceptor/Interceptor;)Z
    .registers 2

    .line 35
    sget-object v0, Lanetwork/channel/interceptor/InterceptorManager;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static getInterceptor(I)Lanetwork/channel/interceptor/Interceptor;
    .registers 2

    .line 31
    sget-object v0, Lanetwork/channel/interceptor/InterceptorManager;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lanetwork/channel/interceptor/Interceptor;

    return-object p0
.end method

.method public static getSize()I
    .registers 1

    .line 39
    sget-object v0, Lanetwork/channel/interceptor/InterceptorManager;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public static removeInterceptor(Lanetwork/channel/interceptor/Interceptor;)V
    .registers 4

    .line 26
    sget-object v0, Lanetwork/channel/interceptor/InterceptorManager;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p0, 0x2

    .line 27
    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "interceptors"

    aput-object v1, p0, v0

    sget-object v0, Lanetwork/channel/interceptor/InterceptorManager;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const-string v0, "anet.InterceptorManager"

    const-string v1, "[remoteInterceptor]"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
