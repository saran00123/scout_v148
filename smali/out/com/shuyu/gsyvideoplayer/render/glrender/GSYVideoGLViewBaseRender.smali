.class public abstract Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;
.super Ljava/lang/Object;
.source "GSYVideoGLViewBaseRender.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field protected mChangeProgram:Z

.field protected mChangeProgramSupportError:Z

.field protected mCurrentVideoHeight:I

.field protected mCurrentVideoWidth:I

.field protected mCurrentViewHeight:I

.field protected mCurrentViewWidth:I

.field protected mGSYSurfaceListener:Lcom/shuyu/gsyvideoplayer/render/view/listener/GLSurfaceListener;

.field protected mGSYVideoGLRenderErrorListener:Lcom/shuyu/gsyvideoplayer/render/view/listener/GSYVideoGLRenderErrorListener;

.field protected mHandler:Landroid/os/Handler;

.field protected mHighShot:Z

.field protected mMVPMatrix:[F

.field protected mSTMatrix:[F

.field protected mSurfaceView:Landroid/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->mHighShot:Z

    const/16 v1, 0x10

    .line 37
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->mMVPMatrix:[F

    .line 39
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->mSTMatrix:[F

    .line 41
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->mCurrentViewWidth:I

    .line 43
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->mCurrentViewHeight:I

    .line 45
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->mCurrentVideoWidth:I

    .line 47
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->mCurrentVideoHeight:I

    .line 49
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->mChangeProgram:Z

    .line 51
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->mChangeProgramSupportError:Z

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected checkGlError(Ljava/lang/String;)V
    .registers 5

    .line 125
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_27

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": glError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender$2;-><init>(Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_27
    return-void
.end method

.method protected createBitmapFromGLSurface(IIIILjavax/microedition/khronos/opengles/GL10;)Landroid/graphics/Bitmap;
    .registers 19

    move/from16 v8, p3

    move/from16 v9, p4

    mul-int v0, v8, v9

    .line 144
    new-array v10, v0, [I

    .line 145
    new-array v11, v0, [I

    .line 146
    invoke-static {v10}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v7

    const/4 v12, 0x0

    .line 147
    invoke-virtual {v7, v12}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move-object/from16 v0, p5

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 149
    :try_start_1e
    invoke-interface/range {v0 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    move v0, v12

    :goto_22
    if-ge v0, v9, :cond_4b

    mul-int v1, v0, v8

    sub-int v2, v9, v0

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v2, v8

    move v3, v12

    :goto_2c
    if-ge v3, v8, :cond_48

    add-int v4, v1, v3

    .line 157
    aget v4, v10, v4

    shr-int/lit8 v5, v4, 0x10

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v6, v4, 0x10

    const/high16 v7, 0xff0000

    and-int/2addr v6, v7

    const v7, -0xff0100

    and-int/2addr v4, v7

    or-int/2addr v4, v6

    or-int/2addr v4, v5

    add-int v5, v2, v3

    .line 161
    aput v4, v11, v5
    :try_end_45
    .catch Landroid/opengl/GLException; {:try_start_1e .. :try_end_45} :catch_5e

    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_4b
    move-object v0, p0

    .line 167
    iget-boolean v1, v0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->mHighShot:Z

    if-eqz v1, :cond_57

    .line 168
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v8, v9, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 170
    :cond_57
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v8, v9, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    :catch_5e
    move-object v0, p0

    const/4 v1, 0x0

    return-object v1
.end method

.method protected createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    const v0, 0x8b31

    .line 93
    invoke-virtual {p0, v0, p1}, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->loadShader(ILjava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_b

    return v0

    :cond_b
    const v1, 0x8b30

    .line 97
    invoke-virtual {p0, v1, p2}, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->loadShader(ILjava/lang/String;)I

    move-result p2

    if-nez p2, :cond_15

    return v0

    .line 103
    :cond_15
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    if-eqz v1, :cond_49

    .line 105
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string p1, "glAttachShader"

    .line 106
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->checkGlError(Ljava/lang/String;)V

    .line 107
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 108
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->checkGlError(Ljava/lang/String;)V

    .line 109
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p1, 0x1

    .line 110
    new-array p2, p1, [I

    const v2, 0x8b82

    .line 111
    invoke-static {v1, v2, p2, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 113
    aget p2, p2, v0

    if-eq p2, p1, :cond_49

    const-string p1, "Could not link program: "

    .line 114
    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    .line 115
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    .line 116
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_4a

    :cond_49
    move v0, v1

    :goto_4a
    return v0
.end method

.method public getCurrentVideoHeight()I
    .registers 2

    .line 241
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->mCurrentVideoHeight:I

    return v0
.end method

.method public getCurrentVideoWidth()I
    .registers 2

    .line 233
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->mCurrentVideoWidth:I

    return v0
.end method

.method public getCurrentViewHeight()I
    .registers 2

    .line 225
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->mCurrentViewHeight:I

    return v0
.end method

.method public getCurrentViewWidth()I
    .registers 2

    .line 217
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->mCurrentViewWidth:I

    return v0
.end method

.method public getEffect()Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMVPMatrix()[F
    .registers 2

    .line 180
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->mMVPMatrix:[F

    return-object v0
.end method

.method public initRenderSize()V
    .registers 6

    .line 249
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->mCurrentViewWidth:I

    if-eqz v0, :cond_24

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->mCurrentViewHeight:I

    if-eqz v1, :cond_24

    .line 250
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->mMVPMatrix:[F

    const/4 v2, 0x0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v3}, Landroid/opengl/GLSurfaceView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    iget v3, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->mCurrentViewHeight:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 251
    invoke-virtual {v4}, Landroid/opengl/GLSurfaceView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    .line 250
    invoke-static {v1, v2, v0, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    :cond_24
    return-void
.end method

.method protected loadShader(ILjava/lang/String;)I
    .registers 6

    .line 75
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3e

    .line 77
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 78
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p2, 0x1

    .line 79
    new-array p2, p2, [I

    const v2, 0x8b81

    .line 80
    invoke-static {v0, v2, p2, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 82
    aget p2, p2, v1

    if-nez p2, :cond_3e

    .line 83
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not compile shader "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    .line 84
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    .line 85
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v0, v1

    :cond_3e
    return v0
.end method

.method public abstract releaseAll()V
.end method

.method public sendSurfaceForPlayer(Landroid/view/Surface;)V
    .registers 4

    .line 64
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender$1;

    invoke-direct {v1, p0, p1}, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender$1;-><init>(Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;Landroid/view/Surface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setCurrentVideoHeight(I)V
    .registers 2

    .line 245
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->mCurrentVideoHeight:I

    return-void
.end method

.method public setCurrentVideoWidth(I)V
    .registers 2

    .line 237
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->mCurrentVideoWidth:I

    return-void
.end method

.method public setCurrentViewHeight(I)V
    .registers 2

    .line 229
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->mCurrentViewHeight:I

    return-void
.end method

.method public setCurrentViewWidth(I)V
    .registers 2

    .line 221
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->mCurrentViewWidth:I

    return-void
.end method

.method public setEffect(Lcom/shuyu/gsyvideoplayer/render/view/GSYVideoGLView$ShaderInterface;)V
    .registers 2

    return-void
.end method

.method public setGSYSurfaceListener(Lcom/shuyu/gsyvideoplayer/render/view/listener/GLSurfaceListener;)V
    .registers 2

    .line 176
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->mGSYSurfaceListener:Lcom/shuyu/gsyvideoplayer/render/view/listener/GLSurfaceListener;

    return-void
.end method

.method public setGSYVideoGLRenderErrorListener(Lcom/shuyu/gsyvideoplayer/render/view/listener/GSYVideoGLRenderErrorListener;)V
    .registers 2

    .line 256
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->mGSYVideoGLRenderErrorListener:Lcom/shuyu/gsyvideoplayer/render/view/listener/GSYVideoGLRenderErrorListener;

    return-void
.end method

.method public setGSYVideoShotListener(Lcom/shuyu/gsyvideoplayer/listener/GSYVideoShotListener;Z)V
    .registers 3

    return-void
.end method

.method public setMVPMatrix([F)V
    .registers 2

    .line 187
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->mMVPMatrix:[F

    return-void
.end method

.method public setSurfaceView(Landroid/opengl/GLSurfaceView;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/render/glrender/GSYVideoGLViewBaseRender;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    return-void
.end method

.method public takeShotPic()V
    .registers 1

    return-void
.end method
