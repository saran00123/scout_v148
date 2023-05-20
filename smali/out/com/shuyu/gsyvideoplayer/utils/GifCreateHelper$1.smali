.class Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$1;
.super Ljava/lang/Object;
.source "GifCreateHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->stopGif(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;

.field final synthetic val$path:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;Ljava/io/File;)V
    .registers 3

    .line 95
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;

    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$1;->val$path:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 98
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->access$100(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_31

    .line 101
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$1;->val$path:Ljava/io/File;

    invoke-static {v2}, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->access$100(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;)Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->access$200(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;)I

    move-result v5

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->access$300(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;)I

    move-result v6

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->access$400(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;)I

    move-result v7

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->access$500(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;)Lcom/shuyu/gsyvideoplayer/listener/GSYVideoGifSaveListener;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->createGif(Ljava/io/File;Ljava/util/List;IIILcom/shuyu/gsyvideoplayer/listener/GSYVideoGifSaveListener;)V

    goto :goto_3c

    .line 103
    :cond_31
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$1;->this$0:Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->access$500(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;)Lcom/shuyu/gsyvideoplayer/listener/GSYVideoGifSaveListener;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/shuyu/gsyvideoplayer/listener/GSYVideoGifSaveListener;->result(ZLjava/io/File;)V

    :goto_3c
    return-void
.end method
