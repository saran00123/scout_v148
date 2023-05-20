.class public Lcom/pilotlab/rollereye/tensorflow/env/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field private static final LOGGER:Lcom/pilotlab/rollereye/tensorflow/env/Logger;

.field static final kMaxChannelValue:I = 0x3ffff


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Lcom/pilotlab/rollereye/tensorflow/env/Logger;

    invoke-direct {v0}, Lcom/pilotlab/rollereye/tensorflow/env/Logger;-><init>()V

    sput-object v0, Lcom/pilotlab/rollereye/tensorflow/env/ImageUtils;->LOGGER:Lcom/pilotlab/rollereye/tensorflow/env/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static YUV2RGB(III)I
    .registers 6

    add-int/lit8 p0, p0, -0x10

    const/4 v0, 0x0

    if-gez p0, :cond_6

    move p0, v0

    :cond_6
    add-int/lit8 p1, p1, -0x80

    add-int/lit8 p2, p2, -0x80

    mul-int/lit16 p0, p0, 0x4a8

    mul-int/lit16 v1, p2, 0x662

    add-int/2addr v1, p0

    mul-int/lit16 p2, p2, 0x341

    sub-int p2, p0, p2

    mul-int/lit16 v2, p1, 0x190

    sub-int/2addr p2, v2

    mul-int/lit16 p1, p1, 0x812

    add-int/2addr p0, p1

    const p1, 0x3ffff

    if-le v1, p1, :cond_20

    move v1, p1

    goto :goto_23

    :cond_20
    if-gez v1, :cond_23

    move v1, v0

    :cond_23
    :goto_23
    if-le p2, p1, :cond_27

    move p2, p1

    goto :goto_2a

    :cond_27
    if-gez p2, :cond_2a

    move p2, v0

    :cond_2a
    :goto_2a
    if-le p0, p1, :cond_2e

    move p0, p1

    goto :goto_31

    :cond_2e
    if-gez p0, :cond_31

    move p0, v0

    :cond_31
    :goto_31
    const/high16 p1, -0x1000000

    shl-int/lit8 v0, v1, 0x6

    const/high16 v1, 0xff0000

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    shr-int/lit8 p2, p2, 0x2

    const v0, 0xff00

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    shr-int/lit8 p0, p0, 0xa

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, p1

    return p0
.end method

