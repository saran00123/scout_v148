.class Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$5;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->imageQuality()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)V
    .registers 2

    .line 457
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .registers 37
    .param p1    # Lio/reactivex/ObservableEmitter;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 461
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "testImg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 463
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 464
    iget-object v2, v0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_3b

    const-string v4, "aaa"

    goto :goto_3d

    :cond_3b
    const-string v4, "bbbb"

    :goto_3d
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_191

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_191

    .line 467
    iget-object v2, v0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "aaaaaaaaaaaaa"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const-wide/16 v4, -0x1

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    const-wide/16 v14, -0x1

    const-wide/16 v16, 0x0

    :goto_68
    if-ge v9, v3, :cond_191

    aget-object v6, v2, v9

    .line 474
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-nez v18, :cond_176

    .line 475
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 476
    iget-object v8, v0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    invoke-static {v8}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v2

    move/from16 v18, v3

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    :goto_93
    const/16 v0, 0x500

    if-ge v6, v0, :cond_fb

    move-object/from16 v25, v8

    const/4 v0, 0x0

    :goto_9a
    const/16 v8, 0x2d0

    if-ge v0, v8, :cond_ee

    .line 481
    invoke-virtual {v7, v6, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    move/from16 v26, v9

    shr-int/lit8 v9, v8, 0x10

    and-int/lit16 v9, v9, 0xff

    move-wide/from16 v27, v4

    int-to-long v4, v9

    add-long v4, v19, v4

    shr-int/lit8 v9, v8, 0x8

    and-int/lit16 v9, v9, 0xff

    move-wide/from16 v29, v14

    int-to-long v14, v9

    add-long v14, v21, v14

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    add-long v8, v23, v8

    long-to-double v2, v2

    const-wide v19, 0x3fd322d0e5604189L    # 0.299

    move-wide/from16 v31, v12

    long-to-double v12, v4

    mul-double v12, v12, v19

    const-wide v19, 0x3fe2c8b439581062L    # 0.587

    move-wide/from16 v33, v4

    long-to-double v4, v14

    mul-double v4, v4, v19

    add-double/2addr v12, v4

    const-wide v4, 0x3fbd2f1a9fbe76c9L    # 0.114

    move-wide/from16 v19, v14

    long-to-double v14, v8

    mul-double/2addr v14, v4

    add-double/2addr v12, v14

    add-double/2addr v2, v12

    double-to-long v2, v2

    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v23, v8

    move-wide/from16 v21, v19

    move/from16 v9, v26

    move-wide/from16 v4, v27

    move-wide/from16 v14, v29

    move-wide/from16 v12, v31

    move-wide/from16 v19, v33

    goto :goto_9a

    :cond_ee
    move-wide/from16 v27, v4

    move/from16 v26, v9

    move-wide/from16 v31, v12

    move-wide/from16 v29, v14

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v8, v25

    goto :goto_93

    :cond_fb
    move-wide/from16 v27, v4

    move-object/from16 v25, v8

    move/from16 v26, v9

    move-wide/from16 v31, v12

    move-wide/from16 v29, v14

    const-wide/16 v4, -0x1

    cmp-long v0, v10, v4

    if-eqz v0, :cond_16c

    cmp-long v0, v31, v4

    if-eqz v0, :cond_16c

    cmp-long v0, v29, v4

    if-eqz v0, :cond_16c

    cmp-long v0, v27, v4

    if-eqz v0, :cond_16c

    sub-long v8, v19, v10

    .line 490
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    sub-long v8, v21, v29

    .line 491
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    sub-long v8, v23, v31

    .line 492
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    sub-long v8, v2, v27

    .line 493
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    add-long v8, v16, v8

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%bright:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v12, v27

    long-to-float v6, v12

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v6, v10

    long-to-float v11, v2

    mul-float/2addr v11, v10

    div-float/2addr v6, v11

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "%\u0394bright:"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-float v12, v8

    mul-float/2addr v12, v10

    div-float/2addr v12, v11

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    move-wide/from16 v16, v8

    .line 506
    :cond_16c
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    move-wide/from16 v10, v19

    move-wide/from16 v14, v21

    move-wide/from16 v12, v23

    goto :goto_186

    :cond_176
    move-object/from16 v25, v2

    move/from16 v18, v3

    move/from16 v26, v9

    move-wide/from16 v31, v12

    move-wide/from16 v29, v14

    move-wide v12, v4

    const-wide/16 v4, -0x1

    move-wide v2, v12

    move-wide/from16 v12, v31

    :goto_186
    add-int/lit8 v9, v26, 0x1

    move-object/from16 v0, p0

    move-wide v4, v2

    move/from16 v3, v18

    move-object/from16 v2, v25

    goto/16 :goto_68

    :cond_191
    return-void
.end method
