.class public Lcom/shuyu/gsyvideoplayer/cache/CacheFactory;
.super Ljava/lang/Object;
.source "CacheFactory.java"


# static fields
.field private static sICacheManager:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCacheManager()Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;
    .registers 1

    .line 16
    sget-object v0, Lcom/shuyu/gsyvideoplayer/cache/CacheFactory;->sICacheManager:Ljava/lang/Class;

    if-nez v0, :cond_8

    .line 17
    const-class v0, Lcom/shuyu/gsyvideoplayer/cache/ProxyCacheManager;

    sput-object v0, Lcom/shuyu/gsyvideoplayer/cache/CacheFactory;->sICacheManager:Ljava/lang/Class;

    .line 20
    :cond_8
    :try_start_8
    sget-object v0, Lcom/shuyu/gsyvideoplayer/cache/CacheFactory;->sICacheManager:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;
    :try_end_10
    .catch Ljava/lang/InstantiationException; {:try_start_8 .. :try_end_10} :catch_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1a

    :catch_16
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    :goto_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public static setCacheManager(Ljava/lang/Class;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;",
            ">;)V"
        }
    .end annotation

    .line 12
    sput-object p0, Lcom/shuyu/gsyvideoplayer/cache/CacheFactory;->sICacheManager:Ljava/lang/Class;

    return-void
.end method
