.class Lanet/channel/strategy/dispatch/a;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/strategy/dispatch/a$a;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "awcn.AmdcThreadPoolExecutor"

.field private static b:Ljava/util/Random;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lanet/channel/strategy/dispatch/a;->b:Ljava/util/Random;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lanet/channel/strategy/dispatch/a;)Ljava/util/Map;
    .registers 1

    .line 12
    iget-object p0, p0, Lanet/channel/strategy/dispatch/a;->a:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic a(Lanet/channel/strategy/dispatch/a;Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    .line 12
    iput-object p1, p0, Lanet/channel/strategy/dispatch/a;->a:Ljava/util/Map;

    return-object p1
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string v0, "Env"

    .line 21
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getEnv()Lanet/channel/entity/ENV;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    monitor-enter p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_80

    .line 23
    :try_start_a
    iget-object v0, p0, Lanet/channel/strategy/dispatch/a;->a:Ljava/util/Map;

    if-nez v0, :cond_3b

    .line 24
    iput-object p1, p0, Lanet/channel/strategy/dispatch/a;->a:Ljava/util/Map;

    .line 26
    sget-object p1, Lanet/channel/strategy/dispatch/a;->b:Ljava/util/Random;

    const/16 v0, 0xbb8

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit16 p1, p1, 0x7d0

    const-string v0, "awcn.AmdcThreadPoolExecutor"

    const-string v1, "merge amdc request"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 27
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "delay"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    new-instance v0, Lanet/channel/strategy/dispatch/a$a;

    invoke-direct {v0, p0}, Lanet/channel/strategy/dispatch/a$a;-><init>(Lanet/channel/strategy/dispatch/a;)V

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lanet/channel/strategy/utils/a;->a(Ljava/lang/Runnable;J)V

    goto :goto_7b

    .line 30
    :cond_3b
    iget-object v0, p0, Lanet/channel/strategy/dispatch/a;->a:Ljava/util/Map;

    const-string v1, "hosts"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    const-string v1, "hosts"

    .line 31
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    const-string v2, "Env"

    .line 33
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lanet/channel/strategy/dispatch/a;->a:Ljava/util/Map;

    const-string v4, "Env"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_60

    .line 35
    iput-object p1, p0, Lanet/channel/strategy/dispatch/a;->a:Ljava/util/Map;

    goto :goto_7b

    .line 36
    :cond_60
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x28

    if-gt v2, v3, :cond_73

    .line 37
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 38
    iput-object p1, p0, Lanet/channel/strategy/dispatch/a;->a:Ljava/util/Map;

    goto :goto_7b

    .line 40
    :cond_73
    new-instance v0, Lanet/channel/strategy/dispatch/a$a;

    invoke-direct {v0, p0, p1}, Lanet/channel/strategy/dispatch/a$a;-><init>(Lanet/channel/strategy/dispatch/a;Ljava/util/Map;)V

    invoke-static {v0}, Lanet/channel/strategy/utils/a;->a(Ljava/lang/Runnable;)V

    .line 43
    :goto_7b
    monitor-exit p0

    goto :goto_80

    :catchall_7d
    move-exception p1

    monitor-exit p0
    :try_end_7f
    .catchall {:try_start_a .. :try_end_7f} :catchall_7d

    :try_start_7f
    throw p1
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_80} :catch_80

    :catch_80
    :goto_80
    return-void
.end method
