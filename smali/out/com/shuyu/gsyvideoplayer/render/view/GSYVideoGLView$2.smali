.class final Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$2;
.super Ljava/lang/Object;
.source "GSYVideoGLView.java"

# interfaces
.implements Lcom/shuyu/gsyvideoplayer/render/view/listener/GSYVideoGLRenderErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->addGLView(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;[FLcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;I)Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$gsySurfaceListener:Lcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;

.field final synthetic val$renderMode:I

.field final synthetic val$rotate:I

.field final synthetic val$textureViewContainer:Landroid/view/ViewGroup;

.field final synthetic val$videoParamsListener:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;I)V
    .registers 7

    .line 393
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$2;->val$textureViewContainer:Landroid/view/ViewGroup;

    iput p3, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$2;->val$rotate:I

    iput-object p4, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$2;->val$gsySurfaceListener:Lcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;

    iput-object p5, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$2;->val$videoParamsListener:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    iput p6, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$2;->val$renderMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;Ljava/lang/String;IZ)V
    .registers 14

    if-eqz p4, :cond_1a

    .line 397
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$2;->val$textureViewContainer:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$2;->val$rotate:I

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$2;->val$gsySurfaceListener:Lcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;

    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$2;->val$videoParamsListener:Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;

    .line 402
    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->getEffect()Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;

    move-result-object v5

    .line 403
    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->getMVPMatrix()[F

    move-result-object v6

    iget v8, p0, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$2;->val$renderMode:I

    move-object v7, p1

    .line 397
    invoke-static/range {v0 .. v8}, Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;->addGLView(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/shuyu/gsyvideoplayer/render/view/listener/IGSYSurfaceListener;Lcom/shuyu/gsyvideoplayer/utils/MeasureHelper$MeasureFormVideoParamsListener;Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;[FLcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;I)Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView;

    :cond_1a
    return-void
.end method
