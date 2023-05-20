.class Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$4;
.super Ljava/lang/Object;
.source "GSYVideoView.java"

# interfaces
.implements Lcom/shuyu/gsyvideoplayer/utils/NetInfoModule$NetChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->createNetWorkState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;)V
    .registers 2

    .line 829
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$4;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Ljava/lang/String;)V
    .registers 4

    .line 832
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$4;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;

    iget-object v0, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mNetSate:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "******* change network state ******* "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    .line 834
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$4;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mNetChanged:Z

    .line 836
    :cond_23
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$4;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;

    iput-object p1, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mNetSate:Ljava/lang/String;

    return-void
.end method
