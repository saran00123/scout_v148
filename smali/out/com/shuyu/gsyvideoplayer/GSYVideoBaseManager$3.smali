.class Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$3;
.super Ljava/lang/Object;
.source "GSYVideoBaseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->onBufferingUpdate(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;

.field final synthetic val$percent:I


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;I)V
    .registers 3

    .line 266
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$3;->this$0:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;

    iput p2, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$3;->val$percent:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 269
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$3;->this$0:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->listener()Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 270
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$3;->val$percent:I

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$3;->this$0:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;

    iget v1, v1, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->bufferPoint:I

    if-le v0, v1, :cond_1c

    .line 271
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$3;->this$0:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->listener()Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$3;->val$percent:I

    invoke-interface {v0, v1}, Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;->onBufferingUpdate(I)V

    goto :goto_29

    .line 273
    :cond_1c
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$3;->this$0:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->listener()Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$3;->this$0:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;

    iget v1, v1, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->bufferPoint:I

    invoke-interface {v0, v1}, Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;->onBufferingUpdate(I)V

    :cond_29
    :goto_29
    return-void
.end method
