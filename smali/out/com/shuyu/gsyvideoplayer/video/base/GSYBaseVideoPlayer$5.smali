.class Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$5;
.super Ljava/lang/Object;
.source "GSYBaseVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V
    .registers 2

    .line 454
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$5;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 457
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$5;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullWindowPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 458
    iget v1, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->mCurrentState:I

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$5;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    iget v2, v2, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCurrentState:I

    if-eq v1, v2, :cond_23

    .line 460
    iget v1, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->mCurrentState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_23

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$5;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    iget v1, v1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCurrentState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_23

    .line 462
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer$5;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    iget v1, v1, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCurrentState:I

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->setStateAndUi(I)V

    :cond_23
    return-void
.end method
