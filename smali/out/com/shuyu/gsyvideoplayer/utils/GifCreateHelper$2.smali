.class Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$2;
.super Ljava/lang/Object;
.source "GifCreateHelper.java"

# interfaces
.implements Lcom/shuyu/gsyvideoplayer/listener/GSYVideoShotSaveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->startSaveBitmap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$2;->this$0:Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public result(ZLjava/io/File;)V
    .registers 5

    .line 128
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$2;->this$0:Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->access$602(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;Z)Z

    if-eqz p1, :cond_2d

    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " SUCCESS CREATE FILE "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    .line 131
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper$2;->this$0:Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;->access$100(Lcom/shuyu/gsyvideoplayer/utils/GifCreateHelper;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2d
    return-void
.end method