.method public static convertYUV420SPToARGB8888([BII[I)V
    .registers 15

    mul-int v0, p1, p2

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_5
    if-ge v2, p2, :cond_38

    shr-int/lit8 v4, v2, 0x1

    mul-int/2addr v4, p1

    add-int/2addr v4, v0

    move v6, v1

    move v7, v6

    move v5, v4

    move v4, v3

    move v3, v7

    :goto_10
    if-ge v3, p1, :cond_34

    .line 99
    aget-byte v8, p0, v4

    and-int/lit16 v8, v8, 0xff

    and-int/lit8 v9, v3, 0x1

    if-nez v9, :cond_29

    add-int/lit8 v6, v5, 0x1

    .line 101
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v7, v6, 0x1

    .line 102
    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    move v10, v7

    move v7, v5

    move v5, v10

    .line 105
    :cond_29
    invoke-static {v8, v6, v7}, Lcom/pilotlab/rollereye/tensorflow/env/ImageUtils;->YUV2RGB(III)I

    move-result v8

    aput v8, p3, v4

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_34
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_5

    :cond_38
    return-void
.end method

.method public static convertYUV420ToARGB8888([B[B[BIIIII[I)V
    .registers 22

    move-object/from16 v0, p8

    const/4 v1, 0x0

    move/from16 v2, p4

    move v3, v1

    move v4, v3

    :goto_7
    if-ge v3, v2, :cond_3b

    mul-int v5, p5, v3

    shr-int/lit8 v6, v3, 0x1

    mul-int v6, v6, p6

    move v7, v1

    move v8, v4

    move/from16 v4, p3

    :goto_13
    if-ge v7, v4, :cond_37

    shr-int/lit8 v9, v7, 0x1

    mul-int v9, v9, p7

    add-int/2addr v9, v6

    .line 151
    array-length v10, v0

    if-ge v8, v10, :cond_34

    add-int/lit8 v10, v8, 0x1

    add-int v11, v5, v7

    .line 152
    aget-byte v11, p0, v11

    and-int/lit16 v11, v11, 0xff

    aget-byte v12, p1, v9

    and-int/lit16 v12, v12, 0xff

    aget-byte v9, p2, v9

    and-int/lit16 v9, v9, 0xff

    invoke-static {v11, v12, v9}, Lcom/pilotlab/rollereye/tensorflow/env/ImageUtils;->YUV2RGB(III)I

    move-result v9

    aput v9, v0, v8

    move v8, v10

    :cond_34
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    :cond_37
    add-int/lit8 v3, v3, 0x1

    move v4, v8

    goto :goto_7

    :cond_3b
    return-void
.end method

.method public static getTransformationMatrix(IIIIIZ)Landroid/graphics/Matrix;
    .registers 13

    .line 178
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz p4, :cond_2b

    .line 181
    rem-int/lit8 v4, p4, 0x5a

    if-eqz v4, :cond_1e

    .line 182
    sget-object v4, Lcom/pilotlab/rollereye/tensorflow/env/ImageUtils;->LOGGER:Lcom/pilotlab/rollereye/tensorflow/env/Logger;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "Rotation of %d % 90 != 0"

    invoke-virtual {v4, v6, v5}, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1e
    neg-int v4, p0

    int-to-float v4, v4

    div-float/2addr v4, v3

    neg-int v5, p1

    int-to-float v5, v5

    div-float/2addr v5, v3

    .line 186
    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    int-to-float v4, p4

    .line 189
    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 194
    :cond_2b
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x5a

    rem-int/lit16 v4, v4, 0xb4

    if-nez v4, :cond_36

    goto :goto_37

    :cond_36
    move v1, v2

    :goto_37
    if-eqz v1, :cond_3b

    move v2, p1

    goto :goto_3c

    :cond_3b
    move v2, p0

    :goto_3c
    if-eqz v1, :cond_3f

    goto :goto_40

    :cond_3f
    move p0, p1

    :goto_40
    if-ne v2, p2, :cond_44

    if-eq p0, p3, :cond_57

    :cond_44
    int-to-float p1, p2

    int-to-float v1, v2

    div-float/2addr p1, v1

    int-to-float v1, p3

    int-to-float p0, p0

    div-float/2addr v1, p0

    if-eqz p5, :cond_54

    .line 207
    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    .line 208
    invoke-virtual {v0, p0, p0}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_57

    .line 211
    :cond_54
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_57
    :goto_57
    if-eqz p4, :cond_60

    int-to-float p0, p2

    div-float/2addr p0, v3

    int-to-float p1, p3

    div-float/2addr p1, v3

    .line 217
    invoke-virtual {v0, p0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_60
    return-object v0
.end method

.method public static getYUVByteSize(II)I
    .registers 3

    mul-int v0, p0, p1

    add-int/lit8 p0, p0, 0x1

    .line 46
    div-int/lit8 p0, p0, 0x2

    add-int/lit8 p1, p1, 0x1

    div-int/lit8 p1, p1, 0x2

    mul-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    return v0
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    const-string v0, "preview.png"

    .line 57
    invoke-static {p0, v0}, Lcom/pilotlab/rollereye/tensorflow/env/ImageUtils;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 8

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "tensorflow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    sget-object v1, Lcom/pilotlab/rollereye/tensorflow/env/ImageUtils;->LOGGER:Lcom/pilotlab/rollereye/tensorflow/env/Logger;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const-string v3, "Saving %dx%d bitmap to %s."

    invoke-virtual {v1, v3, v2}, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_55

    .line 73
    sget-object v0, Lcom/pilotlab/rollereye/tensorflow/env/ImageUtils;->LOGGER:Lcom/pilotlab/rollereye/tensorflow/env/Logger;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "Make dir failed"

    invoke-virtual {v0, v3, v2}, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    :cond_55
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_63

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 82
    :cond_63
    :try_start_63
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 83
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x63

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 84
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 85
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_75} :catch_76

    goto :goto_80

    :catch_76
    move-exception p0

    .line 87
    sget-object p1, Lcom/pilotlab/rollereye/tensorflow/env/ImageUtils;->LOGGER:Lcom/pilotlab/rollereye/tensorflow/env/Logger;

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Exception!"

    invoke-virtual {p1, p0, v1, v0}, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_80
    return-void
.end method
