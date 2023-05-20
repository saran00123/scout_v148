.class Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity$4;
.super Ljava/lang/Object;
.source "TestVisualizerActivity.java"

# interfaces
.implements Landroid/media/audiofx/Visualizer$OnDataCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;->initVisualize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;)V
    .registers 2

    .line 380
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFftDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .registers 10

    .line 387
    array-length p1, p2

    const/4 p3, 0x2

    div-int/2addr p1, p3

    const/4 v0, 0x1

    add-int/2addr p1, v0

    new-array p1, p1, [F

    .line 388
    aget-byte v1, p2, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-byte v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, p1, v2

    move v1, v0

    .line 391
    :goto_13
    array-length v2, p1

    if-ge p3, v2, :cond_32

    .line 392
    aget-byte v2, p2, p3

    int-to-double v2, v2

    add-int/lit8 v4, p3, 0x1

    aget-byte v4, p2, v4

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, p1, v1

    add-int/lit8 p3, p3, 0x2

    add-int/2addr v1, v0

    .line 395
    aget-byte v2, p2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    aput v2, p1, v1

    goto :goto_13

    :cond_32
    return-void
.end method

.method public onWaveFormDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .registers 4

    return-void
.end method
