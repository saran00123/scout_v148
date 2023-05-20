.class public Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "GLFrameSurfaceView.java"


# instance fields
.field private Tag:Ljava/lang/String;

.field private glRender:Lcom/pilotlab/ffmpeg/GLFrameRenderer;

.field holder:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 16
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const-string p1, "GLFrameSurfaceView"

    .line 13
    iput-object p1, p0, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->Tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "GLFrameSurfaceView"

    .line 13
    iput-object p1, p0, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->Tag:Ljava/lang/String;

    const/16 p1, 0x780

    const/16 p2, 0x438

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->init(II)V

    return-void
.end method

.method private getMySize(II)I
    .registers 5

    .line 52
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 53
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_13

    if-eqz v0, :cond_14

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_13

    goto :goto_14

    :cond_13
    move p1, p2

    :cond_14
    :goto_14
    return p1
.end method


# virtual methods
.method public init(II)V
    .registers 4

    const/4 v0, 0x2

    .line 26
    invoke-virtual {p0, v0}, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->setEGLContextClientVersion(I)V

    .line 27
    new-instance v0, Lcom/pilotlab/ffmpeg/GLFrameRenderer;

    invoke-direct {v0, p0, p1, p2}, Lcom/pilotlab/ffmpeg/GLFrameRenderer;-><init>(Landroid/opengl/GLSurfaceView;II)V

    iput-object v0, p0, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->glRender:Lcom/pilotlab/ffmpeg/GLFrameRenderer;

    .line 28
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->glRender:Lcom/pilotlab/ffmpeg/GLFrameRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/pilotlab/ffmpeg/GLFrameRenderer;->update(II)V

    .line 29
    iget-object p1, p0, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->glRender:Lcom/pilotlab/ffmpeg/GLFrameRenderer;

    invoke-virtual {p0, p1}, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 32
    invoke-virtual {p0}, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->holder:Landroid/view/SurfaceHolder;

    .line 33
    iget-object p1, p0, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .line 90
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onAttachedToWindow()V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    .line 74
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onMeasure(II)V

    const/16 v0, 0x64

    .line 75
    invoke-direct {p0, v0, p1}, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->getMySize(II)I

    move-result p1

    .line 76
    invoke-direct {p0, v0, p2}, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->getMySize(II)I

    move-result p2

    .line 77
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setRenderShowPic(Z)V
    .registers 3

    .line 41
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->glRender:Lcom/pilotlab/ffmpeg/GLFrameRenderer;

    if-eqz v0, :cond_6

    .line 42
    iput-boolean p1, v0, Lcom/pilotlab/ffmpeg/GLFrameRenderer;->showEnable:Z

    :cond_6
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 2

    .line 84
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public update([B[B[B)V
    .registers 5

    .line 37
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->glRender:Lcom/pilotlab/ffmpeg/GLFrameRenderer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/pilotlab/ffmpeg/GLFrameRenderer;->update([B[B[B)V

    return-void
.end method

.method public updateRenderWidthHeight(II)V
    .registers 4

    .line 46
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/GLFrameSurfaceView;->glRender:Lcom/pilotlab/ffmpeg/GLFrameRenderer;

    if-eqz v0, :cond_7

    .line 47
    invoke-virtual {v0, p1, p2}, Lcom/pilotlab/ffmpeg/GLFrameRenderer;->update(II)V

    :cond_7
    return-void
.end method
