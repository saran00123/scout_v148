.class final Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;
.super Ljava/lang/Object;
.source "ProjectionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;
    }
.end annotation


# static fields
.field private static final FRAGMENT_SHADER_CODE:[Ljava/lang/String;

.field private static final TEX_MATRIX_BOTTOM:[F

.field private static final TEX_MATRIX_LEFT:[F

.field private static final TEX_MATRIX_RIGHT:[F

.field private static final TEX_MATRIX_TOP:[F

.field private static final TEX_MATRIX_WHOLE:[F

.field private static final VERTEX_SHADER_CODE:[Ljava/lang/String;


# instance fields
.field private leftMeshData:Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mvpMatrixHandle:I

.field private positionHandle:I

.field private program:I

.field private rightMeshData:Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private stereoMode:I

.field private texCoordsHandle:I

.field private textureHandle:I

.field private uTexMatrixHandle:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const-string/jumbo v0, "uniform mat4 uMvpMatrix;"

    const-string/jumbo v1, "uniform mat3 uTexMatrix;"

    const-string v2, "attribute vec4 aPosition;"

    const-string v3, "attribute vec2 aTexCoords;"

    const-string/jumbo v4, "varying vec2 vTexCoords;"

    const-string/jumbo v5, "void main() {"

    const-string v6, "  gl_Position = uMvpMatrix * aPosition;"

    const-string v7, "  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;"

    const-string/jumbo v8, "}"

    .line 48
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->VERTEX_SHADER_CODE:[Ljava/lang/String;

    const-string v1, "#extension GL_OES_EGL_image_external : require"

    const-string v2, "precision mediump float;"

    const-string/jumbo v3, "uniform samplerExternalOES uTexture;"

    const-string/jumbo v4, "varying vec2 vTexCoords;"

    const-string/jumbo v5, "void main() {"

    const-string v6, "  gl_FragColor = texture2D(uTexture, vTexCoords);"

    const-string/jumbo v7, "}"

    .line 62
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->FRAGMENT_SHADER_CODE:[Ljava/lang/String;

    const/16 v0, 0x9

    .line 77
    new-array v1, v0, [F

    fill-array-data v1, :array_5c

    sput-object v1, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->TEX_MATRIX_WHOLE:[F

    .line 80
    new-array v1, v0, [F

    fill-array-data v1, :array_72

    sput-object v1, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->TEX_MATRIX_TOP:[F

    .line 83
    new-array v1, v0, [F

    fill-array-data v1, :array_88

    sput-object v1, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->TEX_MATRIX_BOTTOM:[F

    .line 86
    new-array v1, v0, [F

    fill-array-data v1, :array_9e

    sput-object v1, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->TEX_MATRIX_LEFT:[F

    .line 89
    new-array v0, v0, [F

    fill-array-data v0, :array_b4

    sput-object v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->TEX_MATRIX_RIGHT:[F

    return-void

    nop

    :array_5c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_72
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x41000000    # -0.5f
        0x0
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_88
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x41000000    # -0.5f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_9e
    .array-data 4
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_b4
    .array-data 4
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSupported(Lcom/google/android/exoplayer2/video/spherical/Projection;)Z
    .registers 5

    .line 39
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/Projection;->leftMesh:Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    .line 40
    iget-object p0, p0, Lcom/google/android/exoplayer2/video/spherical/Projection;->rightMesh:Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    .line 41
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;->getSubMeshCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_23

    .line 42
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;->getSubMesh(I)Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;->textureId:I

    if-nez v0, :cond_23

    .line 43
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;->getSubMeshCount()I

    move-result v0

    if-ne v0, v3, :cond_23

    .line 44
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;->getSubMesh(I)Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    move-result-object p0

    iget p0, p0, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;->textureId:I

    if-nez p0, :cond_23

    move v2, v3

    :cond_23
    return v2
.end method


# virtual methods
.method draw(I[FZ)V
    .registers 22

    move-object/from16 v0, p0

    if-eqz p3, :cond_7

    .line 141
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->rightMeshData:Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;

    goto :goto_9

    :cond_7
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->leftMeshData:Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;

    :goto_9
    if-nez v1, :cond_c

    return-void

    .line 147
    :cond_c
    iget v2, v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->program:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 148
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 150
    iget v2, v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->positionHandle:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 151
    iget v2, v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->texCoordsHandle:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 152
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 155
    iget v2, v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->stereoMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2e

    if-eqz p3, :cond_2b

    .line 156
    sget-object v2, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->TEX_MATRIX_BOTTOM:[F

    goto :goto_3b

    :cond_2b
    sget-object v2, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->TEX_MATRIX_TOP:[F

    goto :goto_3b

    :cond_2e
    const/4 v4, 0x2

    if-ne v2, v4, :cond_39

    if-eqz p3, :cond_36

    .line 158
    sget-object v2, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->TEX_MATRIX_RIGHT:[F

    goto :goto_3b

    :cond_36
    sget-object v2, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->TEX_MATRIX_LEFT:[F

    goto :goto_3b

    .line 160
    :cond_39
    sget-object v2, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->TEX_MATRIX_WHOLE:[F

    .line 162
    :goto_3b
    iget v4, v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->uTexMatrixHandle:I

    const/4 v5, 0x0

    invoke-static {v4, v3, v5, v2, v5}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 164
    iget v2, v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->mvpMatrixHandle:I

    move-object/from16 v4, p2

    invoke-static {v2, v3, v5, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const v2, 0x84c0

    .line 165
    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const v2, 0x8d65

    move/from16 v3, p1

    .line 166
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 167
    iget v2, v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->textureHandle:I

    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 168
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 171
    iget v6, v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->positionHandle:I

    const/4 v7, 0x3

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/16 v10, 0xc

    .line 177
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;->access$000(Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;)Ljava/nio/FloatBuffer;

    move-result-object v11

    .line 171
    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 178
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 181
    iget v12, v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->texCoordsHandle:I

    const/4 v13, 0x2

    const/16 v14, 0x1406

    const/4 v15, 0x0

    const/16 v16, 0x8

    .line 187
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;->access$100(Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;)Ljava/nio/FloatBuffer;

    move-result-object v17

    .line 181
    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 188
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 191
    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;->access$200(Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;)I

    move-result v2

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;->access$300(Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;)I

    move-result v1

    invoke-static {v2, v5, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 192
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 194
    iget v1, v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->positionHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 195
    iget v1, v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->texCoordsHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void
.end method

.method init()V
    .registers 3

    .line 123
    sget-object v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->VERTEX_SHADER_CODE:[Ljava/lang/String;

    sget-object v1, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->FRAGMENT_SHADER_CODE:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/GlUtil;->compileProgram([Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->program:I

    .line 124
    iget v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->program:I

    const-string/jumbo v1, "uMvpMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->mvpMatrixHandle:I

    .line 125
    iget v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->program:I

    const-string/jumbo v1, "uTexMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->uTexMatrixHandle:I

    .line 126
    iget v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->program:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->positionHandle:I

    .line 127
    iget v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->program:I

    const-string v1, "aTexCoords"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->texCoordsHandle:I

    .line 128
    iget v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->program:I

    const-string/jumbo v1, "uTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->textureHandle:I

    return-void
.end method

.method public setProjection(Lcom/google/android/exoplayer2/video/spherical/Projection;)V
    .registers 5

    .line 112
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->isSupported(Lcom/google/android/exoplayer2/video/spherical/Projection;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 115
    :cond_7
    iget v0, p1, Lcom/google/android/exoplayer2/video/spherical/Projection;->stereoMode:I

    iput v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->stereoMode:I

    .line 116
    new-instance v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;

    iget-object v1, p1, Lcom/google/android/exoplayer2/video/spherical/Projection;->leftMesh:Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;->getSubMesh(I)Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;-><init>(Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->leftMeshData:Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;

    .line 118
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/video/spherical/Projection;->singleMesh:Z

    if-eqz v0, :cond_20

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->leftMeshData:Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;

    goto :goto_2c

    :cond_20
    new-instance v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;

    iget-object p1, p1, Lcom/google/android/exoplayer2/video/spherical/Projection;->rightMesh:Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;->getSubMesh(I)Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;-><init>(Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;)V

    move-object p1, v0

    :goto_2c
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->rightMeshData:Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;

    return-void
.end method

.method shutdown()V
    .registers 2

    .line 200
    iget v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->program:I

    if-eqz v0, :cond_7

    .line 201
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    :cond_7
    return-void
.end method
