.class public Lcom/pilotlab/ffmpeg/GLFrameRenderer;
.super Ljava/lang/Object;
.source "GLFrameRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mTargetSurface:Landroid/opengl/GLSurfaceView;

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private prog:Lcom/pilotlab/ffmpeg/GLProgram;

.field public showEnable:Z

.field private u:Ljava/nio/ByteBuffer;

.field private v:Ljava/nio/ByteBuffer;

.field private y:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Landroid/opengl/GLSurfaceView;II)V
    .registers 6

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/pilotlab/ffmpeg/GLProgram;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pilotlab/ffmpeg/GLProgram;-><init>(I)V

    iput-object v0, p0, Lcom/pilotlab/ffmpeg/GLFrameRenderer;->prog:Lcom/pilotlab/ffmpeg/GLProgram;

    .line 26
    iput-object p1, p0, Lcom/pilotlab/ffmpeg/GLFrameRenderer;->mTargetSurface:Landroid/opengl/GLSurfaceView;

    .line 27
    iput p2, p0, Lcom/pilotlab/ffmpeg/GLFrameRenderer;->mScreenWidth:I

    .line 28
    iput p3, p0, Lcom/pilotlab/ffmpeg/GLFrameRenderer;->mScreenHeight:I

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 9

    .line 45
    monitor-enter p0

    .line 46
    :try_start_1
    iget-boolean p1, p0, Lcom/pilotlab/ffmpeg/GLFrameRenderer;->showEnable:Z

    if-eqz p1, :cond_38

    iget-object p1, p0, Lcom/pilotlab/ffmpeg/GLFrameRenderer;->y:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_38

    .line 48
    iget-object p1, p0, Lcom/pilotlab/ffmpeg/GLFrameRenderer;->y:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 49
    iget-object p1, p0, Lcom/pilotlab/ffmpeg/GLFrameRenderer;->u:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 50
    iget-object p1, p0, Lcom/pilotlab/ffmpeg/GLFrameRenderer;->v:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 55
    iget-object v1, p0, Lcom/pilotlab/ffmpeg/GLFrameRenderer;->prog:Lcom/pilotlab/ffmpeg/GLProgram;

    iget-object v2, p0, Lcom/pilotlab/ffmpeg/GLFrameRenderer;->y:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/pilotlab/ffmpeg/GLFrameRenderer;->u:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/pilotlab/ffmpeg/GLFrameRenderer;->v:Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/pilotlab/ffmpeg/GLFrameRenderer;->mVideoWidth:I

    iget v6, p0, Lcom/pilotlab/ffmpeg/GLFrameRenderer;->mVideoHeight:I

    invoke-virtual/range {v1 .. v6}, Lcom/pilotlab/ffmpeg/GLProgram;->buildTextures(Ljava/nio/Buffer;Ljava/nio/Buffer;Ljava/nio/Buffer;II)V

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 56
    invoke-static {v0, v0, v0, p1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p1, 0x4000

    .line 57
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 58
    iget-object p1, p0, Lcom/pilotlab/ffmpeg/GLFrameRenderer;->prog:Lcom/pilotlab/ffmpeg/GLProgram;

    invoke-virtual {p1}, Lcom/pilotlab/ffmpeg/GLProgram;->drawFrame()V

    .line 60
    :cond_38
    monitor-exit p0

    return-void

    :catchall_3a
    move-exception p1

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3a

    throw p1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 4

    const/4 p1, 0x0

    .line 40
    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 3

    .line 33
    iget-object p1, p0, Lcom/pilotlab/ffmpeg/GLFrameRenderer;->prog:Lcom/pilotlab/ffmpeg/GLProgram;

    invoke-virtual {p1}, Lcom/pilotlab/ffmpeg/GLProgram;->isProgramBuilt()Z

    move-result p1

    if-nez p1, :cond_d

    .line 34
    iget-object p1, p0, Lcom/pilotlab/ffmpeg/GLFrameRenderer;->prog:Lcom/pilotlab/ffmpeg/GLProgram;

    invoke-virtual {p1}, Lcom/pilotlab/ffmpeg/GLProgram;->buildProgram()V

    :cond_d
    return-void
.end method

.method public update(II)V
    .registers 6

    if-lez p1, :cond_48

    if-lez p2, :cond_48

    .line 70
    iget v0, p0, Lcom/pilotlab/ffmpeg/GLFrameRenderer;->mScreenWidth:I

    if-lez v0, :cond_21

    iget v1, p0, Lcom/pilotlab/ffmpeg/GLFrameRenderer;->mScreenHeight:I

    if-lez v1, :cond_21

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    int-to-float v0, p2

    mul-float/2addr v0, v2

    int-to-float v2, p1

    div-float/2addr v0, v2

    cmpl-float v0, v1, v0

    if-nez v0, :cond_21

    .line 74
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/GLFrameRenderer;->prog:Lcom/pilotlab/ffmpeg/GLProgram;

    sget-object v1, Lcom/pilotlab/ffmpeg/GLProgram;->squareVertices:[F

    invoke-virtual {v0, v1}, Lcom/pilotlab/ffmpeg/GLProgram;->createBuffers([F)V

    .line 86
    :cond_21
    iget v0, p0, Lcom/pilotlab/ffmpeg/GLFrameRenderer;->mVideoWidth:I

    if-eq p1, v0, :cond_48

    iget v0, p0, Lcom/pilotlab/ffmpeg/GLFrameRenderer;->mVideoHeight:I

    if-eq p2, v0, :cond_48

    .line 87
    iput p1, p0, Lcom/pilotlab/ffmpeg/GLFrameRenderer;->mVideoWidth:I

    .line 88
    iput p2, p0, Lcom/pilotlab/ffmpeg/GLFrameRenderer;->mVideoHeight:I

    mul-int/2addr p1, p2

    .line 90
    div-int/lit8 p2, p1, 0x4

    .line 91
    monitor-enter p0

    .line 92
    :try_start_31
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/ffmpeg/GLFrameRenderer;->y:Ljava/nio/ByteBuffer;

    .line 93
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/ffmpeg/GLFrameRenderer;->u:Ljava/nio/ByteBuffer;

    .line 94
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/ffmpeg/GLFrameRenderer;->v:Ljava/nio/ByteBuffer;

    .line 95
    monitor-exit p0

    goto :goto_48

    :catchall_45
    move-exception p1

    monitor-exit p0
    :try_end_47
    .catchall {:try_start_31 .. :try_end_47} :catchall_45

    throw p1

    :cond_48
    :goto_48
    return-void
.end method

.method public update([B[B[B)V
    .registers 7

    .line 105
    monitor-enter p0

    .line 106
    :try_start_1
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/GLFrameRenderer;->y:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 107
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/GLFrameRenderer;->u:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 108
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/GLFrameRenderer;->v:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 109
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/GLFrameRenderer;->y:Ljava/nio/ByteBuffer;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 110
    iget-object p1, p0, Lcom/pilotlab/ffmpeg/GLFrameRenderer;->u:Ljava/nio/ByteBuffer;

    array-length v0, p2

    invoke-virtual {p1, p2, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 111
    iget-object p1, p0, Lcom/pilotlab/ffmpeg/GLFrameRenderer;->v:Ljava/nio/ByteBuffer;

    array-length p2, p3

    invoke-virtual {p1, p3, v2, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 112
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_2a

    .line 114
    iget-object p1, p0, Lcom/pilotlab/ffmpeg/GLFrameRenderer;->mTargetSurface:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void

    :catchall_2a
    move-exception p1

    .line 112
    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p1
.end method
