.class Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$6;
.super Ljava/lang/Object;
.source "GSYVideoBaseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;

.field final synthetic val$extra:I

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;II)V
    .registers 4

    .line 309
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$6;->this$0:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;

    iput p2, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$6;->val$what:I

    iput p3, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$6;->val$extra:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 312
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$6;->this$0:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;

    iget-boolean v0, v0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->needTimeOutOther:Z

    if-eqz v0, :cond_1b

    .line 313
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$6;->val$what:I

    const/16 v1, 0x2bd

    if-ne v0, v1, :cond_12

    .line 314
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$6;->this$0:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->startTimeOutBuffer()V

    goto :goto_1b

    :cond_12
    const/16 v1, 0x2be

    if-ne v0, v1, :cond_1b

    .line 316
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$6;->this$0:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->cancelTimeOutBuffer()V

    .line 319
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$6;->this$0:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->listener()Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 320
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$6;->this$0:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->listener()Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$6;->val$what:I

    iget v2, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$6;->val$extra:I

    invoke-interface {v0, v1, v2}, Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;->onInfo(II)V

    :cond_30
    return-void
.end method
