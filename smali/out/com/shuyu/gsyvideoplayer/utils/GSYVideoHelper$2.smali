.class Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$2;
.super Ljava/lang/Object;
.source "GSYVideoHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->resolveMaterialAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;)V
    .registers 2

    .line 194
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$2;->this$0:Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 198
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$2;->this$0:Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->access$200(Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 199
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$2;->this$0:Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->access$200(Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    goto :goto_1b

    .line 201
    :cond_12
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$2;->this$0:Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->access$300(Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 203
    :goto_1b
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$2;->this$0:Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->access$000(Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;)Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->access$400(Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    .line 204
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper$2;->this$0:Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;

    const/16 v1, 0x258

    invoke-static {v0, v1}, Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;->access$500(Lcom/shuyu/gsyvideoplayer/utils/GSYVideoHelper;I)V

    return-void
.end method
