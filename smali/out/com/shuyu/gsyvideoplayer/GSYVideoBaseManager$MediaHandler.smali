.class Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$MediaHandler;
.super Landroid/os/Handler;
.source "GSYVideoBaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;Landroid/os/Looper;)V
    .registers 3

    .line 553
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$MediaHandler;->this$0:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;

    .line 554
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 559
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 560
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3f

    const/4 v1, 0x1

    if-eq v0, v1, :cond_44

    const/4 v1, 0x2

    if-eq v0, v1, :cond_17

    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    goto :goto_44

    .line 578
    :cond_11
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$MediaHandler;->this$0:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;

    invoke-static {v0, p1}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->access$100(Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;Landroid/os/Message;)V

    goto :goto_44

    .line 567
    :cond_17
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$MediaHandler;->this$0:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;

    iget-object p1, p1, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    if-eqz p1, :cond_24

    .line 568
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$MediaHandler;->this$0:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;

    iget-object p1, p1, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    invoke-interface {p1}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->release()V

    .line 570
    :cond_24
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$MediaHandler;->this$0:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;

    iget-object p1, p1, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->cacheManager:Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;

    if-eqz p1, :cond_31

    .line 571
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$MediaHandler;->this$0:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;

    iget-object p1, p1, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->cacheManager:Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;

    invoke-interface {p1}, Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;->release()V

    .line 573
    :cond_31
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$MediaHandler;->this$0:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;

    const/4 v0, 0x0

    iput v0, p1, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->bufferPoint:I

    .line 574
    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->setNeedMute(Z)V

    .line 575
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$MediaHandler;->this$0:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->cancelTimeOutBuffer()V

    goto :goto_44

    .line 562
    :cond_3f
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$MediaHandler;->this$0:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;

    invoke-static {v0, p1}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->access$000(Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;Landroid/os/Message;)V

    :cond_44
    :goto_44
    return-void
.end method
