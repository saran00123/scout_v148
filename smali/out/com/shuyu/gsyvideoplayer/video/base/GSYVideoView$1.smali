.class Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1;
.super Ljava/lang/Object;
.source "GSYVideoView.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;
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

    .line 343
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 3

    const/4 v0, -0x3

    if-eq p1, v0, :cond_1f

    const/4 v0, -0x2

    if-eq p1, v0, :cond_19

    const/4 v0, -0x1

    if-eq p1, v0, :cond_13

    const/4 v0, 0x1

    if-eq p1, v0, :cond_d

    goto :goto_24

    .line 348
    :cond_d
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->onGankAudio()V

    goto :goto_24

    .line 351
    :cond_13
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->onLossAudio()V

    goto :goto_24

    .line 354
    :cond_19
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->onLossTransientAudio()V

    goto :goto_24

    .line 357
    :cond_1f
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->onLossTransientCanDuck()V

    :goto_24
    return-void
.end method
