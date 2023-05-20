.class public Lcom/xiaomi/mipush/sdk/af;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/xiaomi/mipush/sdk/af;


# instance fields
.field private a:Landroid/content/Context;

.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/mipush/sdk/x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/af;->a:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/af;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/af;->a:Landroid/content/Context;

    if-nez v0, :cond_16

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/af;->a:Landroid/content/Context;

    :cond_16
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/af;
    .registers 3

    sget-object v0, Lcom/xiaomi/mipush/sdk/af;->a:Lcom/xiaomi/mipush/sdk/af;

    if-nez v0, :cond_17

    const-class v0, Lcom/xiaomi/mipush/sdk/af;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/xiaomi/mipush/sdk/af;->a:Lcom/xiaomi/mipush/sdk/af;

    if-nez v1, :cond_12

    new-instance v1, Lcom/xiaomi/mipush/sdk/af;

    invoke-direct {v1, p0}, Lcom/xiaomi/mipush/sdk/af;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/mipush/sdk/af;->a:Lcom/xiaomi/mipush/sdk/af;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcom/xiaomi/mipush/sdk/af;->a:Lcom/xiaomi/mipush/sdk/af;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .registers 6

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/af;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lcom/xiaomi/mipush/sdk/x;

    invoke-direct {v1}, Lcom/xiaomi/mipush/sdk/x;-><init>()V

    iput-object p1, v1, Lcom/xiaomi/mipush/sdk/x;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/af;->a:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/af;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/mipush/sdk/x;

    invoke-virtual {v2, v1}, Lcom/xiaomi/mipush/sdk/x;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    iget p1, v2, Lcom/xiaomi/mipush/sdk/x;->a:I

    monitor-exit v0

    return p1

    :cond_2e
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    :catchall_31
    move-exception p1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw p1
.end method

.method public declared-synchronized a(Lcom/xiaomi/mipush/sdk/au;)Ljava/lang/String;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/af;->a:Landroid/content/Context;

    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/au;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object p1

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/xiaomi/mipush/sdk/au;Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/af;->a:Landroid/content/Context;

    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/au;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/af;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lcom/xiaomi/mipush/sdk/x;

    invoke-direct {v1}, Lcom/xiaomi/mipush/sdk/x;-><init>()V

    const/4 v2, 0x0

    iput v2, v1, Lcom/xiaomi/mipush/sdk/x;->a:I

    iput-object p1, v1, Lcom/xiaomi/mipush/sdk/x;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/af;->a:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/af;->a:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1a
    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/af;->a:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p1
.end method

.method public a(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/af;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lcom/xiaomi/mipush/sdk/x;

    invoke-direct {v1}, Lcom/xiaomi/mipush/sdk/x;-><init>()V

    iput-object p1, v1, Lcom/xiaomi/mipush/sdk/x;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/af;->a:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 p1, 0x1

    monitor-exit v0

    return p1

    :cond_15
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public b(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/af;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lcom/xiaomi/mipush/sdk/x;

    invoke-direct {v1}, Lcom/xiaomi/mipush/sdk/x;-><init>()V

    iput-object p1, v1, Lcom/xiaomi/mipush/sdk/x;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/af;->a:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/af;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/mipush/sdk/x;

    invoke-virtual {v1, v2}, Lcom/xiaomi/mipush/sdk/x;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    move-object v1, v2

    :cond_2b
    iget p1, v1, Lcom/xiaomi/mipush/sdk/x;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v1, Lcom/xiaomi/mipush/sdk/x;->a:I

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/af;->a:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/af;->a:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_3d
    move-exception p1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw p1
.end method

.method public c(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/af;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lcom/xiaomi/mipush/sdk/x;

    invoke-direct {v1}, Lcom/xiaomi/mipush/sdk/x;-><init>()V

    iput-object p1, v1, Lcom/xiaomi/mipush/sdk/x;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/af;->a:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/af;->a:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_17
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p1
.end method
