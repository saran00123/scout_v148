.class public Lcom/pilotlab/ffmpeg/GLProgram;
.super Ljava/lang/Object;
.source "GLProgram.java"


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nuniform sampler2D tex_y;\nuniform sampler2D tex_u;\nuniform sampler2D tex_v;\nvarying vec2 tc;\nvoid main() {\nvec4 c = vec4((texture2D(tex_y, tc).r - 16./255.) * 1.164);\nvec4 U = vec4(texture2D(tex_u, tc).r - 128./255.);\nvec4 V = vec4(texture2D(tex_v, tc).r - 128./255.);\nc += V * vec4(1.596, -0.813, 0, 0);\nc += U * vec4(0, -0.392, 2.017, 0);\nc.a = 1.0;\ngl_FragColor = c;\n}\n"

.field private static final VERTEX_SHADER:Ljava/lang/String; = "attribute vec4 vPosition;\nattribute vec2 a_texCoord;\nvarying vec2 tc;\nvoid main() {\ngl_Position = vPosition;\ntc = a_texCoord;\n}\n"

.field private static coordVertices:[F

.field public static squareVertices:[F

.field private static squareVertices1:[F

.field private static squareVertices2:[F

.field private static squareVertices3:[F

.field private static squareVertices4:[F


# instance fields
.field private _coordHandle:I

.field private _coord_buffer:Ljava/nio/ByteBuffer;

.field private _positionHandle:I

.field private _program:I

.field private _tIIIindex:I

.field private _tIIindex:I

.field private _tIindex:I

.field private _textureI:I

.field private _textureII:I

.field private _textureIII:I

.field private _uhandle:I

.field private _utid:I

.field private _vertice_buffer:Ljava/nio/ByteBuffer;

.field private _vertices:[F

.field private _vhandle:I

.field private _video_height:I

.field private _video_width:I

.field private _vtid:I

.field private _yhandle:I

.field private _ytid:I

.field private isProgBuilt:Z

.field public final mWinPosition:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x8

    .line 37
    new-array v1, v0, [F

    fill-array-data v1, :array_2e

    sput-object v1, Lcom/pilotlab/ffmpeg/GLProgram;->squareVertices:[F

    .line 38
    new-array v1, v0, [F

    fill-array-data v1, :array_42

    sput-object v1, Lcom/pilotlab/ffmpeg/GLProgram;->squareVertices1:[F

    .line 39
    new-array v1, v0, [F

    fill-array-data v1, :array_56

    sput-object v1, Lcom/pilotlab/ffmpeg/GLProgram;->squareVertices2:[F

    .line 40
    new-array v1, v0, [F

    fill-array-data v1, :array_6a

    sput-object v1, Lcom/pilotlab/ffmpeg/GLProgram;->squareVertices3:[F

    .line 41
    new-array v1, v0, [F

    fill-array-data v1, :array_7e

    sput-object v1, Lcom/pilotlab/ffmpeg/GLProgram;->squareVertices4:[F

    .line 42
    new-array v0, v0, [F

    fill-array-data v0, :array_92

    sput-object v0, Lcom/pilotlab/ffmpeg/GLProgram;->coordVertices:[F

    return-void

    nop

    :array_2e
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_42
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_56
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_6a
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
    .end array-data

    :array_7e
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_92
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_positionHandle:I

    .line 23
    iput v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_coordHandle:I

    .line 25
    iput v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_yhandle:I

    .line 26
    iput v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_uhandle:I

    .line 27
    iput v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_vhandle:I

    .line 28
    iput v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_ytid:I

    .line 29
    iput v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_utid:I

    .line 30
    iput v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_vtid:I

    .line 33
    iput v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_video_width:I

    .line 34
    iput v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_video_height:I

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->isProgBuilt:Z

    if-ltz p1, :cond_28

    const/4 v0, 0x4

    if-gt p1, v0, :cond_28

    .line 48
    iput p1, p0, Lcom/pilotlab/ffmpeg/GLProgram;->mWinPosition:I

    .line 49
    iget p1, p0, Lcom/pilotlab/ffmpeg/GLProgram;->mWinPosition:I

    invoke-virtual {p0, p1}, Lcom/pilotlab/ffmpeg/GLProgram;->setup(I)V

    return-void

    .line 51
    :cond_28
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Index can only be 0 to 4"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkGlError(Ljava/lang/String;)V
    .registers 5

    .line 312
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 313
    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": glError "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private loadShader(ILjava/lang/String;)I
    .registers 5

    .line 278
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    .line 280
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 281
    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p2, 0x1

    .line 282
    new-array p2, p2, [I

    const v1, 0x8b81

    .line 283
    invoke-static {p1, v1, p2, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 284
    aget p2, p2, v0

    if-nez p2, :cond_1e

    .line 285
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move p1, v0

    :cond_1e
    return p1
.end method


# virtual methods
.method public buildProgram()V
    .registers 4

    .line 111
    iget v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_program:I

    if-gtz v0, :cond_e

    const-string v0, "attribute vec4 vPosition;\nattribute vec2 a_texCoord;\nvarying vec2 tc;\nvoid main() {\ngl_Position = vPosition;\ntc = a_texCoord;\n}\n"

    const-string v1, "precision mediump float;\nuniform sampler2D tex_y;\nuniform sampler2D tex_u;\nuniform sampler2D tex_v;\nvarying vec2 tc;\nvoid main() {\nvec4 c = vec4((texture2D(tex_y, tc).r - 16./255.) * 1.164);\nvec4 U = vec4(texture2D(tex_u, tc).r - 128./255.);\nvec4 V = vec4(texture2D(tex_v, tc).r - 128./255.);\nc += V * vec4(1.596, -0.813, 0, 0);\nc += U * vec4(0, -0.392, 2.017, 0);\nc.a = 1.0;\ngl_FragColor = c;\n}\n"

    .line 112
    invoke-virtual {p0, v0, v1}, Lcom/pilotlab/ffmpeg/GLProgram;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_program:I

    .line 115
    :cond_e
    iget v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_program:I

    const-string v1, "vPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_positionHandle:I

    const-string v0, "glGetAttribLocation vPosition"

    .line 116
    invoke-direct {p0, v0}, Lcom/pilotlab/ffmpeg/GLProgram;->checkGlError(Ljava/lang/String;)V

    .line 117
    iget v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_positionHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_92

    .line 120
    iget v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_program:I

    const-string v2, "a_texCoord"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_coordHandle:I

    const-string v0, "glGetAttribLocation a_texCoord"

    .line 121
    invoke-direct {p0, v0}, Lcom/pilotlab/ffmpeg/GLProgram;->checkGlError(Ljava/lang/String;)V

    .line 122
    iget v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_coordHandle:I

    if-eq v0, v1, :cond_8a

    .line 125
    iget v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_program:I

    const-string v2, "tex_y"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_yhandle:I

    const-string v0, "glGetUniformLocation tex_y"

    .line 126
    invoke-direct {p0, v0}, Lcom/pilotlab/ffmpeg/GLProgram;->checkGlError(Ljava/lang/String;)V

    .line 127
    iget v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_yhandle:I

    if-eq v0, v1, :cond_82

    .line 130
    iget v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_program:I

    const-string v2, "tex_u"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_uhandle:I

    const-string v0, "glGetUniformLocation tex_u"

    .line 131
    invoke-direct {p0, v0}, Lcom/pilotlab/ffmpeg/GLProgram;->checkGlError(Ljava/lang/String;)V

    .line 132
    iget v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_uhandle:I

    if-eq v0, v1, :cond_7a

    .line 135
    iget v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_program:I

    const-string v2, "tex_v"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_vhandle:I

    const-string v0, "glGetUniformLocation tex_v"

    .line 136
    invoke-direct {p0, v0}, Lcom/pilotlab/ffmpeg/GLProgram;->checkGlError(Ljava/lang/String;)V

    .line 137
    iget v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_vhandle:I

    if-eq v0, v1, :cond_72

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->isProgBuilt:Z

    return-void

    .line 138
    :cond_72
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get uniform location for tex_v"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_7a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get uniform location for tex_u"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_82
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get uniform location for tex_y"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_8a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attribute location for a_texCoord"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_92
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attribute location for vPosition"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public buildTextures(Ljava/nio/Buffer;Ljava/nio/Buffer;Ljava/nio/Buffer;II)V
    .registers 30

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    .line 152
    iget v3, v0, Lcom/pilotlab/ffmpeg/GLProgram;->_video_width:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v3, :cond_13

    iget v3, v0, Lcom/pilotlab/ffmpeg/GLProgram;->_video_height:I

    if-eq v2, v3, :cond_11

    goto :goto_13

    :cond_11
    move v3, v4

    goto :goto_14

    :cond_13
    :goto_13
    move v3, v5

    :goto_14
    if-eqz v3, :cond_1a

    .line 154
    iput v1, v0, Lcom/pilotlab/ffmpeg/GLProgram;->_video_width:I

    .line 155
    iput v2, v0, Lcom/pilotlab/ffmpeg/GLProgram;->_video_height:I

    .line 159
    :cond_1a
    iget v1, v0, Lcom/pilotlab/ffmpeg/GLProgram;->_ytid:I

    const-string v2, "glDeleteTextures"

    const-string v6, "glGenTextures"

    if-ltz v1, :cond_24

    if-eqz v3, :cond_3e

    .line 160
    :cond_24
    iget v1, v0, Lcom/pilotlab/ffmpeg/GLProgram;->_ytid:I

    if-ltz v1, :cond_32

    .line 161
    new-array v7, v5, [I

    aput v1, v7, v4

    invoke-static {v5, v7, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 162
    invoke-direct {v0, v2}, Lcom/pilotlab/ffmpeg/GLProgram;->checkGlError(Ljava/lang/String;)V

    .line 165
    :cond_32
    new-array v1, v5, [I

    .line 166
    invoke-static {v5, v1, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 167
    invoke-direct {v0, v6}, Lcom/pilotlab/ffmpeg/GLProgram;->checkGlError(Ljava/lang/String;)V

    .line 168
    aget v1, v1, v4

    iput v1, v0, Lcom/pilotlab/ffmpeg/GLProgram;->_ytid:I

    .line 170
    :cond_3e
    iget v1, v0, Lcom/pilotlab/ffmpeg/GLProgram;->_ytid:I

    const/16 v7, 0xde1

    invoke-static {v7, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v1, "glBindTexture"

    .line 171
    invoke-direct {v0, v1}, Lcom/pilotlab/ffmpeg/GLProgram;->checkGlError(Ljava/lang/String;)V

    const/16 v8, 0xde1

    const/4 v9, 0x0

    const/16 v10, 0x1909

    .line 172
    iget v11, v0, Lcom/pilotlab/ffmpeg/GLProgram;->_video_width:I

    iget v12, v0, Lcom/pilotlab/ffmpeg/GLProgram;->_video_height:I

    const/4 v13, 0x0

    const/16 v14, 0x1909

    const/16 v15, 0x1401

    move-object/from16 v16, p1

    invoke-static/range {v8 .. v16}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const-string v1, "glTexImage2D"

    .line 174
    invoke-direct {v0, v1}, Lcom/pilotlab/ffmpeg/GLProgram;->checkGlError(Ljava/lang/String;)V

    const/high16 v1, 0x46180000    # 9728.0f

    const/16 v8, 0x2801

    .line 175
    invoke-static {v7, v8, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const v9, 0x46180400    # 9729.0f

    const/16 v10, 0x2800

    .line 176
    invoke-static {v7, v10, v9}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v11, 0x2802

    const v12, 0x812f

    .line 177
    invoke-static {v7, v11, v12}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v13, 0x2803

    .line 178
    invoke-static {v7, v13, v12}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 181
    iget v14, v0, Lcom/pilotlab/ffmpeg/GLProgram;->_utid:I

    if-ltz v14, :cond_84

    if-eqz v3, :cond_9e

    .line 182
    :cond_84
    iget v14, v0, Lcom/pilotlab/ffmpeg/GLProgram;->_utid:I

    if-ltz v14, :cond_92

    .line 183
    new-array v15, v5, [I

    aput v14, v15, v4

    invoke-static {v5, v15, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 184
    invoke-direct {v0, v2}, Lcom/pilotlab/ffmpeg/GLProgram;->checkGlError(Ljava/lang/String;)V

    .line 186
    :cond_92
    new-array v14, v5, [I

    .line 187
    invoke-static {v5, v14, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 188
    invoke-direct {v0, v6}, Lcom/pilotlab/ffmpeg/GLProgram;->checkGlError(Ljava/lang/String;)V

    .line 189
    aget v14, v14, v4

    iput v14, v0, Lcom/pilotlab/ffmpeg/GLProgram;->_utid:I

    .line 191
    :cond_9e
    iget v14, v0, Lcom/pilotlab/ffmpeg/GLProgram;->_utid:I

    invoke-static {v7, v14}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v15, 0xde1

    const/16 v16, 0x0

    const/16 v17, 0x1909

    .line 192
    iget v14, v0, Lcom/pilotlab/ffmpeg/GLProgram;->_video_width:I

    div-int/lit8 v18, v14, 0x2

    iget v14, v0, Lcom/pilotlab/ffmpeg/GLProgram;->_video_height:I

    div-int/lit8 v19, v14, 0x2

    const/16 v20, 0x0

    const/16 v21, 0x1909

    const/16 v22, 0x1401

    move-object/from16 v23, p2

    invoke-static/range {v15 .. v23}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 194
    invoke-static {v7, v8, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 195
    invoke-static {v7, v10, v9}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 196
    invoke-static {v7, v11, v12}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 197
    invoke-static {v7, v13, v12}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 200
    iget v14, v0, Lcom/pilotlab/ffmpeg/GLProgram;->_vtid:I

    if-ltz v14, :cond_ce

    if-eqz v3, :cond_e8

    .line 201
    :cond_ce
    iget v3, v0, Lcom/pilotlab/ffmpeg/GLProgram;->_vtid:I

    if-ltz v3, :cond_dc

    .line 202
    new-array v14, v5, [I

    aput v3, v14, v4

    invoke-static {v5, v14, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 203
    invoke-direct {v0, v2}, Lcom/pilotlab/ffmpeg/GLProgram;->checkGlError(Ljava/lang/String;)V

    .line 205
    :cond_dc
    new-array v2, v5, [I

    .line 206
    invoke-static {v5, v2, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 207
    invoke-direct {v0, v6}, Lcom/pilotlab/ffmpeg/GLProgram;->checkGlError(Ljava/lang/String;)V

    .line 208
    aget v2, v2, v4

    iput v2, v0, Lcom/pilotlab/ffmpeg/GLProgram;->_vtid:I

    .line 210
    :cond_e8
    iget v2, v0, Lcom/pilotlab/ffmpeg/GLProgram;->_vtid:I

    invoke-static {v7, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v14, 0xde1

    const/4 v15, 0x0

    const/16 v16, 0x1909

    .line 211
    iget v2, v0, Lcom/pilotlab/ffmpeg/GLProgram;->_video_width:I

    div-int/lit8 v17, v2, 0x2

    iget v2, v0, Lcom/pilotlab/ffmpeg/GLProgram;->_video_height:I

    div-int/lit8 v18, v2, 0x2

    const/16 v19, 0x0

    const/16 v20, 0x1909

    const/16 v21, 0x1401

    move-object/from16 v22, p3

    invoke-static/range {v14 .. v22}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 213
    invoke-static {v7, v8, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 214
    invoke-static {v7, v10, v9}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 215
    invoke-static {v7, v11, v12}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 216
    invoke-static {v7, v13, v12}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    return-void
.end method

.method createBuffers([F)V
    .registers 4

    .line 297
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_vertice_buffer:Ljava/nio/ByteBuffer;

    .line 298
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_vertice_buffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 299
    iget-object v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_vertice_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 300
    iget-object p1, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_vertice_buffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 302
    iget-object p1, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_coord_buffer:Ljava/nio/ByteBuffer;

    if-nez p1, :cond_49

    .line 303
    sget-object p1, Lcom/pilotlab/ffmpeg/GLProgram;->coordVertices:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_coord_buffer:Ljava/nio/ByteBuffer;

    .line 304
    iget-object p1, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_coord_buffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 305
    iget-object p1, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_coord_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    sget-object v1, Lcom/pilotlab/ffmpeg/GLProgram;->coordVertices:[F

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 306
    iget-object p1, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_coord_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_49
    return-void
.end method

.method public createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    const v0, 0x8b31

    .line 257
    invoke-direct {p0, v0, p1}, Lcom/pilotlab/ffmpeg/GLProgram;->loadShader(ILjava/lang/String;)I

    move-result p1

    const v0, 0x8b30

    .line 258
    invoke-direct {p0, v0, p2}, Lcom/pilotlab/ffmpeg/GLProgram;->loadShader(ILjava/lang/String;)I

    move-result p2

    .line 259
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    .line 261
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string p1, "glAttachShader"

    .line 262
    invoke-direct {p0, p1}, Lcom/pilotlab/ffmpeg/GLProgram;->checkGlError(Ljava/lang/String;)V

    .line 263
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 264
    invoke-direct {p0, p1}, Lcom/pilotlab/ffmpeg/GLProgram;->checkGlError(Ljava/lang/String;)V

    .line 265
    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p1, 0x1

    .line 266
    new-array p2, p1, [I

    const v2, 0x8b82

    .line 267
    invoke-static {v0, v2, p2, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 268
    aget p2, p2, v1

    if-eq p2, p1, :cond_37

    .line 269
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    move v0, v1

    :cond_37
    return v0
.end method

.method public drawFrame()V
    .registers 8

    .line 224
    iget v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v0, "glUseProgram"

    .line 225
    invoke-direct {p0, v0}, Lcom/pilotlab/ffmpeg/GLProgram;->checkGlError(Ljava/lang/String;)V

    .line 227
    iget v1, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_positionHandle:I

    iget-object v6, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_vertice_buffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v0, "glVertexAttribPointer mPositionHandle"

    .line 228
    invoke-direct {p0, v0}, Lcom/pilotlab/ffmpeg/GLProgram;->checkGlError(Ljava/lang/String;)V

    .line 229
    iget v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_positionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 231
    iget v1, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_coordHandle:I

    iget-object v6, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_coord_buffer:Ljava/nio/ByteBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v0, "glVertexAttribPointer maTextureHandle"

    .line 232
    invoke-direct {p0, v0}, Lcom/pilotlab/ffmpeg/GLProgram;->checkGlError(Ljava/lang/String;)V

    .line 233
    iget v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_coordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 236
    iget v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_textureI:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 237
    iget v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_ytid:I

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 238
    iget v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_yhandle:I

    iget v2, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_tIindex:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 240
    iget v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_textureII:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 241
    iget v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_utid:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 242
    iget v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_uhandle:I

    iget v2, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_tIIindex:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 244
    iget v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_textureIII:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 245
    iget v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_vtid:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 246
    iget v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_vhandle:I

    iget v1, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_tIIIindex:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 248
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 249
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 251
    iget v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_positionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 252
    iget v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_coordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void
.end method

.method public isProgramBuilt()Z
    .registers 2

    .line 107
    iget-boolean v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->isProgBuilt:Z

    return v0
.end method

.method public setup(I)V
    .registers 10

    .line 56
    iget p1, p0, Lcom/pilotlab/ffmpeg/GLProgram;->mWinPosition:I

    const/4 v0, 0x0

    const v1, 0x84c2

    const v2, 0x84c1

    const v3, 0x84c0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq p1, v5, :cond_82

    const/4 v6, 0x4

    const/4 v7, 0x3

    if-eq p1, v4, :cond_67

    if-eq p1, v7, :cond_49

    if-eq p1, v6, :cond_29

    .line 95
    sget-object p1, Lcom/pilotlab/ffmpeg/GLProgram;->squareVertices:[F

    iput-object p1, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_vertices:[F

    .line 96
    iput v3, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_textureI:I

    .line 97
    iput v2, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_textureII:I

    .line 98
    iput v1, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_textureIII:I

    .line 99
    iput v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_tIindex:I

    .line 100
    iput v5, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_tIIindex:I

    .line 101
    iput v4, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_tIIIindex:I

    goto :goto_92

    .line 85
    :cond_29
    sget-object p1, Lcom/pilotlab/ffmpeg/GLProgram;->squareVertices4:[F

    iput-object p1, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_vertices:[F

    const p1, 0x84c9

    .line 86
    iput p1, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_textureI:I

    const p1, 0x84ca

    .line 87
    iput p1, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_textureII:I

    const p1, 0x84cb

    .line 88
    iput p1, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_textureIII:I

    const/16 p1, 0x9

    .line 89
    iput p1, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_tIindex:I

    const/16 p1, 0xa

    .line 90
    iput p1, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_tIIindex:I

    const/16 p1, 0xb

    .line 91
    iput p1, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_tIIIindex:I

    goto :goto_92

    .line 76
    :cond_49
    sget-object p1, Lcom/pilotlab/ffmpeg/GLProgram;->squareVertices3:[F

    iput-object p1, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_vertices:[F

    const p1, 0x84c6

    .line 77
    iput p1, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_textureI:I

    const p1, 0x84c7

    .line 78
    iput p1, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_textureII:I

    const p1, 0x84c8

    .line 79
    iput p1, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_textureIII:I

    const/4 p1, 0x6

    .line 80
    iput p1, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_tIindex:I

    const/4 p1, 0x7

    .line 81
    iput p1, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_tIIindex:I

    const/16 p1, 0x8

    .line 82
    iput p1, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_tIIIindex:I

    goto :goto_92

    .line 67
    :cond_67
    sget-object p1, Lcom/pilotlab/ffmpeg/GLProgram;->squareVertices2:[F

    iput-object p1, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_vertices:[F

    const p1, 0x84c3

    .line 68
    iput p1, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_textureI:I

    const p1, 0x84c4

    .line 69
    iput p1, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_textureII:I

    const p1, 0x84c5

    .line 70
    iput p1, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_textureIII:I

    .line 71
    iput v7, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_tIindex:I

    .line 72
    iput v6, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_tIIindex:I

    const/4 p1, 0x5

    .line 73
    iput p1, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_tIIIindex:I

    goto :goto_92

    .line 58
    :cond_82
    sget-object p1, Lcom/pilotlab/ffmpeg/GLProgram;->squareVertices1:[F

    iput-object p1, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_vertices:[F

    .line 59
    iput v3, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_textureI:I

    .line 60
    iput v2, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_textureII:I

    .line 61
    iput v1, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_textureIII:I

    .line 62
    iput v0, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_tIindex:I

    .line 63
    iput v5, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_tIIindex:I

    .line 64
    iput v4, p0, Lcom/pilotlab/ffmpeg/GLProgram;->_tIIIindex:I

    :goto_92
    return-void
.end method
