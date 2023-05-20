.class public Lcom/meizu/cloud/pushsdk/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/cloud/pushsdk/b$a;
    }
.end annotation


# static fields
.field private static volatile b:Lcom/meizu/cloud/pushsdk/b;


# instance fields
.field private final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/meizu/cloud/pushsdk/handler/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/meizu/cloud/pushsdk/handler/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/meizu/cloud/pushsdk/handler/a/f/a;

.field private e:Lcom/meizu/cloud/pushsdk/handler/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/cloud/pushsdk/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/meizu/cloud/pushsdk/handler/c;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/cloud/pushsdk/b;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/meizu/cloud/pushsdk/handler/a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/meizu/cloud/pushsdk/handler/a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/meizu/cloud/pushsdk/handler/c;",
            ">;",
            "Lcom/meizu/cloud/pushsdk/handler/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    iput-object p3, p0, Lcom/meizu/cloud/pushsdk/b;->a:Landroid/util/SparseArray;

    if-eqz p1, :cond_e3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/meizu/cloud/pushsdk/b;->c:Ljava/util/Map;

    new-instance p3, Lcom/meizu/cloud/pushsdk/b$a;

    invoke-direct {p3, p0}, Lcom/meizu/cloud/pushsdk/b$a;-><init>(Lcom/meizu/cloud/pushsdk/b;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.meizu.cloud"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    new-instance v0, Lcom/meizu/cloud/pushsdk/handler/a/f/a;

    invoke-direct {v0, p1}, Lcom/meizu/cloud/pushsdk/handler/a/f/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/b;->d:Lcom/meizu/cloud/pushsdk/handler/a/f/a;

    invoke-static {}, Lcom/meizu/cloud/pushsdk/util/MinSdkChecker;->isSupportNotificationSort()Z

    move-result v0

    if-eqz v0, :cond_3c

    new-instance v0, Lcom/meizu/cloud/pushsdk/handler/a/a/a;

    invoke-direct {v0, p1}, Lcom/meizu/cloud/pushsdk/handler/a/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/b;->e:Lcom/meizu/cloud/pushsdk/handler/a/a/a;

    :cond_3c
    if-nez p2, :cond_df

    new-instance p2, Lcom/meizu/cloud/pushsdk/handler/a/c;

    invoke-direct {p2, p1, p3}, Lcom/meizu/cloud/pushsdk/handler/a/c;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/a;)V

    invoke-virtual {p0, p2}, Lcom/meizu/cloud/pushsdk/b;->a(Lcom/meizu/cloud/pushsdk/handler/c;)Lcom/meizu/cloud/pushsdk/b;

    new-instance p2, Lcom/meizu/cloud/pushsdk/handler/a/b;

    invoke-direct {p2, p1, p3}, Lcom/meizu/cloud/pushsdk/handler/a/b;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/a;)V

    invoke-virtual {p0, p2}, Lcom/meizu/cloud/pushsdk/b;->a(Lcom/meizu/cloud/pushsdk/handler/c;)Lcom/meizu/cloud/pushsdk/b;

    new-instance p2, Lcom/meizu/cloud/pushsdk/handler/a/e;

    invoke-direct {p2, p1, p3}, Lcom/meizu/cloud/pushsdk/handler/a/e;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/a;)V

    invoke-virtual {p0, p2}, Lcom/meizu/cloud/pushsdk/b;->a(Lcom/meizu/cloud/pushsdk/handler/c;)Lcom/meizu/cloud/pushsdk/b;

    new-instance p2, Lcom/meizu/cloud/pushsdk/handler/a/d/b;

    invoke-direct {p2, p1, p3}, Lcom/meizu/cloud/pushsdk/handler/a/d/b;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/a;)V

    invoke-virtual {p0, p2}, Lcom/meizu/cloud/pushsdk/b;->a(Lcom/meizu/cloud/pushsdk/handler/c;)Lcom/meizu/cloud/pushsdk/b;

    new-instance p2, Lcom/meizu/cloud/pushsdk/handler/a/d;

    invoke-direct {p2, p1, p3}, Lcom/meizu/cloud/pushsdk/handler/a/d;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/a;)V

    invoke-virtual {p0, p2}, Lcom/meizu/cloud/pushsdk/b;->a(Lcom/meizu/cloud/pushsdk/handler/c;)Lcom/meizu/cloud/pushsdk/b;

    new-instance p2, Lcom/meizu/cloud/pushsdk/handler/a/f;

    invoke-direct {p2, p1, p3}, Lcom/meizu/cloud/pushsdk/handler/a/f;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/a;)V

    invoke-virtual {p0, p2}, Lcom/meizu/cloud/pushsdk/b;->a(Lcom/meizu/cloud/pushsdk/handler/c;)Lcom/meizu/cloud/pushsdk/b;

    new-instance p2, Lcom/meizu/cloud/pushsdk/handler/a/d/d;

    invoke-direct {p2, p1, p3}, Lcom/meizu/cloud/pushsdk/handler/a/d/d;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/a;)V

    invoke-virtual {p0, p2}, Lcom/meizu/cloud/pushsdk/b;->a(Lcom/meizu/cloud/pushsdk/handler/c;)Lcom/meizu/cloud/pushsdk/b;

    new-instance p2, Lcom/meizu/cloud/pushsdk/handler/a/e/a;

    invoke-direct {p2, p1, p3}, Lcom/meizu/cloud/pushsdk/handler/a/e/a;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/a;)V

    invoke-virtual {p0, p2}, Lcom/meizu/cloud/pushsdk/b;->a(Lcom/meizu/cloud/pushsdk/handler/c;)Lcom/meizu/cloud/pushsdk/b;

    new-instance p2, Lcom/meizu/cloud/pushsdk/handler/a/e/c;

    invoke-direct {p2, p1, p3}, Lcom/meizu/cloud/pushsdk/handler/a/e/c;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/a;)V

    invoke-virtual {p0, p2}, Lcom/meizu/cloud/pushsdk/b;->a(Lcom/meizu/cloud/pushsdk/handler/c;)Lcom/meizu/cloud/pushsdk/b;

    new-instance p2, Lcom/meizu/cloud/pushsdk/handler/a/e/f;

    invoke-direct {p2, p1, p3}, Lcom/meizu/cloud/pushsdk/handler/a/e/f;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/a;)V

    invoke-virtual {p0, p2}, Lcom/meizu/cloud/pushsdk/b;->a(Lcom/meizu/cloud/pushsdk/handler/c;)Lcom/meizu/cloud/pushsdk/b;

    new-instance p2, Lcom/meizu/cloud/pushsdk/handler/a/e/d;

    invoke-direct {p2, p1, p3}, Lcom/meizu/cloud/pushsdk/handler/a/e/d;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/a;)V

    invoke-virtual {p0, p2}, Lcom/meizu/cloud/pushsdk/b;->a(Lcom/meizu/cloud/pushsdk/handler/c;)Lcom/meizu/cloud/pushsdk/b;

    new-instance p2, Lcom/meizu/cloud/pushsdk/handler/a/e/e;

    invoke-direct {p2, p1, p3}, Lcom/meizu/cloud/pushsdk/handler/a/e/e;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/a;)V

    invoke-virtual {p0, p2}, Lcom/meizu/cloud/pushsdk/b;->a(Lcom/meizu/cloud/pushsdk/handler/c;)Lcom/meizu/cloud/pushsdk/b;

    new-instance p2, Lcom/meizu/cloud/pushsdk/handler/a/f/c;

    invoke-direct {p2, p1, p3}, Lcom/meizu/cloud/pushsdk/handler/a/f/c;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/a;)V

    invoke-virtual {p0, p2}, Lcom/meizu/cloud/pushsdk/b;->a(Lcom/meizu/cloud/pushsdk/handler/c;)Lcom/meizu/cloud/pushsdk/b;

    new-instance p2, Lcom/meizu/cloud/pushsdk/handler/a/e/b;

    invoke-direct {p2, p1, p3}, Lcom/meizu/cloud/pushsdk/handler/a/e/b;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/a;)V

    invoke-virtual {p0, p2}, Lcom/meizu/cloud/pushsdk/b;->a(Lcom/meizu/cloud/pushsdk/handler/c;)Lcom/meizu/cloud/pushsdk/b;

    new-instance p2, Lcom/meizu/cloud/pushsdk/handler/a/d/e;

    invoke-direct {p2, p1, p3}, Lcom/meizu/cloud/pushsdk/handler/a/d/e;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/a;)V

    invoke-virtual {p0, p2}, Lcom/meizu/cloud/pushsdk/b;->a(Lcom/meizu/cloud/pushsdk/handler/c;)Lcom/meizu/cloud/pushsdk/b;

    new-instance p2, Lcom/meizu/cloud/pushsdk/handler/a/b/a;

    invoke-direct {p2, p1, p3}, Lcom/meizu/cloud/pushsdk/handler/a/b/a;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/a;)V

    invoke-virtual {p0, p2}, Lcom/meizu/cloud/pushsdk/b;->a(Lcom/meizu/cloud/pushsdk/handler/c;)Lcom/meizu/cloud/pushsdk/b;

    new-instance p2, Lcom/meizu/cloud/pushsdk/handler/a/d/a;

    invoke-direct {p2, p1, p3}, Lcom/meizu/cloud/pushsdk/handler/a/d/a;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/a;)V

    invoke-virtual {p0, p2}, Lcom/meizu/cloud/pushsdk/b;->a(Lcom/meizu/cloud/pushsdk/handler/c;)Lcom/meizu/cloud/pushsdk/b;

    new-instance p2, Lcom/meizu/cloud/pushsdk/handler/a/d/f;

    invoke-direct {p2, p1, p3}, Lcom/meizu/cloud/pushsdk/handler/a/d/f;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/a;)V

    invoke-virtual {p0, p2}, Lcom/meizu/cloud/pushsdk/b;->a(Lcom/meizu/cloud/pushsdk/handler/c;)Lcom/meizu/cloud/pushsdk/b;

    new-instance p2, Lcom/meizu/cloud/pushsdk/handler/a/f/b;

    invoke-direct {p2, p1, p3}, Lcom/meizu/cloud/pushsdk/handler/a/f/b;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/a;)V

    invoke-virtual {p0, p2}, Lcom/meizu/cloud/pushsdk/b;->a(Lcom/meizu/cloud/pushsdk/handler/c;)Lcom/meizu/cloud/pushsdk/b;

    new-instance p2, Lcom/meizu/cloud/pushsdk/handler/a/d/c;

    invoke-direct {p2, p1, p3}, Lcom/meizu/cloud/pushsdk/handler/a/d/c;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/a;)V

    invoke-virtual {p0, p2}, Lcom/meizu/cloud/pushsdk/b;->a(Lcom/meizu/cloud/pushsdk/handler/c;)Lcom/meizu/cloud/pushsdk/b;

    goto :goto_e2

    :cond_df
    invoke-virtual {p0, p2}, Lcom/meizu/cloud/pushsdk/b;->a(Ljava/util/List;)Lcom/meizu/cloud/pushsdk/b;

    :goto_e2
    return-void

    :cond_e3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Landroid/content/Context;)Lcom/meizu/cloud/pushsdk/b;
    .registers 4

    sget-object v0, Lcom/meizu/cloud/pushsdk/b;->b:Lcom/meizu/cloud/pushsdk/b;

    if-nez v0, :cond_1e

    const-class v0, Lcom/meizu/cloud/pushsdk/b;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/meizu/cloud/pushsdk/b;->b:Lcom/meizu/cloud/pushsdk/b;

    if-nez v1, :cond_19

    const-string v1, "PushMessageProxy"

    const-string v2, "PushMessageProxy init"

    invoke-static {v1, v2}, Lcom/meizu/cloud/pushinternal/DebugLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/meizu/cloud/pushsdk/b;

    invoke-direct {v1, p0}, Lcom/meizu/cloud/pushsdk/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/meizu/cloud/pushsdk/b;->b:Lcom/meizu/cloud/pushsdk/b;

    :cond_19
    monitor-exit v0

    goto :goto_1e

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw p0

    :cond_1e
    :goto_1e
    sget-object p0, Lcom/meizu/cloud/pushsdk/b;->b:Lcom/meizu/cloud/pushsdk/b;

    return-object p0
