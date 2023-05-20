.class public Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;
.super Ljava/lang/Object;
.source "TFLiteObjectDetectionAPIModel.java"

# interfaces
.implements Lcom/pilotlab/rollereye/tensorflow/tflite/Classifier;


# static fields
.field private static final IMAGE_MEAN:F = 128.0f

.field private static final IMAGE_STD:F = 128.0f

.field private static final LOGGER:Lcom/pilotlab/rollereye/tensorflow/env/Logger;

.field private static final NUM_DETECTIONS:I = 0xa

.field private static final NUM_THREADS:I = 0x1


# instance fields
.field private imgData:Ljava/nio/ByteBuffer;

.field private inputSize:I

.field private intValues:[I

.field private isModelQuantized:Z

.field private labels:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private numDetections:[F

.field private outputClasses:[[F

.field private outputLocations:[[[F

.field private outputScores:[[F

.field private tfLite:Lorg/tensorflow/lite/Interpreter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Lcom/pilotlab/rollereye/tensorflow/env/Logger;

    invoke-direct {v0}, Lcom/pilotlab/rollereye/tensorflow/env/Logger;-><init>()V

    sput-object v0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->LOGGER:Lcom/pilotlab/rollereye/tensorflow/env/Logger;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->labels:Ljava/util/Vector;

    return-void
.end method

.method public static create(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/pilotlab/rollereye/tensorflow/tflite/Classifier;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    new-instance v0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;

    invoke-direct {v0}, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;-><init>()V

    const-string v1, "file:///android_asset/"

    .line 113
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    aget-object p2, p2, v1

    .line 114
    invoke-virtual {p0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    .line 116
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 118
    :goto_1c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_30

    .line 119
    sget-object v3, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->LOGGER:Lcom/pilotlab/rollereye/tensorflow/env/Logger;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, p2, v4}, Lcom/pilotlab/rollereye/tensorflow/env/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    iget-object v3, v0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->labels:Ljava/util/Vector;

    invoke-virtual {v3, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 122
    :cond_30
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 124
    iput p3, v0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->inputSize:I

    .line 127
    :try_start_35
    new-instance p2, Lorg/tensorflow/lite/Interpreter;

    invoke-static {p0, p1}, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->loadModelFile(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/nio/MappedByteBuffer;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/tensorflow/lite/Interpreter;-><init>(Ljava/nio/MappedByteBuffer;)V

    iput-object p2, v0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->tfLite:Lorg/tensorflow/lite/Interpreter;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_40} :catch_9c

    .line 132
    iput-boolean p4, v0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->isModelQuantized:Z

    const/4 p0, 0x4

    if-eqz p4, :cond_47

    move p1, v1

    goto :goto_48

    :cond_47
    move p1, p0

    .line 140
    :goto_48
    iget p2, v0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->inputSize:I

    mul-int/lit8 p3, p2, 0x1

    mul-int/2addr p3, p2

    mul-int/lit8 p3, p3, 0x3

    mul-int/2addr p3, p1

    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, v0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->imgData:Ljava/nio/ByteBuffer;

    .line 141
    iget-object p1, v0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->imgData:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 142
    iget p1, v0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->inputSize:I

    mul-int/2addr p1, p1

    new-array p1, p1, [I

    iput-object p1, v0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->intValues:[I

    .line 144
    iget-object p1, v0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->tfLite:Lorg/tensorflow/lite/Interpreter;

    invoke-virtual {p1, v1}, Lorg/tensorflow/lite/Interpreter;->setNumThreads(I)V

    const/16 p1, 0xa

    .line 145
    filled-new-array {v1, p1, p0}, [I

    move-result-object p0

    const-class p2, F

    invoke-static {p2, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[[F

    iput-object p0, v0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->outputLocations:[[[F

    .line 146
    filled-new-array {v1, p1}, [I

    move-result-object p0

    const-class p2, F

    invoke-static {p2, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[F

    iput-object p0, v0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->outputClasses:[[F

    .line 147
    filled-new-array {v1, p1}, [I

    move-result-object p0

    const-class p1, F

    invoke-static {p1, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[F

    iput-object p0, v0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->outputScores:[[F

    .line 148
    new-array p0, v1, [F

    iput-object p0, v0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->numDetections:[F

    return-object v0

    :catch_9c
    move-exception p0

    .line 129
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static loadModelFile(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/nio/MappedByteBuffer;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    .line 87
    new-instance p1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 88
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 89
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    .line 90
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v5

    .line 91
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method

.method public enableStatLogging(Z)V
    .registers 2

    return-void
.end method

.method public getStatString()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public recognizeImage(Landroid/graphics/Bitmap;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/tensorflow/tflite/Classifier$Recognition;",
            ">;"
        }
    .end annotation

    const-string v0, "recognizeImage"

    .line 155
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "preprocessBitmap"

    .line 157
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 160
    iget-object v2, p0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->intValues:[I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 162
    iget-object p1, p0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->imgData:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 p1, 0x0

    move v0, p1

    .line 163
    :goto_26
    iget v1, p0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->inputSize:I

    if-ge v0, v1, :cond_80

    move v1, p1

    .line 164
    :goto_2b
    iget v2, p0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->inputSize:I

    if-ge v1, v2, :cond_7d

    .line 165
    iget-object v3, p0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->intValues:[I

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    aget v2, v3, v2

    .line 166
    iget-boolean v3, p0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->isModelQuantized:Z

    if-eqz v3, :cond_56

    .line 168
    iget-object v3, p0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->imgData:Ljava/nio/ByteBuffer;

    shr-int/lit8 v4, v2, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 169
    iget-object v3, p0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->imgData:Ljava/nio/ByteBuffer;

    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 170
    iget-object v3, p0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->imgData:Ljava/nio/ByteBuffer;

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7a

    .line 172
    :cond_56
    iget-object v3, p0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->imgData:Ljava/nio/ByteBuffer;

    shr-int/lit8 v4, v2, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    const/high16 v5, 0x43000000    # 128.0f

    sub-float/2addr v4, v5

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 173
    iget-object v3, p0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->imgData:Ljava/nio/ByteBuffer;

    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    sub-float/2addr v4, v5

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 174
    iget-object v3, p0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->imgData:Ljava/nio/ByteBuffer;

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    sub-float/2addr v2, v5

    div-float/2addr v2, v5

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    :goto_7a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_7d
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 178
    :cond_80
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v0, "feed"

    .line 181
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x4

    const/16 v1, 0xa

    const/4 v2, 0x1

    .line 182
    filled-new-array {v2, v1, v0}, [I

    move-result-object v0

    const-class v3, F

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[F

    iput-object v0, p0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->outputLocations:[[[F

    .line 183
    filled-new-array {v2, v1}, [I

    move-result-object v0

    const-class v3, F

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->outputClasses:[[F

    .line 184
    filled-new-array {v2, v1}, [I

    move-result-object v0

    const-class v3, F

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->outputScores:[[F

    .line 185
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->numDetections:[F

    .line 187
    new-array v0, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->imgData:Ljava/nio/ByteBuffer;

    aput-object v3, v0, p1

    .line 188
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 189
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->outputLocations:[[[F

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->outputClasses:[[F

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x2

    .line 191
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->outputScores:[[F

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x3

    .line 192
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->numDetections:[F

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v6, "run"

    .line 196
    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 197
    iget-object v6, p0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->tfLite:Lorg/tensorflow/lite/Interpreter;

    invoke-virtual {v6, v0, v3}, Lorg/tensorflow/lite/Interpreter;->runForMultipleInputsOutputs([Ljava/lang/Object;Ljava/util/Map;)V

    .line 198
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v3, p1

    :goto_101
    if-ge v3, v1, :cond_179

    .line 204
    new-instance v6, Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->outputLocations:[[[F

    aget-object v8, v7, p1

    aget-object v8, v8, v3

    aget v8, v8, v2

    iget v9, p0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->inputSize:I

    int-to-float v10, v9

    mul-float/2addr v8, v10

    aget-object v10, v7, p1

    aget-object v10, v10, v3

    aget v10, v10, p1

    int-to-float v11, v9

    mul-float/2addr v10, v11

    aget-object v11, v7, p1

    aget-object v11, v11, v3

    aget v11, v11, v5

    int-to-float v12, v9

    mul-float/2addr v11, v12

    aget-object v7, v7, p1

    aget-object v7, v7, v3

    aget v7, v7, v4

    int-to-float v9, v9

    mul-float/2addr v7, v9

    invoke-direct {v6, v8, v10, v11, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 216
    iget-object v7, p0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->outputClasses:[[F

    aget-object v8, v7, p1

    aget v8, v8, v3

    float-to-int v8, v8

    add-int/2addr v8, v2

    if-gt v8, v5, :cond_175

    aget-object v7, v7, p1

    aget v7, v7, v3

    float-to-int v7, v7

    add-int/2addr v7, v2

    if-gez v7, :cond_13f

    goto :goto_175

    .line 222
    :cond_13f
    new-instance v7, Lcom/pilotlab/rollereye/tensorflow/tflite/Classifier$Recognition;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->labels:Ljava/util/Vector;

    iget-object v10, p0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->outputClasses:[[F

    aget-object v10, v10, p1

    aget v10, v10, v3

    float-to-int v10, v10

    add-int/2addr v10, v2

    .line 225
    invoke-virtual {v9, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v10, p0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->outputScores:[[F

    aget-object v10, v10, p1

    aget v10, v10, v3

    .line 226
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10, v6}, Lcom/pilotlab/rollereye/tensorflow/tflite/Classifier$Recognition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Landroid/graphics/RectF;)V

    .line 222
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_101

    .line 217
    :cond_175
    :goto_175
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v0

    .line 229
    :cond_179
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v0
.end method

.method public setNumThreads(I)V
    .registers 3

    .line 247
    iget-object v0, p0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->tfLite:Lorg/tensorflow/lite/Interpreter;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lorg/tensorflow/lite/Interpreter;->setNumThreads(I)V

    :cond_7
    return-void
.end method

.method public setUseNNAPI(Z)V
    .registers 3

    .line 252
    iget-object v0, p0, Lcom/pilotlab/rollereye/tensorflow/tflite/TFLiteObjectDetectionAPIModel;->tfLite:Lorg/tensorflow/lite/Interpreter;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lorg/tensorflow/lite/Interpreter;->setUseNNAPI(Z)V

    :cond_7
    return-void
.end method
