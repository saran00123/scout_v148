.class Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;
.super Ljava/lang/Object;
.source "VideoDecoderGLFrameRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nvarying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\nuniform mat3 mColorConversion;\nvoid main() {\n  vec3 yuv;\n  yuv.x = texture2D(y_tex, interp_tc_y).r - 0.0625;\n  yuv.y = texture2D(u_tex, interp_tc_u).r - 0.5;\n  yuv.z = texture2D(v_tex, interp_tc_v).r - 0.5;\n  gl_FragColor = vec4(mColorConversion * yuv, 1.0);\n}\n"

.field private static final TEXTURE_UNIFORMS:[Ljava/lang/String;

.field private static final TEXTURE_VERTICES:Ljava/nio/FloatBuffer;

.field private static final VERTEX_SHADER:Ljava/lang/String; = "varying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nattribute vec4 in_pos;\nattribute vec2 in_tc_y;\nattribute vec2 in_tc_u;\nattribute vec2 in_tc_v;\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc_y = in_tc_y;\n  interp_tc_u = in_tc_u;\n  interp_tc_v = in_tc_v;\n}\n"

.field private static final kColorConversion2020:[F

.field private static final kColorConversion601:[F

.field private static final kColorConversion709:[F


# instance fields
.field private colorMatrixLocation:I

.field private final pendingOutputBufferReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private previousStrides:[I

.field private previousWidths:[I

.field private program:I

.field private renderedOutputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

.field private final surfaceView:Landroid/opengl/GLSurfaceView;

.field private texLocations:[I

.field private textureCoords:[Ljava/nio/FloatBuffer;

.field private final yuvTextures:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x9

    .line 38
    new-array v1, v0, [F

    fill-array-data v1, :array_34

    sput-object v1, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->kColorConversion601:[F

    .line 44
    new-array v1, v0, [F

    fill-array-data v1, :array_4a

    sput-object v1, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->kColorConversion709:[F

    .line 50
    new-array v0, v0, [F

    fill-array-data v0, :array_60

    sput-object v0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->kColorConversion2020:[F

    const-string/jumbo v0, "y_tex"

    const-string/jumbo v1, "u_tex"

    const-string/jumbo v2, "v_tex"

    .line 70
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->TEXTURE_UNIFORMS:[Ljava/lang/String;

    const/16 v0, 0x8

    .line 88
    new-array v0, v0, [F

    fill-array-data v0, :array_76

    .line 89
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/GlUtil;->createBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->TEXTURE_VERTICES:Ljava/nio/FloatBuffer;

    return-void

    :array_34
    .array-data 4
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x0
        -0x41374bc7    # -0.392f
        0x40011687    # 2.017f
        0x3fcc49ba    # 1.596f
        -0x40afdf3b    # -0.813f
        0x0
    .end array-data

    :array_4a
    .array-data 4
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x0
        -0x41a5e354    # -0.213f
        0x40072b02    # 2.112f
        0x3fe58106    # 1.793f
        -0x40f78d50    # -0.533f
        0x0
    .end array-data

    :array_60
    .array-data 4
        0x3f958106    # 1.168f
        0x3f958106    # 1.168f
        0x3f958106    # 1.168f
        0x0
        -0x41bf7cee    # -0.188f
        0x400978d5    # 2.148f
        0x3fd76c8b    # 1.683f
        -0x40d91687    # -0.652f
        0x0
    .end array-data

    :array_76
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/opengl/GLSurfaceView;)V
    .registers 6

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 91
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->yuvTextures:[I

    .line 109
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->surfaceView:Landroid/opengl/GLSurfaceView;

    .line 110
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->pendingOutputBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 111
    new-array p1, v0, [Ljava/nio/FloatBuffer;

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->textureCoords:[Ljava/nio/FloatBuffer;

    .line 112
    new-array p1, v0, [I

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->texLocations:[I

    .line 113
    new-array p1, v0, [I

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->previousWidths:[I

    .line 114
    new-array p1, v0, [I

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->previousStrides:[I

    const/4 p1, 0x0

    :goto_22
    if-ge p1, v0, :cond_30

    .line 116
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->previousWidths:[I

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->previousStrides:[I

    const/4 v3, -0x1

    aput v3, v2, p1

    aput v3, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_22

    :cond_30
    return-void
.end method

.method private setupTextures()V
    .registers 6

    .line 256
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->yuvTextures:[I

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    :goto_7
    if-ge v1, v2, :cond_43

    .line 258
    iget v0, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->program:I

    sget-object v3, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->TEXTURE_UNIFORMS:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v0, 0x84c0

    add-int/2addr v0, v1

    .line 259
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 260
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->yuvTextures:[I

    aget v0, v0, v1

    const/16 v3, 0xde1

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2801

    const v4, 0x46180400    # 9729.0f

    .line 261
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    .line 262
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    const v4, 0x47012f00    # 33071.0f

    .line 263
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2803

    .line 265
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 268
    :cond_43
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 20

    move-object/from16 v0, p0

    .line 154
    iget-object v1, v0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->pendingOutputBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    .line 155
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    if-nez v1, :cond_12

    .line 156
    iget-object v2, v0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->renderedOutputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    if-nez v2, :cond_12

    return-void

    :cond_12
    if-eqz v1, :cond_1d

    .line 161
    iget-object v2, v0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->renderedOutputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    if-eqz v2, :cond_1b

    .line 162
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->release()V

    .line 164
    :cond_1b
    iput-object v1, v0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->renderedOutputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    .line 167
    :cond_1d
    iget-object v1, v0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->renderedOutputBuffer:Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    .line 170
    sget-object v2, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->kColorConversion709:[F

    .line 171
    iget v3, v1, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->colorspace:I

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_33

    if-eq v3, v4, :cond_30

    goto :goto_35

    .line 176
    :cond_30
    sget-object v2, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->kColorConversion2020:[F

    goto :goto_35

    .line 173
    :cond_33
    sget-object v2, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->kColorConversion601:[F

    .line 183
    :goto_35
    iget v3, v0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->colorMatrixLocation:I

    const/4 v6, 0x0

    invoke-static {v3, v5, v6, v2, v6}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 190
    iget-object v2, v1, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->yuvStrides:[I

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 191
    iget-object v3, v1, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/nio/ByteBuffer;

    move v7, v6

    :goto_4c
    const/4 v8, 0x2

    if-ge v7, v4, :cond_83

    if-nez v7, :cond_54

    .line 194
    iget v8, v1, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->height:I

    goto :goto_59

    :cond_54
    iget v9, v1, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->height:I

    add-int/2addr v9, v5

    div-int/lit8 v8, v9, 0x2

    :goto_59
    move v13, v8

    const v8, 0x84c0

    add-int/2addr v8, v7

    .line 195
    invoke-static {v8}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v8, 0xde1

    .line 196
    iget-object v9, v0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->yuvTextures:[I

    aget v9, v9, v7

    invoke-static {v8, v9}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v8, 0xcf5

    .line 197
    invoke-static {v8, v5}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    const/16 v9, 0xde1

    const/4 v10, 0x0

    const/16 v11, 0x1909

    .line 198
    aget v12, v2, v7

    const/4 v14, 0x0

    const/16 v15, 0x1909

    const/16 v16, 0x1401

    aget-object v17, v3, v7

    invoke-static/range {v9 .. v17}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4c

    .line 210
    :cond_83
    new-array v3, v4, [I

    .line 211
    iget v1, v1, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->width:I

    aput v1, v3, v6

    .line 215
    aget v1, v3, v6

    add-int/2addr v1, v5

    div-int/2addr v1, v8

    aput v1, v3, v8

    aput v1, v3, v5

    move v1, v6

    :goto_92
    const/4 v7, 0x4

    const/4 v9, 0x5

    if-ge v1, v4, :cond_f7

    .line 218
    iget-object v10, v0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->previousWidths:[I

    aget v10, v10, v1

    aget v11, v3, v1

    if-ne v10, v11, :cond_a6

    iget-object v10, v0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->previousStrides:[I

    aget v10, v10, v1

    aget v11, v2, v1

    if-eq v10, v11, :cond_f4

    .line 219
    :cond_a6
    aget v10, v2, v1

    if-eqz v10, :cond_ac

    move v10, v5

    goto :goto_ad

    :cond_ac
    move v10, v6

    :goto_ad
    invoke-static {v10}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 220
    aget v10, v3, v1

    int-to-float v10, v10

    aget v11, v2, v1

    int-to-float v11, v11

    div-float/2addr v10, v11

    .line 223
    iget-object v11, v0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->textureCoords:[Ljava/nio/FloatBuffer;

    const/16 v12, 0x8

    new-array v12, v12, [F

    const/4 v13, 0x0

    aput v13, v12, v6

    aput v13, v12, v5

    aput v13, v12, v8

    const/high16 v14, 0x3f800000    # 1.0f

    aput v14, v12, v4

    aput v10, v12, v7

    aput v13, v12, v9

    const/4 v7, 0x6

    aput v10, v12, v7

    const/4 v7, 0x7

    aput v14, v12, v7

    .line 224
    invoke-static {v12}, Lcom/google/android/exoplayer2/util/GlUtil;->createBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v7

    aput-object v7, v11, v1

    .line 226
    iget-object v7, v0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->texLocations:[I

    aget v9, v7, v1

    const/4 v10, 0x2

    const/16 v11, 0x1406

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v7, v0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->textureCoords:[Ljava/nio/FloatBuffer;

    aget-object v14, v7, v1

    invoke-static/range {v9 .. v14}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 233
    iget-object v7, v0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->previousWidths:[I

    aget v9, v3, v1

    aput v9, v7, v1

    .line 234
    iget-object v7, v0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->previousStrides:[I

    aget v9, v2, v1

    aput v9, v7, v1

    :cond_f4
    add-int/lit8 v1, v1, 0x1

    goto :goto_92

    :cond_f7
    const/16 v1, 0x4000

    .line 238
    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 239
    invoke-static {v9, v6, v7}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 240
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 4

    const/4 p1, 0x0

    .line 148
    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 9

    const-string/jumbo p1, "varying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nattribute vec4 in_pos;\nattribute vec2 in_tc_y;\nattribute vec2 in_tc_u;\nattribute vec2 in_tc_v;\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc_y = in_tc_y;\n  interp_tc_u = in_tc_u;\n  interp_tc_v = in_tc_v;\n}\n"

    const-string p2, "precision mediump float;\nvarying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\nuniform mat3 mColorConversion;\nvoid main() {\n  vec3 yuv;\n  yuv.x = texture2D(y_tex, interp_tc_y).r - 0.0625;\n  yuv.y = texture2D(u_tex, interp_tc_u).r - 0.5;\n  yuv.z = texture2D(v_tex, interp_tc_v).r - 0.5;\n  gl_FragColor = vec4(mColorConversion * yuv, 1.0);\n}\n"

    .line 122
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/GlUtil;->compileProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->program:I

    .line 123
    iget p1, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->program:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 124
    iget p1, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->program:I

    const-string p2, "in_pos"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 125
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 126
    sget-object v5, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->TEXTURE_VERTICES:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 133
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->texLocations:[I

    iget p2, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->program:I

    const-string v0, "in_tc_y"

    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    aput p2, p1, v0

    .line 134
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->texLocations:[I

    aget p1, p1, v0

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 135
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->texLocations:[I

    iget p2, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->program:I

    const-string v0, "in_tc_u"

    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p2

    const/4 v0, 0x1

    aput p2, p1, v0

    .line 136
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->texLocations:[I

    aget p1, p1, v0

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 137
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->texLocations:[I

    iget p2, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->program:I

    const-string v0, "in_tc_v"

    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p2

    const/4 v0, 0x2

    aput p2, p1, v0

    .line 138
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->texLocations:[I

    aget p1, p1, v0

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 139
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 140
    iget p1, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->program:I

    const-string p2, "mColorConversion"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->colorMatrixLocation:I

    .line 141
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 142
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->setupTextures()V

    .line 143
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    return-void
.end method

.method public setOutputBuffer(Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;)V
    .registers 3

    .line 246
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->pendingOutputBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 247
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;

    if-eqz p1, :cond_d

    .line 250
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBuffer;->release()V

    .line 252
    :cond_d
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/VideoDecoderGLFrameRenderer;->surfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method
