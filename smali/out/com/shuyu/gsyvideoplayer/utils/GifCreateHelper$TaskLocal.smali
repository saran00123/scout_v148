.class Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$TaskLocal;
.super Ljava/util/TimerTask;
.source "GifCreateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskLocal"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;


# direct methods
.method private constructor <init>(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;)V
    .registers 2

    .line 189
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$TaskLocal;->this$0:Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$1;)V
    .registers 3

    .line 189
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$TaskLocal;-><init>(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 192
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$TaskLocal;->this$0:Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->access$600(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 193
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$TaskLocal;->this$0:Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->access$602(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;Z)Z

    .line 194
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$TaskLocal;->this$0:Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->access$700(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;)V

    :cond_13
    return-void
.end method
