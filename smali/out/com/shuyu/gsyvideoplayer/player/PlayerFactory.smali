.class public Lcom/shuyu/gsyvideoplayer/player/PlayerFactory;
.super Ljava/lang/Object;
.source "PlayerFactory.java"


# static fields
.field private static sPlayerManager:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;",
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

.method public static getPlayManager()Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;
    .registers 1

    .line 16
    sget-object v0, Lcom/shuyu/gsyvideoplayer/player/PlayerFactory;->sPlayerManager:Ljava/lang/Class;

    if-nez v0, :cond_8

    .line 17
    const-class v0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;

    sput-object v0, Lcom/shuyu/gsyvideoplayer/player/PlayerFactory;->sPlayerManager:Ljava/lang/Class;

    .line 20
    :cond_8
    :try_start_8
    sget-object v0, Lcom/shuyu/gsyvideoplayer/player/PlayerFactory;->sPlayerManager:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;
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

.method public static setPlayManager(Ljava/lang/Class;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;",
            ">;)V"
        }
    .end annotation

    .line 12
    sput-object p0, Lcom/shuyu/gsyvideoplayer/player/PlayerFactory;->sPlayerManager:Ljava/lang/Class;

    return-void
.end method