.end method

.method static synthetic a(Lcom/meizu/cloud/pushsdk/b;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/meizu/cloud/pushsdk/b;->c:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/meizu/cloud/pushsdk/handler/c;)Lcom/meizu/cloud/pushsdk/b;
    .registers 4

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/b;->a:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/meizu/cloud/pushsdk/handler/c;->a()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;Lcom/meizu/cloud/pushsdk/handler/a;)Lcom/meizu/cloud/pushsdk/b;
    .registers 4

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/meizu/cloud/pushsdk/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meizu/cloud/pushsdk/handler/c;",
            ">;)",
            "Lcom/meizu/cloud/pushsdk/b;"
        }
    .end annotation

    if-eqz p1, :cond_17

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/handler/c;

    invoke-virtual {p0, v0}, Lcom/meizu/cloud/pushsdk/b;->a(Lcom/meizu/cloud/pushsdk/handler/c;)Lcom/meizu/cloud/pushsdk/b;

    goto :goto_6

    :cond_16
    return-object p0

    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "messageManagerList must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Lcom/meizu/cloud/pushsdk/handler/a/f/a;
    .registers 2

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/b;->d:Lcom/meizu/cloud/pushsdk/handler/a/f/a;

    return-object v0
.end method

.method public a(Landroid/content/Intent;)V
    .registers 6

    const-string v0, "PushMessageProxy"

    const-string v1, "process message start"

    invoke-static {v0, v1}, Lcom/meizu/cloud/pushinternal/DebugLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    const-string v1, "method"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/cloud/pushinternal/DebugLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_2e
    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_61

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/cloud/pushsdk/handler/c;

    invoke-interface {v2, p1}, Lcom/meizu/cloud/pushsdk/handler/c;->b(Landroid/content/Intent;)Z

    move-result v2
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_42} :catch_48

    if-eqz v2, :cond_45

    goto :goto_61

    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :catch_48
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "process message error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/meizu/cloud/pushinternal/DebugLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_61
    :goto_61
    return-void
.end method

.method public b()Lcom/meizu/cloud/pushsdk/handler/a/a/a;
    .registers 2

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/b;->e:Lcom/meizu/cloud/pushsdk/handler/a/a/a;

    return-object v0
.end method
