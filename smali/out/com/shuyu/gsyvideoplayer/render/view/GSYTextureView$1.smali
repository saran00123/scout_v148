.class Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView$1;
.super Ljava/lang/Object;
.source "GSYTextureView.java"

# interfaces
.implements Lcom/shuyu/gsyvideoplayer/listener/GSYVideoShotListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;->saveFrame(Ljava/io/File;ZLcom/shuyu/gsyvideoplayer/listener/GSYVideoShotSaveListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$gsyVideoShotSaveListener:Lcom/shuyu/gsyvideoplayer/listener/GSYVideoShotSaveListener;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;Lcom/shuyu/gsyvideoplayer/listener/GSYVideoShotSaveListener;Ljava/io/File;)V
    .registers 4

    .line 156
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView$1;->this$0:Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView;

    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView$1;->val$gsyVideoShotSaveListener:Lcom/shuyu/gsyvideoplayer/listener/GSYVideoShotSaveListener;

    iput-object p3, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmap(Landroid/graphics/Bitmap;)V
    .registers 4

    if-nez p1, :cond_b

    .line 160
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView$1;->val$gsyVideoShotSaveListener:Lcom/shuyu/gsyvideoplayer/listener/GSYVideoShotSaveListener;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView$1;->val$file:Ljava/io/File;

    invoke-interface {p1, v0, v1}, Lcom/shuyu/gsyvideoplayer/listener/GSYVideoShotSaveListener;->result(ZLjava/io/File;)V

    goto :goto_18

    .line 162
    :cond_b
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView$1;->val$file:Ljava/io/File;

    invoke-static {p1, v0}, Lcom/shuyu/gsyvideoplayer/utils/FileUtils;->saveBitmap(Landroid/graphics/Bitmap;Ljava/io/File;)V

    .line 163
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView$1;->val$gsyVideoShotSaveListener:Lcom/shuyu/gsyvideoplayer/listener/GSYVideoShotSaveListener;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYTextureView$1;->val$file:Ljava/io/File;

    invoke-interface {p1, v0, v1}, Lcom/shuyu/gsyvideoplayer/listener/GSYVideoShotSaveListener;->result(ZLjava/io/File;)V

    :goto_18
    return-void
.end method
