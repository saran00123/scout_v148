.class public abstract Lcom/vivo/push/cache/c;
.super Ljava/lang/Object;
.source "ICacheSettings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:[B

.field public static final b:[B

.field protected static final c:Ljava/lang/Object;


# instance fields
.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x10

    .line 18
    new-array v1, v0, [B

    fill-array-data v1, :array_18

    sput-object v1, Lcom/vivo/push/cache/c;->a:[B

    .line 19
    new-array v0, v0, [B

    fill-array-data v0, :array_24

    sput-object v0, Lcom/vivo/push/cache/c;->b:[B

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vivo/push/cache/c;->c:Ljava/lang/Object;

    return-void

    :array_18
    .array-data 1
        0x22t
        0x20t
        0x21t
        0x25t
        0x21t
        0x22t
        0x20t
        0x21t
        0x21t
        0x21t
        0x22t
        0x29t
        0x23t
        0x20t
        0x20t
        0x20t
    .end array-data

    :array_24
    .array-data 1
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x20t
        0x26t
        0x25t
        0x24t
        0x23t
        0x22t
        0x21t
    .end array-data
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/push/cache/c;->d:Ljava/util/List;

    .line 28
    invoke-static {p1}, Lcom/vivo/push/util/ContextDelegate;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/push/cache/c;->e:Landroid/content/Context;

    .line 29
    invoke-virtual {p0}, Lcom/vivo/push/cache/c;->c()V

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method protected abstract a(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method abstract b(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final c()V
    .registers 6

    .line 34
    sget-object v0, Lcom/vivo/push/cache/c;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 35
    :try_start_3
    invoke-virtual {p0}, Lcom/vivo/push/cache/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/push/util/f;->a(Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/vivo/push/cache/c;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1167
    iget-object v1, p0, Lcom/vivo/push/cache/c;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/vivo/push/util/x;->b(Landroid/content/Context;)Lcom/vivo/push/util/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vivo/push/cache/c;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 2078
    invoke-virtual {v1, v2, v3}, Lcom/vivo/push/util/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3043
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_41

    const-string v1, "CacheSettings"

    .line 3044
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ClientManager init "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/push/cache/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " strApps empty."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a5

    .line 3047
    :cond_41
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x2710

    if-le v2, v3, :cond_69

    const-string v1, "CacheSettings"

    .line 3048
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sync "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/push/cache/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " strApps lenght too large"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3049
    invoke-virtual {p0}, Lcom/vivo/push/cache/c;->d()V
    :try_end_68
    .catchall {:try_start_3 .. :try_end_68} :catchall_a7

    goto :goto_a5

    :cond_69
    :try_start_69
    const-string v2, "CacheSettings"

    .line 3053
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ClientManager init "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/push/cache/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " strApps : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3054
    invoke-virtual {p0, v1}, Lcom/vivo/push/cache/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3055
    invoke-virtual {p0, v1}, Lcom/vivo/push/cache/c;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a5

    .line 3057
    iget-object v2, p0, Lcom/vivo/push/cache/c;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_97} :catch_98
    .catchall {:try_start_69 .. :try_end_97} :catchall_a7

    goto :goto_a5

    :catch_98
    move-exception v1

    .line 3060
    :try_start_99
    invoke-virtual {p0}, Lcom/vivo/push/cache/c;->d()V

    const-string v2, "CacheSettings"

    .line 3061
    invoke-static {v1}, Lcom/vivo/push/util/n;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_a5
    :goto_a5
    monitor-exit v0

    return-void

    :catchall_a7
    move-exception v1

    monitor-exit v0
    :try_end_a9
    .catchall {:try_start_99 .. :try_end_a9} :catchall_a7

    throw v1
.end method

.method public final d()V
    .registers 5

    .line 176
    sget-object v0, Lcom/vivo/push/cache/c;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_3
    iget-object v1, p0, Lcom/vivo/push/cache/c;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const-string v1, ""

    .line 3171
    iget-object v2, p0, Lcom/vivo/push/cache/c;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/vivo/push/util/x;->b(Landroid/content/Context;)Lcom/vivo/push/util/x;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vivo/push/cache/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/vivo/push/util/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CacheSettings"

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "clear "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/push/cache/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " strApps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    monitor-exit v0

    return-void

    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v1
.end method
