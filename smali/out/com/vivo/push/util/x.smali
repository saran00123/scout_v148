.class public final Lcom/vivo/push/util/x;
.super Ljava/lang/Object;
.source "SystemCache.java"

# interfaces
.implements Lcom/vivo/push/util/c;


# static fields
.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lcom/vivo/push/util/x;


# instance fields
.field public a:Landroid/content/Context;

.field private f:Lcom/vivo/push/util/c;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vivo/push/util/x;->b:Ljava/util/HashMap;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vivo/push/util/x;->c:Ljava/util/HashMap;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vivo/push/util/x;->d:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/vivo/push/util/x;->g:Z

    .line 21
    iput-object p1, p0, Lcom/vivo/push/util/x;->a:Landroid/content/Context;

    .line 22
    invoke-virtual {p0, p1}, Lcom/vivo/push/util/x;->a(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/vivo/push/util/x;->g:Z

    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "init status is "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/vivo/push/util/x;->g:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ";  curCache is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vivo/push/util/x;->f:Lcom/vivo/push/util/c;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SystemCache"

    invoke-static {v0, p1}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lcom/vivo/push/util/x;
    .registers 3

    const-class v0, Lcom/vivo/push/util/x;

    monitor-enter v0

    .line 27
    :try_start_3
    sget-object v1, Lcom/vivo/push/util/x;->e:Lcom/vivo/push/util/x;

    if-nez v1, :cond_12

    .line 28
    new-instance v1, Lcom/vivo/push/util/x;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/vivo/push/util/x;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/vivo/push/util/x;->e:Lcom/vivo/push/util/x;

    .line 30
    :cond_12
    sget-object p0, Lcom/vivo/push/util/x;->e:Lcom/vivo/push/util/x;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v0

    return-object p0

    :catchall_16
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 83
    sget-object v0, Lcom/vivo/push/util/x;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_14

    .line 84
    iget-object v1, p0, Lcom/vivo/push/util/x;->f:Lcom/vivo/push/util/c;

    if-nez v1, :cond_f

    goto :goto_14

    .line 87
    :cond_f
    invoke-interface {v1, p1, p2}, Lcom/vivo/push/util/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_14
    :goto_14
    return-object v0
.end method

.method public final a(Landroid/content/Context;)Z
    .registers 3

    .line 61
    new-instance v0, Lcom/vivo/push/util/u;

    invoke-direct {v0}, Lcom/vivo/push/util/u;-><init>()V

    iput-object v0, p0, Lcom/vivo/push/util/x;->f:Lcom/vivo/push/util/c;

    .line 62
    iget-object v0, p0, Lcom/vivo/push/util/x;->f:Lcom/vivo/push/util/c;

    invoke-interface {v0, p1}, Lcom/vivo/push/util/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 64
    new-instance v0, Lcom/vivo/push/util/t;

    invoke-direct {v0}, Lcom/vivo/push/util/t;-><init>()V

    iput-object v0, p0, Lcom/vivo/push/util/x;->f:Lcom/vivo/push/util/c;

    .line 65
    iget-object v0, p0, Lcom/vivo/push/util/x;->f:Lcom/vivo/push/util/c;

    invoke-interface {v0, p1}, Lcom/vivo/push/util/c;->a(Landroid/content/Context;)Z

    move-result v0

    :cond_1c
    if-nez v0, :cond_2b

    .line 68
    new-instance v0, Lcom/vivo/push/util/w;

    invoke-direct {v0}, Lcom/vivo/push/util/w;-><init>()V

    iput-object v0, p0, Lcom/vivo/push/util/x;->f:Lcom/vivo/push/util/c;

    .line 69
    iget-object v0, p0, Lcom/vivo/push/util/x;->f:Lcom/vivo/push/util/c;

    invoke-interface {v0, p1}, Lcom/vivo/push/util/c;->a(Landroid/content/Context;)Z

    move-result v0

    :cond_2b
    if-nez v0, :cond_30

    const/4 p1, 0x0

    .line 72
    iput-object p1, p0, Lcom/vivo/push/util/x;->f:Lcom/vivo/push/util/c;

    :cond_30
    return v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 92
    sget-object v0, Lcom/vivo/push/util/x;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-boolean v0, p0, Lcom/vivo/push/util/x;->g:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/vivo/push/util/x;->f:Lcom/vivo/push/util/c;

    if-nez v0, :cond_e

    goto :goto_11

    .line 96
    :cond_e
    invoke-interface {v0, p1, p2}, Lcom/vivo/push/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    :goto_11
    return-void
.end method
